#!/usr/bin/env bash
# Copy the skills in this repo into ~/.claude/skills so Claude Code can use them.
#   ./install.sh                 install every skill (skips ones you already have)
#   ./install.sh unslop pptx     install only the skills you name
#   ./install.sh --force         overwrite skills you already have
#   ./install.sh --list          show every skill in the repo
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
dest="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
force=0; names=()
for a in "$@"; do
  case "$a" in
    --force) force=1 ;;
    --list) ls "$here/skills"; exit 0 ;;
    -h|--help) sed -n '2,6p' "$0"; exit 0 ;;
    *) names+=("$a") ;;
  esac
done
[ ${#names[@]} -eq 0 ] && names=($(ls "$here/skills"))
mkdir -p "$dest"
added=0; skipped=0
for n in "${names[@]}"; do
  src="$here/skills/$n"
  [ -f "$src/SKILL.md" ] || { echo "no skill called '$n' (try --list)"; exit 1; }
  if [ -e "$dest/$n" ] && [ $force -eq 0 ]; then echo "skip  $n (already installed; use --force to replace)"; skipped=$((skipped+1)); continue; fi
  rm -rf "$dest/$n"; cp -R "$src" "$dest/$n"; echo "added $n"; added=$((added+1))
done
echo; echo "$added added, $skipped skipped → $dest"
echo "Start a new Claude Code session to pick them up."
