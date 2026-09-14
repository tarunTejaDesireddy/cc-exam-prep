<div align="center">

<img src="assets/business-continuity-banner.svg" alt="Business Continuity — keep the critical things running through a disruption" width="100%">

# 🏢 Business Continuity — Caveman Style

[![Module](https://img.shields.io/badge/Module-02_Security_Governance-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_2-17.3%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![Strategies](https://img.shields.io/badge/🔄-Continuity_Strategies-5C7CFA?style=flat-square&labelColor=12243f)](#-how-does-the-organization-keep-running)
[![vs DR](https://img.shields.io/badge/🖥️-vs_Disaster_Recovery-F08C00?style=flat-square&labelColor=3a2c12)](#-business-continuity-vs-disaster-recovery)

</div>

---

Think about Grog's tribe. 🪨

A huge storm destroys part of their cave.

🌪️💥 DISRUPTION!

The tribe can't operate normally.

But the tribe still needs to survive.

So they ask:

> "What important things must keep running while the cave is damaged?"

That's business continuity.

## 🧠 What is Business Continuity?

**Business continuity is the ability of an organization to continue delivering critical products
or services during and after a disruption.**

The key word is:

> ⭐ **CONTINUE**

It's not necessarily about restoring everything immediately.

It's about keeping the most important business functions running.

## 🪨 Caveman Example

Imagine Grog's tribe normally does this:

- 🥩 Hunt for food
- 💧 Collect water
- 🏠 Maintain the cave
- 🎨 Paint pictures
- 🪨 Make decorations

Then a huge storm hits.

The cave is damaged.

The tribe can't do everything.

So they prioritize.

**Must continue:** 🥩 Food collection · 💧 Water supply · 🏥 Medical care

**Can wait:** 🎨 Cave paintings · 🪨 Decorations

The important activities continue even though the tribe isn't operating normally.

That's business continuity.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    S["🌪️ Storm damages<br/>the cave"]
    S --> C1["🥩 Food collection<br/>MUST continue"]
    S --> C2["💧 Water supply<br/>MUST continue"]
    S --> C3["🏥 Medical care<br/>MUST continue"]
    S -.-> W1["🎨 Cave paintings<br/>can wait"]
    S -.-> W2["🪨 Decorations<br/>can wait"]

    style S fill:#3a1a20,stroke:#E03131,color:#fff
    style C1 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style C2 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style C3 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style W1 fill:#26292e,stroke:#868E96,color:#fff
    style W2 fill:#26292e,stroke:#868E96,color:#fff
```

---

## ⭐ What keeps running?

The answer is:

> **Critical business functions and services.**

Not necessarily everything.

This is why the BIA (Business Impact Analysis) is important.

The BIA identifies:

> **Which functions are critical and how long they can tolerate disruption.**

Then the organization develops continuity strategies to keep those critical functions operating.

---

## 🏢 Real-World Example

Imagine an online bank.

Normally it has:

- 💰 Payment processing
- 🏦 Online banking
- 📞 Customer support
- 📧 Marketing
- 👥 HR
- 🧑‍💼 Office operations

A major disaster hits the headquarters.

The organization might prioritize:

**⭐ Critical** — 💰 Payment processing · 🏦 Online banking · 🔐 Security operations

**🟡 Important but temporarily reduced** — 📞 Customer support

**🟢 Can wait** — 📧 Marketing · 🏢 Some office activities

The objective is to keep critical services available.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    D["🌪️ Disaster hits<br/>headquarters"]
    D --> A["⭐ Critical<br/>payments, banking,<br/>security ops"]
    D --> B["🟡 Reduced<br/>customer support"]
    D --> C["🟢 Can wait<br/>marketing, some<br/>office activities"]

    style D fill:#3a1a20,stroke:#E03131,color:#fff
    style A fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style B fill:#3a2c12,stroke:#F08C00,color:#fff
    style C fill:#26292e,stroke:#868E96,color:#fff
```

---

## 🔄 How does the organization keep running?

Business continuity can use strategies such as:

**🏢 Alternate location** — If the main office is destroyed: 💻🏠 "Move critical employees to
another location."

**🏠 Remote work** — Employees work from home. 💻🏠

**🖥️ Redundant systems** — If one server fails: Server A 💥. Another server takes over: Server B
✅.

**👥 Alternate personnel** — If key employees are unavailable, trained backups take over. "Grog is
injured, so Bob performs the job."

**📦 Alternate suppliers** — If the normal supplier cannot provide materials: "Use another
supplier."

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    N["⭐ Keep critical<br/>functions running"]
    N --> L["🏢 Alternate<br/>location"]
    N --> R["🏠 Remote<br/>work"]
    N --> S["🖥️ Redundant<br/>systems"]
    N --> P["👥 Alternate<br/>personnel"]
    N --> SUP["📦 Alternate<br/>suppliers"]

    style N fill:#0f3038,stroke:#12B5A5,color:#fff
    style L fill:#12243f,stroke:#5C7CFA,color:#fff
    style R fill:#12243f,stroke:#5C7CFA,color:#fff
    style S fill:#12243f,stroke:#5C7CFA,color:#fff
    style P fill:#12243f,stroke:#5C7CFA,color:#fff
    style SUP fill:#12243f,stroke:#5C7CFA,color:#fff
```

---

## 🧠 Business Continuity vs Disaster Recovery

This is another common exam trap.

**🏢 Business Continuity** — "How do we keep critical business operations running during a
disruption?"

**🖥️ Disaster Recovery** — "How do we restore IT systems and infrastructure after a disruption?"

They work together, but they're not identical.

### 🪨 Example

A company's main server room catches fire. 🔥

**Business Continuity** — The company says: "Customers still need to place orders." So employees
use: 🖥️ Backup systems / alternate processes to keep the business operating.

**Disaster Recovery** — Meanwhile, the IT team works on: "How do we restore the damaged systems?"

So:

> **Business Continuity = Keep the business going.**
> **Disaster Recovery = Restore systems.**

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    F["🔥 Server room<br/>catches fire"]
    F --> BC["🏢 Business Continuity<br/>'customers still need<br/>to place orders'"]
    F --> DR["🖥️ Disaster Recovery<br/>'how do we restore<br/>the damaged systems?'"]
    BC --> KG["✅ Business<br/>keeps going"]
    DR --> RS["🔧 Systems get<br/>restored"]

    style F fill:#3a1a20,stroke:#E03131,color:#fff
    style BC fill:#12243f,stroke:#5C7CFA,color:#fff
    style DR fill:#3a2c12,stroke:#F08C00,color:#fff
    style KG fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style RS fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

---

## ⏱️ Connection to RTO and MTD

Remember what you learned earlier:

**RTO** — How quickly should we recover?

**MTD** — How long can we tolerate the disruption?

Business continuity strategies are designed to help the organization operate within those
requirements.

For example:

> MTD = 8 hours, RTO = 4 hours

The organization needs a continuity/recovery strategy that can meet those requirements.

---

## 🎯 Exam-Ready Answer

If the exam asks:

> "What keeps running during a disruption?"

Answer:

> **Business continuity keeps critical business functions and services operating during and
> after a disruption, using predefined strategies and alternate methods when normal operations are
> unavailable.**

**Caveman version:**

> "Cave breaks, but tribe must keep eating, drinking, treating injuries, and doing the most
> important work."

That's business continuity.

### 🧠 Remember

**BC** = Keep critical BUSINESS running.

**DR** = Recover IT/system capabilities.

---

<div align="center">
<sub><a href="../README.md">← Back to 02 · Security Governance</a></sub>
</div>
