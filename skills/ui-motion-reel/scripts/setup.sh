#!/usr/bin/env bash
# Scaffold a reel folder: engine + starter scene + render/QA scripts + node deps.
#   bash ~/.claude/skills/ui-motion-reel/scripts/setup.sh <target-dir>
set -euo pipefail
SKILL="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${1:-./video}"
mkdir -p "$DEST"
cp "$SKILL/assets/engine/reel.js" "$SKILL/assets/engine/score.js" "$DEST/"
[ -f "$DEST/index.html" ] || cp "$SKILL/assets/template/index.html" "$DEST/index.html"
cp "$SKILL/scripts/render.mjs" "$SKILL/scripts/qa.mjs" "$DEST/"
if [ ! -f "$DEST/package.json" ]; then
  cat > "$DEST/package.json" <<'JSON'
{ "name": "motion-reel", "private": true, "type": "module",
  "scripts": { "stills": "node render.mjs --stills 0,2,4,6,8", "audio": "node render.mjs --audio", "render": "node render.mjs --audio && node render.mjs --mp4 --with-audio", "qa": "node qa.mjs --transitions" } }
JSON
fi
cd "$DEST"
npm install --no-audit --no-fund puppeteer-core@23 @ffmpeg-installer/ffmpeg >/dev/null 2>&1 || npm install --no-audit --no-fund puppeteer-core@23 @ffmpeg-installer/ffmpeg
chmod u+x node_modules/@ffmpeg-installer/*/ffmpeg 2>/dev/null || true
printf 'out/\nnode_modules/\n' > .gitignore
echo "reel scaffolded in $DEST: edit index.html, then: node render.mjs --stills 0,2,4 && node render.mjs --audio && node render.mjs --mp4 --with-audio && node qa.mjs --transitions"
