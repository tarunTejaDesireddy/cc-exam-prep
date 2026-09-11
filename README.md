<div align="center">

<img src="assets/repo-banner.svg" alt="ISC2 CC — Certified in Cybersecurity" width="100%">

<h1>
🛡️&nbsp; ISC2 CC — Certified in Cybersecurity
</h1>

<h3>
<em>Understand · Define · Tell apart · <strong>Unlearn</strong> · Drill · Recall · Pass</em>
</h3>

<p>
<b>9 modules · 50 topics · 5 exam domains</b><br>
<sub>Everything the exam can ask, written to be read once and drilled twice. Nothing here is a copy of the ISC2 courseware.</sub>
</p>

[![Exam](https://img.shields.io/badge/Exam-5%20November%202026-12B5A5?style=for-the-badge)](00-foundations/exam-day-logistics/)
[![Modules](https://img.shields.io/badge/Modules-9-0d2b33?style=for-the-badge)](#-the-9-modules)
[![Topics](https://img.shields.io/badge/Topics-50-0d2b33?style=for-the-badge)](#-the-9-modules)
[![Pass mark](https://img.shields.io/badge/Pass-700%2F1000-5C7CFA?style=for-the-badge)](00-foundations/how-the-exam-works/)
[![Progress](https://img.shields.io/badge/Progress-7%2F50%20topics-57606A?style=for-the-badge)](ROADMAP.md)

<sub>🌐 Prefer to browse? <a href="docs/index.html"><code>docs/index.html</code></a> is a filterable index of every
topic — open it locally, or turn on GitHub Pages from the <code>/docs</code> folder.</sub>

</div>

---

## 🎯 What this is

A complete study path for the **ISC2 Certified in Cybersecurity (CC)** exam, built to be
worked through in order and finished before **5 November 2026**.

It is deliberately **not** a general cybersecurity course. It teaches the narrower, far more
predictable thing the exam actually measures: **ISC2's vocabulary, ISC2's definitions, and
ISC2's preferred answer** — including the places where those differ from how the work is
really done.

> [!IMPORTANT]
> If you already work in security, the hardest part of this exam is **not** the material.
> It is answering like the textbook instead of like a practitioner. Read
> [`00-foundations/how-isc2-thinks/`](00-foundations/how-isc2-thinks/) before anything else —
> it is the single highest-value page in this repo.

---

## 📊 What the exam weighs

| | Domain | Weight | Module |
|:--:|---|--:|---|
| 🧭 | **Security Principles** | **26%** | [`01-security-principles/`](01-security-principles/README.md) |
| 🌐 | **Network Security** | **24%** | [`04-network-security/`](04-network-security/README.md) |
| 🚪 | **Access Control Concepts** | **22%** | [`03-access-control/`](03-access-control/README.md) |
| ⚙️ | **Security Operations** | **18%** | [`05-security-operations/`](05-security-operations/README.md) |
| 🚨 | **BC, DR & Incident Response** | **10%** | [`02-bc-dr-ir/`](02-bc-dr-ir/README.md) |

Domains **1, 4 and 3 together are 72% of the paper.** Spend your time there.

```mermaid
%%{init: {'theme':'base','themeVariables':{'pie1':'#12B5A5','pie2':'#5C7CFA','pie3':'#7048E8','pie4':'#F08C00','pie5':'#E03131','pieTitleTextSize':'16px','pieSectionTextSize':'14px','pieOuterStrokeWidth':'2px','pieStrokeColor':'#ffffff','pieSectionTextColor':'#ffffff','legendTextColor':'#8a8f98'}}}%%
pie showData
    "Security Principles" : 26
    "Network Security" : 24
    "Access Control" : 22
    "Security Operations" : 18
    "BC / DR / IR" : 10
```

---

## 📚 The 9 modules

> **Key** &nbsp; 🧱 foundations &nbsp;·&nbsp; 📘 exam domain &nbsp;·&nbsp; 🎯 drill material

### 🧱 Before you start

| | Module | Topics | What it gives you |
|:--:|---|--:|---|
| 🧱 | **[00 · Foundations](00-foundations/README.md)**<br><sub>How the exam works, and how ISC2 wants you to think.</sub> | 5 | The blueprint, the answer-selection logic, and a schedule that fits around a full-time job. |

### 📘 The five exam domains

<sub>Numbered to match ISC2's own domain numbers, so the syllabus maps straight onto the folders.</sub>

| | Module | Topics | Weight | What it covers |
|:--:|---|--:|:--:|---|
| 🧭 | **[01 · Security Principles](01-security-principles/README.md)**<br><sub>The vocabulary the whole exam is built on.</sub> | 11 | **26%** | CIA, authentication, non-repudiation, privacy, risk, controls, governance, ethics. |
| 🚨 | **[02 · BC, DR & Incident Response](02-bc-dr-ir/README.md)**<br><sub>What you do once it has already gone wrong.</sub> | 6 | **10%** | Incident terminology and phases, BIA, RTO/RPO/MTD, continuity and recovery plans. |
| 🚪 | **[03 · Access Control Concepts](03-access-control/README.md)**<br><sub>Who gets in, to what, and on whose authority.</sub> | 8 | **22%** | Subjects and objects, physical and logical controls, DAC/MAC/RBAC/ABAC, least privilege. |
| 🌐 | **[04 · Network Security](04-network-security/README.md)**<br><sub>How networks are built, attacked and defended.</sub> | 11 | **24%** | OSI and TCP/IP, addressing, ports, attacks, firewalls and IDS, segmentation, VPNs, cloud. |
| ⚙️ | **[05 · Security Operations](05-security-operations/README.md)**<br><sub>The daily job, as the textbook describes it.</sub> | 9 | **18%** | Data handling and classification, encryption, hardening, logging, policies, awareness. |

### 🎯 Drill material

| | Module | Contents | When to use it |
|:--:|---|---|---|
| 🗂️ | **[06 · Term Bank](06-term-bank/README.md)**<br><sub>Every definition the exam can ask you for.</sub> | ~250 terms, domain-tagged | From week 2 onward, a few minutes daily |
| ❓ | **[07 · Question Bank](07-question-bank/README.md)**<br><sub>Drills by domain, every wrong answer explained.</sub> | 300+ questions | After each domain, then mixed in week 6 |
| 📝 | **[08 · Mock Exams](08-mock-exams/README.md)**<br><sub>Three full timed sets. You only get three.</sub> | 3 × 100 questions | Weeks 5 and 7 — not before |

---

## 🗺️ How to work through it

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    F["🧱 00<br/>Foundations"] --> D1["🧭 01<br/>Principles<br/><sub>26%</sub>"]
    D1 --> D4["🌐 04<br/>Network<br/><sub>24%</sub>"]
    D4 --> D3["🚪 03<br/>Access<br/><sub>22%</sub>"]
    D3 --> D5["⚙️ 05<br/>Operations<br/><sub>18%</sub>"]
    D5 --> D2["🚨 02<br/>BC/DR/IR<br/><sub>10%</sub>"]
    D2 --> Q["❓ 07<br/>Question bank"]
    Q --> M["📝 08<br/>Mock exams"]
    M --> E["🎓<br/>5 Nov"]

    style F fill:#0f3038,stroke:#12B5A5,color:#fff
    style D1 fill:#12243f,stroke:#5C7CFA,color:#fff
    style D4 fill:#12243f,stroke:#5C7CFA,color:#fff
    style D3 fill:#12243f,stroke:#5C7CFA,color:#fff
    style D5 fill:#12243f,stroke:#5C7CFA,color:#fff
    style D2 fill:#12243f,stroke:#5C7CFA,color:#fff
    style Q fill:#0f3038,stroke:#12B5A5,color:#fff
    style M fill:#0f3038,stroke:#12B5A5,color:#fff
    style E fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

**The domains are worked in weight order, not number order** — heaviest first, so if the
schedule slips, what you lose is what was worth least. The folders stay in ISC2's numbering
so the official syllabus maps straight onto them.

The full day-by-day plan is in [`00-foundations/study-schedule/`](00-foundations/study-schedule/README.md).

---

## 📖 Every page is built the same way

| Section | What it gives you |
|---|---|
| 🧸 **The big idea** | A plain-English handle on the concept before any jargon |
| 📖 **Words you will keep seeing** | Every term defined in ISC2's own wording, *before* it gets used |
| **The explanation** | Short sections and diagrams, with the tested parts called out |
| ⚖️ **Told apart** | The term pairs the exam deliberately confuses — the highest-value block on the page |
| ⚠️ **Where your instinct is wrong** | Places doing the job well and answering well point different directions |
| 🧠 **How to remember it** | A mnemonic or hook, where one genuinely helps |
| ✅ **Check you actually got it** | Five questions, with **every wrong option explained** |
| 🎓 **The grown-up version** | Collapsed. Extra depth for a second read — never needed for the pass |
| 📝 **Cram lines** | The two or three facts that land in `EXAM-DAY.md` |

Conventions, colours and the full visual language: [`CLAUDE.md`](CLAUDE.md).

---

## 📌 Progress

Ticked when the topic is **written and pushed**. Live detail in [`ROADMAP.md`](ROADMAP.md).

| Module | Written |
|---|---|
| 🧱 00 · Foundations | `5 / 5` ✅ |
| 🧭 01 · Security Principles | `2 / 11` |
| 🚨 02 · BC, DR & IR | `0 / 6` |
| 🚪 03 · Access Control | `0 / 8` |
| 🌐 04 · Network Security | `0 / 11` |
| ⚙️ 05 · Security Operations | `0 / 9` |
| 🗂️ 06 · Term Bank | `not started` |
| ❓ 07 · Question Bank | `not started` |
| 📝 08 · Mock Exams | `not started` |

---

<div align="center">
<sub>Built for one exam sitting on <b>5 November 2026</b>. After that it is a reference, not a plan.</sub>
</div>
