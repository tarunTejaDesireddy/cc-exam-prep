<div align="center">

<img src="assets/rto-rpo-mtd-banner.svg" alt="RTO vs RPO vs MTD — data loss, recovery time, and the maximum tolerable downtime" width="100%">

# ⏱️ RTO vs RPO vs MTD — Caveman Style

[![Module](https://img.shields.io/badge/Module-02_Security_Governance-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_2-17.3%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![RPO](https://img.shields.io/badge/💾-RPO_Data_Loss-2F9E44?style=flat-square&labelColor=1d3a2a)](#-1-rpo--recovery-point-objective)
[![RTO](https://img.shields.io/badge/⏱️-RTO_Recovery_Time-F08C00?style=flat-square&labelColor=3a2c12)](#-2-rto--recovery-time-objective)
[![MTD](https://img.shields.io/badge/☠️-MTD_Max_Downtime-E03131?style=flat-square&labelColor=3a1a20)](#-3-mtd--maximum-tolerable-downtime)

</div>

---

These three are **very commonly confused**, especially **RTO and RPO**.

The easiest way to learn them is to put them on a **timeline**.

## 🪨 First: Imagine the cave breaks

Grog's computer system suddenly stops working at:

> 💥 **12:00 — SYSTEM FAILURE**

Now the tribe needs to recover.

## ⏱️ The Timeline

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    F["💥 12:00<br/>System failure"] -->|"RTO"| REC["✅ System<br/>recovered"]
    F -->|"MTD"| LIMIT["☠️ Maximum time the<br/>tribe can survive<br/>without service"]
    REC -.->|"must land<br/>before"| LIMIT

    style F fill:#3a1a20,stroke:#E03131,color:#fff
    style REC fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style LIMIT fill:#26292e,stroke:#868E96,color:#fff
```

But **RPO is different** because it looks **backward from the failure point**:

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    RPO["💾 RPO<br/>looks backward<br/>into the past"] -.->|"data we're<br/>willing to lose"| F["💥 Failure"]
    F -->|"RTO<br/>looks forward"| REC["✅ Recovery"]

    style RPO fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style F fill:#3a1a20,stroke:#E03131,color:#fff
    style REC fill:#3a2c12,stroke:#F08C00,color:#fff
```

This is the key:

> 🔵 **RPO looks BACKWARD.**
> 🟢 **RTO looks FORWARD.**
> 🔴 **MTD is the maximum acceptable total downtime.**

---

## 💾 1. RPO — Recovery Point Objective

### Think: DATA

RPO asks:

> **"How much data can we afford to lose?"**

It is measured in **time**.

Suppose:

> **RPO = 1 hour**

The system fails at:

> 💥 12:00

The organization wants recovery to use data from approximately:

> 🕚 11:00 or later

So it is prepared to lose approximately **up to 1 hour of data**, depending on the recovery setup.

**Caveman question:** "How much of my recent food/data can I afford to lose?"

**Memory:** 💾 **RPO = DATA LOSS**

---

## 🏃 2. RTO — Recovery Time Objective

Now ask a different question:

> **"How quickly must the system be restored?"**

Suppose:

> **RTO = 4 hours**

System fails: 💥 12:00

The target is to recover by approximately: 🕓 **16:00**

**Caveman question:** "How quickly do I need my cave working again?"

**Memory:** ⏱️ **RTO = RECOVERY TIME**

---

## ☠️ 3. MTD — Maximum Tolerable Downtime

MTD asks:

> **"What is the maximum amount of time the business can tolerate being unavailable before the
> consequences become unacceptable?"**

Suppose:

> **MTD = 8 hours**

If the system fails at: 💥 12:00

The organization must not allow the disruption to continue beyond approximately: ☠️ **20:00**

After that point, the consequences become unacceptable.

**Caveman question:** "How long can my tribe survive without this before things become
unacceptable?"

**Memory:** ☠️ **MTD = MAXIMUM DOWNTIME**

---

## 🎯 Put all three on one timeline

Suppose:

- **RPO = 1 hour**
- **RTO = 4 hours**
- **MTD = 8 hours**

The system fails at **12:00**.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    RPO["💾 11:00<br/>Recovery point /<br/>data boundary"] -.->|"RPO = 1h<br/>data we accept<br/>losing"| F["💥 12:00<br/>Failure"]
    F -->|"RTO = 4h"| RT["✅ 16:00<br/>Target recovery"]
    F -->|"MTD = 8h"| MT["☠️ 20:00<br/>Max tolerable<br/>downtime"]

    style RPO fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style F fill:#3a1a20,stroke:#E03131,color:#fff
    style RT fill:#3a2c12,stroke:#F08C00,color:#fff
    style MT fill:#26292e,stroke:#868E96,color:#fff
```

So:

**💾 RPO** — Looks **BACKWARD** from the failure. "How much data can we lose?"

**⏱️ RTO** — Moves **FORWARD** from the failure. "How quickly should we recover?"

**☠️ MTD** — Also moves **FORWARD**, representing the **absolute maximum tolerable duration of
the disruption**. "How long can we tolerate this?"

---

## ⚠️ The Golden Rule: RTO ≠ RPO

This is where exam questions try to trick you.

❌ **Wrong:** RPO = how quickly to recover. No!

✅ **Correct:** **RPO = how much data loss is acceptable**

❌ **Wrong:** RTO = how much data can be lost. No!

✅ **Correct:** **RTO = how quickly the system should be restored**

---

## 🧠 Easy Memory Trick

Look at the letters:

**RPO → P = Point** — 💾 **Recovery Point Objective** — Think: "What point in time do I need to
recover my data to?"

**RTO → T = Time** — ⏱️ **Recovery Time Objective** — Think: "How much time do I have to
recover?"

**MTD → Maximum Time** — ☠️ **Maximum Tolerable Downtime** — Think: "What's the longest we can
tolerate being down?"

---

## 🏢 Real-World Example

Imagine an online bank.

The bank determines:

> **RPO = 15 minutes**

It can tolerate losing at most about **15 minutes of recent transaction data**.

Then:

> **RTO = 1 hour**

The bank wants the service restored within **1 hour**.

And:

> **MTD = 4 hours**

The bank absolutely cannot tolerate the service being unavailable for more than **4 hours**.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    RPO["💾 RPO = 15 min<br/>data we accept<br/>losing"] -.-> F["💥 Failure"]
    F -->|"RTO = 1 hour"| RT["✅ Target<br/>recovery"]
    F -->|"MTD = 4 hours"| MT["☠️ Max tolerable<br/>downtime"]
    RT -.->|"RTO must land<br/>inside MTD"| MT

    style RPO fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style F fill:#3a1a20,stroke:#E03131,color:#fff
    style RT fill:#3a2c12,stroke:#F08C00,color:#fff
    style MT fill:#26292e,stroke:#868E96,color:#fff
```

The recovery target should be **inside the maximum tolerable downtime**.

A common relationship is:

> **RTO ≤ MTD**

If your target recovery time is longer than the maximum time the business can tolerate, your
recovery strategy isn't meeting the business requirement.

---

## 🎯 Exam Cheat Sheet

| Metric | Question | Direction | Remember |
| --- | --- | --- | --- |
| 💾 **RPO** | How much data can we lose? | ⬅️ Backward from failure | **DATA** |
| ⏱️ **RTO** | How quickly must we recover? | ➡️ Forward | **TIME TO RECOVER** |
| ☠️ **MTD** | How long can we tolerate the outage? | ➡️ Maximum forward limit | **MAX DOWNTIME** |

## 🪨 Final Caveman Memory

> 💾 **RPO:** "How much DATA can Grog lose?"
>
> ⏱️ **RTO:** "How FAST must Grog recover?"
>
> ☠️ **MTD:** "How LONG can Grog survive without it?"

### The one rule you should never forget

> **RPO = data loss. RTO = recovery time. MTD = maximum tolerable downtime.**

---

<div align="center">
<sub><a href="../README.md">← Back to 02 · Security Governance</a></sub>
</div>
