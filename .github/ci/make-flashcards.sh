#!/usr/bin/env bash
# Regenerate 06-term-bank/flashcards.csv from the domain term tables.
#
#   ./.github/ci/make-flashcards.sh
#
# Reads every domain-0N-terms.md, pulls the two-column markdown tables, and
# writes a CSV of term,definition,domain suitable for Anki / Quizlet import.
# Keeping this generated means the flashcards cannot drift from the pages.

set -euo pipefail
cd "$(dirname "$0")/../.."

OUT=06-term-bank/flashcards.csv

{
  echo 'Term,Definition,Domain'

  for n in 01 02 03 04 05; do
    f="06-term-bank/domain-${n}-terms.md"
    [ -f "$f" ] || continue
    case $n in
      01) d="D1 Security Principles" ;;
      02) d="D2 BC DR IR" ;;
      03) d="D3 Access Control" ;;
      04) d="D4 Network Security" ;;
      05) d="D5 Security Operations" ;;
    esac

    awk -v domain="$d" '
      # Only two-column rows: | term | meaning |
      /^\| / {
        n = split($0, c, /\|/)
        if (n != 4) next
        term = c[2]; def = c[3]
        gsub(/^[ \t]+|[ \t]+$/, "", term)
        gsub(/^[ \t]+|[ \t]+$/, "", def)
        # Skip header and separator rows
        if (term == "" || def == "") next
        if (term ~ /^-+$/ || def ~ /^-+$/) next
        if (term == "Term" || term == "Pair" || term == "#") next
        # Strip markdown emphasis and inline code
        gsub(/\*\*/, "", term); gsub(/\*\*/, "", def)
        gsub(/`/, "", term);    gsub(/`/, "", def)
        # Quote for CSV
        gsub(/"/, "\"\"", term); gsub(/"/, "\"\"", def)
        printf "\"%s\",\"%s\",\"%s\"\n", term, def, domain
      }
    ' "$f"
  done
} > "$OUT"

count=$(( $(wc -l < "$OUT") - 1 ))
echo "wrote $OUT with $count cards"
