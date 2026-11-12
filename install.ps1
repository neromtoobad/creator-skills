# Copy the skills in this repo into %USERPROFILE%\.claude\skills (Windows).
#   .\install.ps1                   install every skill (skips ones you already have)
#   .\install.ps1 unslop pptx       install only the skills you name
#   .\install.ps1 -Force            overwrite skills you already have
param([switch]$Force, [Parameter(ValueFromRemainingArguments = $true)][string[]]$Names)
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$dest = if ($env:CLAUDE_SKILLS_DIR) { $env:CLAUDE_SKILLS_DIR } else { Join-Path $HOME ".claude\skills" }
if (-not $Names) { $Names = Get-ChildItem (Join-Path $here "skills") -Directory | ForEach-Object Name }
New-Item -ItemType Directory -Force -Path $dest | Out-Null
$added = 0; $skipped = 0
foreach ($n in $Names) {
  $src = Join-Path $here "skills\$n"
  if (-not (Test-Path (Join-Path $src "SKILL.md"))) { Write-Error "no skill called '$n'"; exit 1 }
  $target = Join-Path $dest $n
  if ((Test-Path $target) -and -not $Force) { Write-Host "skip  $n (already installed; use -Force to replace)"; $skipped++; continue }
  if (Test-Path $target) { Remove-Item -Recurse -Force $target }
  Copy-Item -Recurse $src $target; Write-Host "added $n"; $added++
}
Write-Host "`n$added added, $skipped skipped -> $dest`nStart a new Claude Code session to pick them up."
