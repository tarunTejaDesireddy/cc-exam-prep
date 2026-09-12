<div align="center">

<img src="assets/module-03-banner.svg" alt="03 · Access Control Concepts" width="100%">

# 🚪&nbsp; 03 · Access Control Concepts

### *Who gets in, to what, and on whose authority.*

[![Topics](https://img.shields.io/badge/Topics-8-0d2b33?style=for-the-badge)](#-02--the-8-topics)
[![Weight](https://img.shields.io/badge/Exam%20weight-22%25-12B5A5?style=for-the-badge)](#-03--where-the-marks-are)

![domain](https://img.shields.io/badge/ISC2%20Domain-3-5C7CFA?style=flat-square)
![questions](https://img.shields.io/badge/≈%20Questions-22-57606A?style=flat-square)
![type](https://img.shields.io/badge/Mostly-definitions%20%26%20models-57606A?style=flat-square)

</div>

---

## 👋 01 · Read this first

22% of the paper, and **the most definition-dense domain on it**.

Where Domain 4 tested recall of facts, this domain tests whether you can tell four
near-identical models apart and put a given control in the right category. It is almost
entirely conceptual — there is nothing to configure and nothing to compute.

Two things carry most of the marks:

- **The four access control models.** DAC, MAC, RBAC and ABAC. Expect several questions
  describing a scenario and asking which model it is. Getting DAC and MAC the right way round
  is worth real marks on its own, and the names actively mislead — **Discretionary** means the
  *owner* decides, **Mandatory** means the *system* decides and the owner cannot override it.
- **Physical versus logical.** A large share of questions simply ask which category a control
  belongs to. The boundary is less obvious than it looks, because several controls have both a
  physical and a logical form.

A third thread runs through every topic: **least privilege**. It is the most frequently correct
principle in this domain, and when a question asks what should have prevented something, "the
user had more access than they needed" is very often the answer.

---

## 📂 02 · The 8 topics

Work top to bottom. The first topic establishes the vocabulary the rest depend on.

| | Topic | What you will be able to do afterwards |
|:--:|---|---|
| <sub>&#9745;</sub> | 🎟️ [`access-control-fundamentals/`](access-control-fundamentals/) | Use subject, object and rule correctly, and describe any access decision in those terms. |
| <sub>&#9745;</sub> | 🏢 [`physical-access-controls/`](physical-access-controls/) | Name the physical controls and say what each one actually stops. |
| <sub>&#9745;</sub> | 💻 [`logical-access-controls/`](logical-access-controls/) | Separate logical from physical, and place controls that look like both. |
| <sub>&#9744;</sub> | 🗝️ [`dac-mac-rbac-abac/`](dac-mac-rbac-abac/) | Identify any of the four models from a scenario, without hesitating over DAC and MAC. |
| <sub>&#9744;</sub> | 🔻 [`least-privilege-and-sod/`](least-privilege-and-sod/) | Apply least privilege, need to know and segregation of duties to the right situations. |
| <sub>&#9744;</sub> | 👑 [`privileged-access/`](privileged-access/) | Say what makes an account privileged and which controls the exam expects on it. |
| <sub>&#9744;</sub> | 🔄 [`identity-lifecycle/`](identity-lifecycle/) | Walk joiner, mover and leaver, and explain what goes wrong at each stage. |
| <sub>&#9744;</sub> | 🛡️ [`defence-in-depth/`](defence-in-depth/) | Explain layered control strategy as ISC2 defines it, and why layers must be independent. |

---

## 🎯 03 · Where the marks are

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    M["🗝️ The four models<br/>DAC · MAC · RBAC · ABAC"] --> H["Several questions<br/>describe a scenario<br/>and ask which"]
    P["🏢 Physical vs logical"] --> H2["Which category<br/>is this control?"]
    L["🔻 Least privilege"] --> H3["What should have<br/>prevented this?"]

    style M fill:#0f3038,stroke:#12B5A5,color:#fff
    style P fill:#12243f,stroke:#5C7CFA,color:#fff
    style L fill:#12243f,stroke:#5C7CFA,color:#fff
    style H fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style H2 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style H3 fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

If you run short of time in this domain, the model comparison in
[`dac-mac-rbac-abac/`](dac-mac-rbac-abac/) is the page to know cold.

---

## ⏭️ 04 · Where to go next

When all eight boxes are ticked, go to
[`05-security-operations/`](../05-security-operations/README.md) — 18%, and the last of the
larger domains.

---

<div align="center">
<sub><a href="../README.md">← back to the repo index</a></sub>
</div>
