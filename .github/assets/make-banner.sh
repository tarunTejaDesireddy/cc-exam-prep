#!/usr/bin/env bash
# Generate a module banner SVG in the cc-exam-prep house palette.
#
#   ./assets/make-banner.sh "05 · Security Operations" "Running security day to day" 18% out.svg
#
# Args: TITLE SUBTITLE WEIGHT OUTPUT
set -euo pipefail

TITLE="${1:?title}"
SUB="${2:?subtitle}"
WEIGHT="${3:?weight badge text}"
OUT="${4:?output path}"

esc() { printf '%s' "$1" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g'; }
T=$(esc "$TITLE"); S=$(esc "$SUB"); W=$(esc "$WEIGHT")

# Badge width scales with the label length so the pill always fits its text.
WLEN=${#WEIGHT}
WBOX=$(( WLEN * 9 + 30 ))

cat > "$OUT" <<SVG
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 320" width="1200" height="320" role="img" aria-label="${T} — ${S}">
  <defs>
    <linearGradient id="bg" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#07171c"/>
      <stop offset="55%" stop-color="#0d2b33"/>
      <stop offset="100%" stop-color="#141d39"/>
    </linearGradient>
    <linearGradient id="accent" x1="0" y1="0" x2="1" y2="0">
      <stop offset="0%" stop-color="#12B5A5"/>
      <stop offset="100%" stop-color="#5C7CFA"/>
    </linearGradient>
    <filter id="soft" x="-30%" y="-30%" width="160%" height="160%">
      <feGaussianBlur stdDeviation="18"/>
    </filter>
  </defs>

  <rect width="1200" height="320" rx="18" fill="url(#bg)"/>
  <circle cx="1010" cy="80" r="120" fill="#12B5A5" opacity="0.15" filter="url(#soft)"/>
  <circle cx="830" cy="272" r="100" fill="#5C7CFA" opacity="0.13" filter="url(#soft)"/>
  <rect x="0" y="0" width="6" height="320" rx="3" fill="url(#accent)"/>

  <text x="58" y="96" font-family="Segoe UI, Helvetica Neue, Arial, sans-serif" font-size="46" font-weight="700" fill="#f1f8f8">${T}</text>
  <text x="58" y="136" font-family="Segoe UI, Helvetica Neue, Arial, sans-serif" font-size="21" fill="#9dc0bf">${S}</text>
  <rect x="58" y="158" width="74" height="4" rx="2" fill="url(#accent)"/>
  <text x="58" y="206" font-family="Segoe UI, Helvetica Neue, Arial, sans-serif" font-size="14" letter-spacing="2.5" fill="#6d9291">ISC2 CC · CERTIFIED IN CYBERSECURITY</text>

  <g transform="translate(58,232)">
    <rect x="0" y="0" width="${WBOX}" height="30" rx="7" fill="#0f3038" stroke="#1d6b66" stroke-width="1.5"/>
    <text x="15" y="20" font-family="Segoe UI, Helvetica Neue, Arial, sans-serif" font-size="13" fill="#c8e8e5">${W}</text>
  </g>

  <text x="1142" y="288" text-anchor="end" font-family="Segoe UI, Helvetica Neue, Arial, sans-serif" font-size="13" fill="#4d6f6e">exam · 5 November 2026</text>
</svg>
SVG

echo "wrote $OUT"
