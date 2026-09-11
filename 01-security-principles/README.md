<div align="center">

<img src="assets/module-01-banner.svg" alt="01 · Security Principles" width="100%">

# 🧭&nbsp; 01 · Security Principles

### *The vocabulary the whole exam is written in.*

[![Topics](https://img.shields.io/badge/Topics-11-0d2b33?style=for-the-badge)](#-02--the-11-topics)
[![Weight](https://img.shields.io/badge/Exam%20weight-26%25-12B5A5?style=for-the-badge)](#-03--why-this-domain-matters-most)

![domain](https://img.shields.io/badge/ISC2%20Domain-1-5C7CFA?style=flat-square)
![questions](https://img.shields.io/badge/≈%20Questions-26-57606A?style=flat-square)
![type](https://img.shields.io/badge/Mostly-definitions%20%26%20distinctions-57606A?style=flat-square)

</div>

---

## 👋 01 · Read this first

This is the largest domain on the paper at **26%**, and its real influence is larger still,
because the words defined here are the words every other domain's questions are written in.
A question about firewalls will still use "risk", "control" and "confidentiality" as though
you already know exactly what each one means.

The domain is **definitional**. Very little of it asks you to reason about a situation; most
of it asks whether you can match a term to its meaning, or tell two near-identical terms
apart. That makes it the most learnable domain on the exam, and the one where careless
reading costs the most.

Two things to hold on to as you work through it:

- **The ⚖️ Told apart blocks are the domain.** Threat versus vulnerability versus risk.
  Policy versus standard versus procedure versus guideline. The four risk treatments.
  Qualitative versus quantitative. Those distinctions are most of the 26 marks.
- **Authority matters.** A recurring answer pattern in this domain is *who decides*. Senior
  management accepts risk. The data owner classifies data. You assess and recommend. Options
  that put a technical role in a decision-making seat are distractors.

---

## 📂 02 · The 11 topics

Work top to bottom — each one uses vocabulary the previous ones established.

| | Topic | What you will be able to do afterwards |
|:--:|---|---|
| <sub>&#9745;</sub> | 🔺 [`cia-triad/`](cia-triad/) | Name the three properties, say precisely what breaks each, and pick the right one from a scenario. |
| <sub>&#9745;</sub> | 🔑 [`authentication/`](authentication/) | Sort any credential into the right factor, and say what does and does not count as multi-factor. |
| <sub>&#9745;</sub> | 🎫 [`authorization-and-accounting/`](authorization-and-accounting/) | Separate the three parts of AAA and say which one a given control belongs to. |
| <sub>&#9745;</sub> | ✍️ [`non-repudiation/`](non-repudiation/) | Say what non-repudiation actually guarantees, and which mechanisms provide it. |
| <sub>&#9745;</sub> | 🕵️ [`privacy/`](privacy/) | Define PII, name the roles, and recognise the regulations the exam expects. |
| <sub>&#9745;</sub> | ⚠️ [`risk-concepts/`](risk-concepts/) | Tell asset, threat, threat actor, vulnerability and risk apart without hesitating. |
| <sub>&#9744;</sub> | 📐 [`risk-assessment/`](risk-assessment/) | Choose between qualitative and quantitative, and recognise SLE, ARO and ALE. |
| <sub>&#9744;</sub> | 🎯 [`risk-treatment/`](risk-treatment/) | Name the four treatments, match each to a scenario, and say who is allowed to choose. |
| <sub>&#9744;</sub> | 🛡️ [`security-controls/`](security-controls/) | Classify any control by both type and function — the two axes the exam tests. |
| <sub>&#9744;</sub> | 📜 [`governance-documents/`](governance-documents/) | Rank policy, standard, procedure and guideline, and say which are mandatory. |
| <sub>&#9744;</sub> | ⚖️ [`isc2-code-of-ethics/`](isc2-code-of-ethics/) | Recite the four canons **in order** and apply them to a conflict. |

---

## 🎯 03 · Why this domain matters most

26 questions come from here directly. But the vocabulary leaks everywhere: a Domain 4
question about segmentation still turns on what a *preventive control* is, and a Domain 5
question about classification still turns on who the *data owner* is.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    D1["🧭 Domain 1<br/>Security Principles<br/>26 questions"]
    D1 -->|"risk · control · CIA"| D4["🌐 Domain 4<br/>Network Security"]
    D1 -->|"least privilege · authority"| D3["🚪 Domain 3<br/>Access Control"]
    D1 -->|"data owner · policy"| D5["⚙️ Domain 5<br/>Operations"]
    D1 -->|"impact · likelihood"| D2["🚨 Domain 2<br/>BC / DR / IR"]

    style D1 fill:#0f3038,stroke:#12B5A5,color:#fff
    style D4 fill:#12243f,stroke:#5C7CFA,color:#fff
    style D3 fill:#12243f,stroke:#5C7CFA,color:#fff
    style D5 fill:#12243f,stroke:#5C7CFA,color:#fff
    style D2 fill:#12243f,stroke:#5C7CFA,color:#fff
```

Read that as a sentence: **the words defined here are the words the rest of the exam is asked in.**

---

## ⏭️ 04 · Where to go next

When all eleven boxes are ticked, go to [`04-network-security/`](../04-network-security/README.md)
— the second-heaviest domain at 24%.

---

<div align="center">
<sub><a href="../README.md">← back to the repo index</a></sub>
</div>
