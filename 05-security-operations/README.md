<div align="center">

<img src="assets/module-05-banner.svg" alt="05 · Security Operations" width="100%">

# ⚙️&nbsp; 05 · Security Operations

### *The daily job, as the textbook describes it.*

[![Topics](https://img.shields.io/badge/Topics-9-0d2b33?style=for-the-badge)](#-02--the-9-topics)
[![Weight](https://img.shields.io/badge/Exam%20weight-18%25-12B5A5?style=for-the-badge)](#-03--where-the-marks-are)

![domain](https://img.shields.io/badge/ISC2%20Domain-5-5C7CFA?style=flat-square)
![questions](https://img.shields.io/badge/≈%20Questions-18-57606A?style=flat-square)
![type](https://img.shields.io/badge/Mostly-broad%20but%20shallow-57606A?style=flat-square)

</div>

---

## 👋 01 · Read this first

18% of the paper, and the **broadest** domain — it touches data, cryptography, system
configuration, monitoring, policy and people. It is also the **shallowest**: each subject gets a
definition and a purpose, and almost nothing goes deeper than that.

That breadth is the thing to plan around. There is no single concept here that carries the
domain the way the four models carry Domain 3. The marks are spread thinly across nine topics,
so skipping any one of them costs you about two questions.

Two areas carry more weight than the rest:

- **Encryption and hashing.** The symmetric/asymmetric distinction, what each is actually for,
  and the fact that **hashing is not encryption** because it is one-way. Expect several
  questions.
- **Data handling.** The three states of data, who owns classification decisions, and the
  disposal methods — which have precise definitions the exam tests directly.

A theme runs through the whole domain, and it is the same one from Domain 1: **policy and people
come before technology.** When a question asks how to address an organisation-wide behaviour,
the expected answer is a policy plus awareness training, not a technical control.

---

## 📂 02 · The 9 topics

Work top to bottom. The data topics set up the encryption ones.

| | Topic | What you will be able to do afterwards |
|:--:|---|---|
| <sub>&#9744;</sub> | 🗄️ [`data-handling/`](data-handling/) | Name the data lifecycle stages, the three states of data, and the disposal methods precisely. |
| <sub>&#9744;</sub> | 🏷️ [`data-classification/`](data-classification/) | Say who classifies data, who protects it, and what a label obliges you to do. |
| <sub>&#9744;</sub> | 🔐 [`encryption-concepts/`](encryption-concepts/) | Separate symmetric from asymmetric and say which is used for what, and why. |
| <sub>&#9744;</sub> | #️⃣ [`hashing-and-integrity/`](hashing-and-integrity/) | Explain why hashing is not encryption, and what salting and signatures add. |
| <sub>&#9744;</sub> | 🔩 [`system-hardening/`](system-hardening/) | Describe baselines, patching and least functionality as the exam defines them. |
| <sub>&#9744;</sub> | 📐 [`configuration-management/`](configuration-management/) | Walk the change control process and say why inventory comes first. |
| <sub>&#9744;</sub> | 📊 [`logging-and-monitoring/`](logging-and-monitoring/) | Say what to log, what a SIEM does, and why log integrity matters. |
| <sub>&#9744;</sub> | 📜 [`security-policies/`](security-policies/) | Recognise AUP, BYOD, change management and privacy policies by their purpose. |
| <sub>&#9744;</sub> | 🎓 [`security-awareness-training/`](security-awareness-training/) | Tell awareness, training and education apart, and know why this is the social engineering answer. |

---

## 🎯 03 · Where the marks are

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    E["🔐 Encryption<br/>and hashing"] --> M1["Symmetric vs asymmetric<br/>hashing is ONE-WAY"]
    D["🗄️ Data handling<br/>and classification"] --> M2["Three states · who owns it<br/>disposal methods"]
    P["📜 Policy and<br/>awareness"] --> M3["The answer to<br/>behaviour problems"]

    style E fill:#0f3038,stroke:#12B5A5,color:#fff
    style D fill:#0f3038,stroke:#12B5A5,color:#fff
    style P fill:#12243f,stroke:#5C7CFA,color:#fff
    style M1 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style M2 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style M3 fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

---

## ⏭️ 04 · Where to go next

When all nine boxes are ticked, go to [`02-bc-dr-ir/`](../02-bc-dr-ir/README.md) — 10%, the
smallest domain, and the last one.

---

<div align="center">
<sub><a href="../README.md">← back to the repo index</a></sub>
</div>
