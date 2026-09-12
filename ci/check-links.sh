#!/usr/bin/env bash
# Verify every relative markdown link and image in the repo resolves to a real file.
#
#   ./ci/check-links.sh
#
# Skips external URLs (http/https), anchors (#...) and mailto:. Directory links
# are accepted if the directory exists (GitHub serves its README.md).
#
# Exit 0 = all links resolve, 1 = broken links found.

set -uo pipefail
cd "$(dirname "$0")/.."

broken=0
checked=0

while IFS= read -r file; do
  case "$file" in ./_templates/*) continue ;; esac
  dir=$(dirname "$file")

  # Pull the target out of every ](...) and src="..." occurrence
  grep -oE '\]\([^)]+\)|src="[^"]+"' "$file" 2>/dev/null | \
  sed -E 's/^\]\(//; s/\)$//; s/^src="//; s/"$//' | \
  while IFS= read -r target; do
    # Skip externals, anchors, mailto
    case "$target" in
      http://*|https://*|mailto:*|"#"*|"") continue ;;
    esac

    # Strip any trailing anchor
    path="${target%%#*}"
    [ -z "$path" ] && continue

    resolved="$dir/$path"

    if [ -e "$resolved" ]; then
      continue
    fi
    # A directory link may be written without a trailing slash
    if [ -d "${resolved%/}" ]; then
      continue
    fi

    printf '%s -> %s (missing)\n' "$file" "$target"
    echo "BROKEN" >> /tmp/cc-link-broken.$$
  done

  checked=$((checked + 1))
done < <(find . -name '*.md' -not -path './.git/*')

if [ -f "/tmp/cc-link-broken.$$" ]; then
  broken=$(wc -l < "/tmp/cc-link-broken.$$")
  rm -f "/tmp/cc-link-broken.$$"
  echo "❌ $broken broken link(s) across $checked markdown files"
  exit 1
fi

echo "✅ all relative links resolve ($checked markdown files checked)"
