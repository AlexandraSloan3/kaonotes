[CmdletBinding()]
param(
    [switch]$Clean
)

$ErrorActionPreference = 'Stop'
$projectDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location -LiteralPath $projectDir

try {
    if (-not (Get-Command latexmk -ErrorAction SilentlyContinue)) {
        throw 'latexmk was not found. Install a TeX Live or MiKTeX distribution that includes latexmk.'
    }

    if ($Clean) {
        & latexmk -C main.tex
        if ($LASTEXITCODE -ne 0) {
            throw "latexmk clean failed with exit code $LASTEXITCODE."
        }
    }

    & latexmk `
        -xelatex `
        '-xelatex=xelatex -no-shell-escape %O %S' `
        -interaction=nonstopmode `
        -file-line-error `
        -synctex=1 `
        main.tex

    if ($LASTEXITCODE -ne 0) {
        throw "LaTeX build failed with exit code $LASTEXITCODE. See main.log for details."
    }

    Write-Host "Build complete: $projectDir\main.pdf"
}
finally {
    Pop-Location
}
