#!/usr/bin/env bash
# Generate docs/index.html - a filterable, offline index of every page in the repo.
#
#   ./.github/ci/make-docs-index.sh
#
# Walks the module directories, reads each page's H1 and its 📌 blurb, and writes
# a single self-contained HTML file. Generated, so it cannot drift from the repo.

set -euo pipefail
cd "$(dirname "$0")/../.."

OUT=docs/index.html
mkdir -p docs

# module dir -> label, emoji, weight
module_meta() {
  case "$1" in
    00-foundations)        echo "Foundations|🧱|—" ;;
    01-security-principles) echo "Security Principles|🧭|24%" ;;
    02-security-governance) echo "Security Governance|🚨|17.3%" ;;
    03-access-control)     echo "IAM Concepts|🚪|20%" ;;
    04-network-security)   echo "Networking and Cloud Security Concepts|🌐|21.3%" ;;
    05-security-operations) echo "Security Operations and Incident Response|⚙️|17.3%" ;;
    06-term-bank)          echo "Term Bank|🗂️|drill" ;;
    07-question-bank)      echo "Question Bank|❓|drill" ;;
    08-mock-exams)         echo "Mock Exams|📝|drill" ;;
    *) echo "$1||" ;;
  esac
}

# Pull the first "# " heading, stripped of emoji and nbsp markup
page_title() {
  grep -m1 '^# ' "$1" 2>/dev/null \
    | sed -E 's/^# +//; s/&nbsp;//g; s/^[^A-Za-z0-9(]+//; s/ +$//' \
    || basename "$(dirname "$1")"
}

# Pull the 📌 blurb line, stripped of markers
page_blurb() {
  grep -m1 '^📌 ' "$1" 2>/dev/null \
    | sed -E 's/^📌 +//; s/^\*//; s/\*$//; s/\*\*//g' \
    || echo ""
}

esc() { sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g'; }

rows=""
count=0

for mod in 00-foundations 01-security-principles 02-security-governance 03-access-control \
           04-network-security 05-security-operations 06-term-bank \
           07-question-bank 08-mock-exams; do
  [ -d "$mod" ] || continue
  IFS='|' read -r label emoji weight <<< "$(module_meta "$mod")"

  # Topic subdirectories with their own README, then loose .md files
  for page in "$mod"/*/README.md "$mod"/*.md; do
    [ -f "$page" ] || continue
    case "$page" in */assets/*) continue ;; esac
    [ "$(basename "$page")" = "README.md" ] && [ "$(dirname "$page")" = "$mod" ] && continue

    title=$(page_title "$page" | esc)
    blurb=$(page_blurb "$page" | esc)
    rows+="<tr data-mod=\"${label}\" data-text=\"$(echo "$title $blurb" | tr 'A-Z' 'a-z')\">"
    rows+="<td class=\"m\"><span class=\"e\">${emoji}</span>${label}<span class=\"w\">${weight}</span></td>"
    rows+="<td class=\"t\"><a href=\"../${page}\">${title}</a><div class=\"b\">${blurb}</div></td>"
    rows+="</tr>"
    count=$((count + 1))
  done
done

cat > "$OUT" <<HTML
<!doctype html>
<html lang="en"><head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>ISC2 CC — page index</title>
<style>
:root{--bg:#07171c;--card:#0d2b33;--line:#1d3a42;--txt:#dbe7e6;--dim:#7fa3a2;--teal:#12B5A5;--indigo:#5C7CFA}
*{box-sizing:border-box}
body{margin:0;background:var(--bg);color:var(--txt);font:15px/1.5 "Segoe UI",system-ui,sans-serif}
header{padding:28px 20px 18px;border-bottom:1px solid var(--line);background:linear-gradient(135deg,#07171c,#0d2b33 55%,#141d39)}
h1{margin:0 0 4px;font-size:24px}
.sub{color:var(--dim);font-size:14px}
.wrap{max-width:1000px;margin:0 auto;padding:0 20px}
.tools{display:flex;gap:10px;flex-wrap:wrap;padding:16px 0}
input,select{background:var(--card);color:var(--txt);border:1px solid var(--line);border-radius:7px;padding:9px 12px;font:inherit}
input{flex:1;min-width:220px}
input:focus,select:focus{outline:none;border-color:var(--teal)}
table{width:100%;border-collapse:collapse;margin-bottom:40px}
td{padding:11px 10px;border-bottom:1px solid var(--line);vertical-align:top}
.m{white-space:nowrap;color:var(--dim);font-size:13px;width:1%}
.e{margin-right:7px}
.w{margin-left:8px;padding:1px 6px;border:1px solid var(--line);border-radius:20px;font-size:11px}
.t a{color:var(--txt);text-decoration:none;font-weight:600}
.t a:hover{color:var(--teal);text-decoration:underline}
.b{color:var(--dim);font-size:13px;margin-top:3px}
.count{color:var(--dim);font-size:13px;padding-bottom:10px}
tr.hide{display:none}
@media(max-width:620px){.m{white-space:normal}}
</style></head><body>
<header><div class="wrap">
<h1>🛡️ ISC2 CC — page index</h1>
<div class="sub">${count} pages · exam Thursday 5 November 2026 · filter below</div>
</div></header>
<div class="wrap">
<div class="tools">
<input id="q" placeholder="Filter by title or description…" autocomplete="off">
<select id="m"><option value="">All modules</option></select>
</div>
<div class="count" id="c"></div>
<table><tbody id="tb">${rows}</tbody></table>
</div>
<script>
var rows=[].slice.call(document.querySelectorAll('#tb tr')),
    q=document.getElementById('q'),m=document.getElementById('m'),c=document.getElementById('c'),
    mods=[];
rows.forEach(function(r){var v=r.dataset.mod;if(mods.indexOf(v)<0)mods.push(v)});
mods.forEach(function(v){var o=document.createElement('option');o.value=o.textContent=v;m.appendChild(o)});
function run(){
  var t=q.value.toLowerCase().trim(),sel=m.value,n=0;
  rows.forEach(function(r){
    var ok=(!t||r.dataset.text.indexOf(t)>-1)&&(!sel||r.dataset.mod===sel);
    r.classList.toggle('hide',!ok); if(ok)n++;
  });
  c.textContent=n+' of '+rows.length+' pages';
}
q.addEventListener('input',run); m.addEventListener('change',run); run();
</script>
</body></html>
HTML

echo "wrote $OUT with $count pages"
