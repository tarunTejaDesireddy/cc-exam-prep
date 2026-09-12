<div align="center">

<img src="assets/module-03-banner.svg" alt="03 · IAM Concepts" width="100%">

# 🚪&nbsp; 03 · IAM Concepts

### *Who gets in, to what, and on whose authority.*

[![Topics](https://img.shields.io/badge/Topics-6-0d2b33?style=for-the-badge)](#-02--the-6-topics)
[![Weight](https://img.shields.io/badge/Exam%20weight-20%25-12B5A5?style=for-the-badge)](#-03--where-the-marks-are)

![domain](https://img.shields.io/badge/ISC2%20Domain-3-5C7CFA?style=flat-square)
![type](https://img.shields.io/badge/Mostly-definitions%20%26%20models-57606A?style=flat-square)

</div>

---

## 👋 01 · Read this first

**20% of the paper** under the live outline, and renamed from "Access Control Concepts" to
**IAM Concepts** — Identity and Access Management. Two sub-areas only, but each is deep:

- **Identity life cycle management** — roles definition, provisioning, review, deprovisioning,
  and the frameworks and tools involved.
- **Logical access controls** — the principle of least privilege, separation of duties, and
  the access control models: DAC, MAC, RBAC, ABAC.

Most of the marks concentrate in one place: **the four access control models.** Expect several
questions describing a scenario and asking which model it is. Getting DAC and MAC the right way
round is worth real marks on its own — the names actively mislead. **Discretionary** means the
*owner* decides; **Mandatory** means the *system* decides and the owner cannot override it.

A second thread runs through every topic: **least privilege**. When a question asks what
should have prevented something, "the user had more access than they needed" is very often the
answer.

> [!NOTE]
> **Physical access control is no longer a named objective in this domain.** Under the old
> outline it was a full Domain 3 topic; under the live one, the physical thread survives only
> as physical penetration *testing* under Domain 5's security testing sub-area. If you're
> looking for badges, mantraps and CCTV, they live at
> [`05-security-operations/physical-penetration-testing/`](../05-security-operations/physical-penetration-testing/README.md).
> **Defence in depth** also moved — it's now architecture content under
> [`04-network-security/defence-in-depth/`](../04-network-security/defence-in-depth/README.md).

---

## 📂 02 · The 6 topics

Work top to bottom. The first topic establishes the vocabulary the rest depend on.

| | Topic | What you will be able to do afterwards |
|:--:|---|---|
| <sub>&#9745;</sub> | 🎟️ [`access-control-fundamentals/`](access-control-fundamentals/) | Use subject, object and rule correctly, and describe any access decision in those terms. |
| <sub>&#9745;</sub> | 💻 [`logical-access-controls/`](logical-access-controls/) | Separate logical from physical, and place controls that look like both. |
| <sub>&#9745;</sub> | 🗝️ [`dac-mac-rbac-abac/`](dac-mac-rbac-abac/) | Identify any of the four models from a scenario, without hesitating over DAC and MAC. |
| <sub>&#9745;</sub> | 🔻 [`least-privilege-and-sod/`](least-privilege-and-sod/) | Apply least privilege, need to know and segregation of duties to the right situations. |
| <sub>&#9745;</sub> | 👑 [`privileged-access/`](privileged-access/) | Say what makes an account privileged and which controls the exam expects on it. |
| <sub>&#9745;</sub> | 🔄 [`identity-lifecycle/`](identity-lifecycle/) | Walk joiner, mover and leaver, name the frameworks/tools involved, and explain what goes wrong at each stage. |

---

## 🎯 03 · Where the marks are

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    M["🗝️ The four models<br/>DAC · MAC · RBAC · ABAC"] --> H["Several questions<br/>describe a scenario<br/>and ask which"]
    L["🔻 Least privilege"] --> H3["What should have<br/>prevented this?"]
    I["🔄 Identity lifecycle"] --> H2["JML stage,<br/>and what breaks there"]

    style M fill:#0f3038,stroke:#12B5A5,color:#fff
    style L fill:#12243f,stroke:#5C7CFA,color:#fff
    style I fill:#12243f,stroke:#5C7CFA,color:#fff
    style H fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style H2 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style H3 fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

If you run short of time in this domain, the model comparison in
[`dac-mac-rbac-abac/`](dac-mac-rbac-abac/) is the page to know cold.

---

## ⏭️ 04 · Where to go next

When all six boxes are ticked, go to
[`04-network-security/`](../04-network-security/README.md) — 21.3%, and the second-heaviest
domain.

---

<div align="center">
<sub><a href="../README.md">← back to the repo index</a></sub>
</div>
</content>
