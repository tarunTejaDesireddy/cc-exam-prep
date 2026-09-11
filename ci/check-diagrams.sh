#!/usr/bin/env bash
# Audit every mermaid diagram in the repo for the things that make GitHub
# render them badly. Run from the repo root:  ./ci/check-diagrams.sh
#
# Checks, per node label:
#   1. No HTML tags (<sub>, <b>, <i>, <em>, <strong>) — GitHub measures the label
#      at full font size but renders the tag smaller, so the box is drawn too
#      small and the text is visibly clipped.
#   2. No line longer than MAXLEN characters — long lines overflow on narrow
#      screens and on mobile.
#   3. Every node referenced in the graph has an explicit style line, so nothing
#      falls back to Mermaid defaults (which invert between light and dark themes).
#
# Exit 0 = clean, 1 = problems found.

set -uo pipefail
MAXLEN=${MAXLEN:-34}
fails=0

while IFS= read -r file; do
  awk -v F="$file" -v MAXLEN="$MAXLEN" '
    /^```mermaid/ { inm=1; delete nodes; delete styled; next }
    inm && /^```[[:space:]]*$/ {
      # Report any node that never got an explicit style
      for (n in nodes) if (!(n in styled)) {
        printf "%s: node %s has no style line\n", F, n
        bad++
      }
      inm=0; next
    }
    !inm { next }

    # Collect styled node ids:  style X fill:...   /   class A,B name
    /^[[:space:]]*style[[:space:]]+/ { split($0,s," "); styled[s[2]]=1 }
    /^[[:space:]]*class[[:space:]]+/ {
      split($0,c," "); split(c[2],ids,","); for (i in ids) styled[ids[i]]=1
    }

    # Find node declarations:  ID["label"]  or  ID{"label"}
    {
      line=$0
      while (match(line, /[A-Za-z][A-Za-z0-9_]*[[{]"/)) {
        pre=substr(line, 1, RSTART-1)
        rest=substr(line, RSTART)
        # node id is everything up to the bracket
        if (match(rest, /^[A-Za-z][A-Za-z0-9_]*/)) {
          id=substr(rest, 1, RLENGTH)
          nodes[id]=1
        }
        # extract the quoted label
        q=index(rest, "\"")
        after=substr(rest, q+1)
        e=index(after, "\"")
        if (e==0) { line=""; break }
        label=substr(after, 1, e-1)

        if (label ~ /<\/?(sub|b|i|em|strong)>/) {
          printf "%s: HTML tag in label -> %s\n", F, label
          bad++
        }
        n=split(label, parts, /<br\/?>/)
        for (i=1; i<=n; i++) {
          seg=parts[i]
          gsub(/^[[:space:]]+|[[:space:]]+$/, "", seg)
          # crude display width: most emoji count double
          w=length(seg)
          if (w > MAXLEN) {
            printf "%s: label line %d chars (max %d) -> %s\n", F, w, MAXLEN, seg
            bad++
          }
        }
        line=substr(after, e+1)
      }
    }
    END { exit (bad>0 ? 1 : 0) }
  ' "$file" || fails=$((fails+1))
done < <(grep -rl '```mermaid' --include='*.md' . | grep -v '^./_templates/')

if [ "$fails" -eq 0 ]; then
  echo "✅ all mermaid diagrams clean"
else
  echo "❌ $fails file(s) with diagram problems"
  exit 1
fi
