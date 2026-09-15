# Repo conventions — read this before editing anything

ISC2 **CC (Certified in Cybersecurity)** exam-prep path. Exam date: **5 November 2026**.

This repo follows the same structural conventions as `master-the-azure`: numbered module
folders, one topic per subfolder, banner SVGs, shields badges, and a numbered-section page
layout. The section *names* differ because this is an exam repo, not a hands-on lab repo —
there is no portal to click and nothing to deploy.

---

## 1 · Purpose

Teach **what ISC2 tests and how ISC2 words it** — not general cybersecurity practice.

The reader is a working SOC engineer, so real-world knowledge is assumed. The value added
here is ISC2's vocabulary, its preferred answers, and the traps where practitioner instinct
produces the wrong choice.

---

## 2 · Hard rules

1. **Self-contained topics.** No "as covered in module 03", no cross-domain references, no
   "see the other repo". Each page explains what a thing is and what to do with it, and
   nothing else. If a term is needed, define it inline even if another page also defines it.
2. **No padding.** If a topic has nothing exam-relevant to say on some sub-point, leave it
   out rather than filling space. Not every page needs a mnemonic or a diagram.
3. **ISC2 wording wins.** Where industry usage and ISC2's textbook differ, give ISC2's
   version as the answer and flag the difference in a ⚠️ block.
4. **Distractors are the content.** Every practice question explains why each wrong option
   is wrong, not only why the right one is right. Eliminating three options is the skill
   being trained.
5. **Push per topic.** Commit and push each topic the moment it is finished. Never batch
   several topics into one commit.
6. **No real-world lab data.** No hostnames, IPs, subscription IDs, tenant names or person
   names from any live environment. Use RFC 5737 addresses (`192.0.2.0/24`) and
   `example.com` where an example is needed.
7. **No copied courseware.** Everything is written fresh. Do not reproduce ISC2 text.

---

## 3 · Directory shape

```
NN-module-name/
├── README.md              ← module index: banner, badges, topic table
├── assets/
│   └── module-NN-banner.svg
├── topic-one/
│   └── README.md
└── topic-two/
    └── README.md
```

Module numbers **01–05 are ISC2's own domain numbers** and must not be renumbered — the
official syllabus maps directly onto them. `00` is foundations; `06`–`08` are drill material.

Repo-meta files that aren't exam content — `LICENSE`, `MOTIVATION.md`, `ROADMAP.md`, the
`ci/` scripts, `_templates/`, and the repo-level `assets/` (banners for the root README,
not the per-module `assets/` above) — live under `.github/` to keep the repo root to just the
numbered modules, `bonus/`, `docs/`, `README.md` and `EXAM-DAY.md`. `EXAM-DAY.md` and
`CLAUDE.md` stay at the root: `CLAUDE.md` because Claude Code only auto-loads it from the
project root, `EXAM-DAY.md` because it's exam content, not meta.

---

## 4 · Page layout

Every topic page uses these sections, in this order. Skip any that has nothing to say.

| # | Section | Contents |
|---|---|---|
| — | Header | Centered banner, emoji title, italic subtitle, module badge, 📌 one-line blurb |
| 🧸 | **The big idea** | Plain-English handle on the concept, before any jargon |
| 📖 | **Words you will keep seeing** | Term table, ISC2's wording, defined *before* first use |
| — | **The explanation** | Short sections, diagrams, the tested parts called out |
| ⚖️ | **Told apart** | Term pairs/trios the exam deliberately confuses |
| ⚠️ | **Where your instinct is wrong** | Practitioner habits that lose marks |
| 🧠 | **How to remember it** | Mnemonic or hook, only where one genuinely helps |
| ✅ | **Check you actually got it** | 5 questions, answers in `<details>`, every distractor explained |
| 🎓 | **The grown-up version** | Collapsed `<details>`. Extra depth, never needed for the pass |
| 📝 | **Cram lines** | 2–5 lines destined for `EXAM-DAY.md` |

Module `README.md` files use numbered sections in the `master-the-azure` manner:
`## 👋 01 · Read this first`, `## 📂 02 · The N topics`, `## 🎯 03 · What this domain is worth`.

---

## 5 · Visual language

### Banners

Generated, never hand-written:

```bash
./.github/assets/make-banner.sh "03 · Access Control Concepts" "Who gets in, to what" "22% of the exam" 03-access-control/assets/module-03-banner.svg
```

### Mermaid palette

Dark fills with white text, matching the banner gradient. Always set `style` explicitly —
never rely on Mermaid defaults, which invert badly between GitHub's light and dark themes.

| Role | Fill | Stroke | Used for |
|---|---|---|---|
| **Concept** | `#12243f` | `#5C7CFA` | Core ideas, neutral entities |
| **Accent** | `#0f3038` | `#12B5A5` | The subject of the diagram, emphasis |
| **Control** | `#1d3a2a` | `#2F9E44` | Safeguards, correct paths, good outcomes |
| **Threat** | `#3a1a20` | `#E03131` | Attacks, risks, failures, bad outcomes |
| **Process** | `#3a2c12` | `#F08C00` | Decisions, phases, lifecycle steps |
| **Context** | `#26292e` | `#868E96` | Background, out of scope |

Text is always `#fff`. Line colour `#4d6f6e`.

### Mermaid label rules — non-negotiable

1. **No HTML tags inside node labels.** No `<sub>`, `<b>`, `<i>`. GitHub measures the label
   at full font size but renders the tag smaller, so the box is sized wrong and **the text
   is clipped**. Plain text only, with `<br/>` for line breaks.
2. **Maximum ~30 characters per line**, 3 lines per node. Longer labels overflow on narrow
   screens and on mobile.
3. **Emphasis comes from the node colour**, not from markup inside the label.
4. After adding a diagram, re-read the rendered page on GitHub before considering the topic
   done. Clipped labels are invisible in the source.

Every diagram must be readable as a sentence. If it cannot be read as one, it is a bad
diagram — cut it.

### Badges

Shields.io, `for-the-badge` on module headers, `flat-square` for metadata rows. Repo
accent colours: `12B5A5` (teal), `5C7CFA` (indigo), `0d2b33` (dark).

---

## 6 · Progress tracking

Two places, updated in the same commit that lands a topic:

- `README.md` — the per-module counts table
- `.github/ROADMAP.md` — the per-topic checkbox list
- the module's own `README.md` — the topic checkbox

`EXAM-DAY.md` grows as topics land: append each topic's 📝 cram lines when it is written.

---

## 7 · CI scripts

Run all three before considering any change finished.

| Script | Checks |
|---|---|
| `./.github/ci/check-diagrams.sh` | No HTML tags in mermaid labels, no over-long label lines, every node and subgraph explicitly styled |
| `./.github/ci/check-links.sh` | Every relative markdown link, `src` and `href` resolves to a real file |
| `./.github/ci/make-flashcards.sh` | Regenerates `06-term-bank/flashcards.csv` from the domain term tables |
| `./.github/ci/make-docs-index.sh` | Regenerates `docs/index.html` from the repo's pages |

The two generators are the reason the flashcard deck and the browsable index cannot drift from the
pages. **Re-run them after editing any term table or adding any page.**
