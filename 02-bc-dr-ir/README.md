<div align="center">

<img src="assets/module-02-banner.svg" alt="02 · BC, DR & Incident Response" width="100%">

# 🚨&nbsp; 02 · BC, DR & Incident Response

### *What you do once it has already gone wrong.*

[![Topics](https://img.shields.io/badge/Topics-6-0d2b33?style=for-the-badge)](#-02--the-6-topics)
[![Weight](https://img.shields.io/badge/Exam%20weight-10%25-12B5A5?style=for-the-badge)](#-03--where-the-marks-are)

![domain](https://img.shields.io/badge/ISC2%20Domain-2-5C7CFA?style=flat-square)
![questions](https://img.shields.io/badge/≈%20Questions-10-57606A?style=flat-square)
![type](https://img.shields.io/badge/Mostly-definitions%20%26%20ordering-57606A?style=flat-square)

</div>

---

## 👋 01 · Read this first

The **smallest** domain at 10%, and among the easiest content on the paper. Six short topics,
heavily definitional, with almost all the marks concentrated in two places:

- **RTO versus RPO.** Two time metrics that are constantly swapped in distractors. Get them
  straight and you have several marks.
- **The order of the incident response phases.** An ordering question is near-certain.

Everything else here is vocabulary: knowing that **business continuity** keeps things running
*during* a disruption while **disaster recovery** restores normal operations *afterwards*, and
that an **event** is not an **incident** is not a **breach**.

Two themes carry through every topic, and both come straight from Domain 1:

- **Human safety outranks everything.** Every BC/DR scenario involving an emergency has "protect
  people" as the answer, without exception.
- **Follow the documented plan.** The correct first action in an incident is almost never
  technical — it is to follow the incident response plan and notify the right people.

> 🎯 **This is the domain to study last**, because it is worth least and its marks are the
> quickest to secure. But do not skip it — ten questions is the difference between passing and
> not.

---

## 📂 02 · The 6 topics

Work top to bottom. The terminology topic sets up everything after it.

| | Topic | What you will be able to do afterwards |
|:--:|---|---|
| <sub>&#9745;</sub> | 🏷️ [`incident-terminology/`](incident-terminology/) | Tell event, alert, incident and breach apart without hesitating. |
| <sub>&#9745;</sub> | 🚑 [`incident-response-plan/`](incident-response-plan/) | Recite the phases **in order** and say who does what. |
| <sub>&#9745;</sub> | 📊 [`business-impact-analysis/`](business-impact-analysis/) | Say what a BIA produces and why it comes before the plans. |
| <sub>&#9745;</sub> | ⏱️ [`rto-rpo-mtd/`](rto-rpo-mtd/) | Place all three metrics on a timeline and never swap RTO and RPO. |
| <sub>&#9745;</sub> | 🏃 [`business-continuity/`](business-continuity/) | Explain what keeps running *during* a disruption. |
| <sub>&#9745;</sub> | 🔧 [`disaster-recovery/`](disaster-recovery/) | Compare the site types and the testing types by cost and readiness. |

---

## 🎯 03 · Where the marks are

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    A["⏱️ RTO vs RPO"] --> M1["Constantly swapped<br/>in distractors"]
    B["🚑 IR phase ORDER"] --> M2["An ordering question<br/>is near-certain"]
    C["🏃 BC vs DR"] --> M3["DURING vs AFTER<br/>the disruption"]

    style A fill:#0f3038,stroke:#12B5A5,color:#fff
    style B fill:#0f3038,stroke:#12B5A5,color:#fff
    style C fill:#12243f,stroke:#5C7CFA,color:#fff
    style M1 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style M2 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style M3 fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

If you have one hour for this entire domain, spend it on
[`rto-rpo-mtd/`](rto-rpo-mtd/) and [`incident-response-plan/`](incident-response-plan/).

---

## ⏭️ 04 · Where to go next

When all six boxes are ticked, every domain is covered. Move to the drill material:
[`06-term-bank/`](../06-term-bank/README.md), then
[`07-question-bank/`](../07-question-bank/README.md), then
[`08-mock-exams/`](../08-mock-exams/README.md).

---

<div align="center">
<sub><a href="../README.md">← back to the repo index</a></sub>
</div>
