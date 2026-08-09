$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$markdownFiles = Get-ChildItem -Path $repoRoot -Recurse -Filter '*.md' -File |
    Where-Object { $_.FullName -notmatch '[\\/](\.git|\.github|_site|vendor)[\\/]' }
$errors = [System.Collections.Generic.List[string]]::new()
$headings = @{}
$hashes = @{}
$verbatimImports = @(
    'docs/guides/how-to-play-genshin-impact-cn-server-overseas.md'
)

foreach ($file in $markdownFiles) {
    $content = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
    $separator = [IO.Path]::DirectorySeparatorChar
    $relativePath = $file.FullName.Substring($repoRoot.Length).TrimStart($separator).Replace($separator, '/')
    $lintContent = [regex]::Replace($content, '(?ms)^```.*?^```\s*', '')
    $h1 = [regex]::Matches($lintContent, '(?m)^# (.+)$')

    if ($h1.Count -ne 1 -and $relativePath -notin $verbatimImports) {
        $errors.Add("$relativePath must contain exactly one H1; found $($h1.Count)")
    } else {
        $title = $h1[0].Groups[1].Value.Trim()
        if ($headings.ContainsKey($title)) {
            $errors.Add("Duplicate H1 '$title': $($headings[$title]) and $relativePath")
        } else {
            $headings[$title] = $relativePath
        }
    }

    if ($relativePath.StartsWith('docs/')) {
        $normalized = ($content -replace '\s+', ' ').Trim()
        $bytes = [Text.Encoding]::UTF8.GetBytes($normalized)
        $sha256 = [Security.Cryptography.SHA256]::Create()
        try {
            $hash = [BitConverter]::ToString($sha256.ComputeHash($bytes)).Replace('-', '')
        } finally {
            $sha256.Dispose()
        }
        if ($hashes.ContainsKey($hash)) {
            $errors.Add("Duplicate content: $($hashes[$hash]) and $relativePath")
        } else {
            $hashes[$hash] = $relativePath
        }
    }

    foreach ($match in [regex]::Matches($lintContent, '!?(?:\[[^\]]*\])\(([^)]+)\)')) {
        $target = $match.Groups[1].Value.Trim()
        $pathPart = ($target -split '#', 2)[0]
        if (-not $pathPart -or $pathPart -match '^(https?:|mailto:|tel:|data:)') { continue }

        $decoded = [Uri]::UnescapeDataString($pathPart)
        $resolved = [IO.Path]::GetFullPath((Join-Path $file.DirectoryName $decoded))
        if (-not (Test-Path -LiteralPath $resolved)) {
            $errors.Add("Broken internal link in $relativePath -> $target")
        }
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Host "Content validation passed for $($markdownFiles.Count) Markdown files."
