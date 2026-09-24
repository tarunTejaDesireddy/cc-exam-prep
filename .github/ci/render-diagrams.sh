#!/usr/bin/env bash
# Render every diagram source (diagrams/N.mmd) to the SVG the page embeds (diagrams/N.svg).
#
#   ./.github/ci/render-diagrams.sh                      # every diagrams/ folder in the repo
#   ./.github/ci/render-diagrams.sh 01-security-principles/cia-triad   # just one page
#
# Why pre-rendered SVGs and not inline ```mermaid blocks: GitHub renders inline Mermaid with
# whatever font the reader's browser has, measures the label in one font and draws it in
# another, and the text gets clipped. Rendering once here, with a fixed sans-serif font,
# SVG <text> labels (htmlLabels off) and a solid dark background, gives a diagram that looks
# identical in GitHub light mode, dark mode, on mobile and in the docs index.
#
# Needs mermaid-cli. Uses a local install if MMDC is set, otherwise npx:
#   MMDC=/path/to/node_modules/.bin/mmdc ./.github/ci/render-diagrams.sh
#
# Also deletes any N.svg whose N.mmd no longer exists, so a page that drops a diagram
# does not leave an orphan behind.

set -euo pipefail
cd "$(dirname "$0")/../.."

CONFIG=.github/ci/mermaid.json
MMDC_CMD=(${MMDC:-npx --yes @mermaid-js/mermaid-cli})

if [ "$#" -gt 0 ]; then
  dirs=()
  for p in "$@"; do dirs+=("${p%/}/diagrams"); done
else
  mapfile -t dirs < <(find . -type d -name diagrams -not -path './.git/*' -not -path './.github/_templates/*' | sort)
fi

rendered=0
for d in "${dirs[@]}"; do
  [ -d "$d" ] || continue
  shopt -s nullglob
  srcs=("$d"/*.mmd)
  # A folder with SVGs but no sources yet is left alone entirely.
  [ "${#srcs[@]}" -gt 0 ] || { shopt -u nullglob; continue; }
  for src in "${srcs[@]}"; do
    out="${src%.mmd}.svg"
    "${MMDC_CMD[@]}" -i "$src" -o "$out" -c "$CONFIG" -b '#0d1117' -q
    rendered=$((rendered+1))
  done
  for svg in "$d"/*.svg; do
    [ -f "${svg%.svg}.mmd" ] || { echo "removing orphan $svg"; rm -f "$svg"; }
  done
  shopt -u nullglob
done

echo "✅ rendered $rendered diagram(s)"
