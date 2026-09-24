<div align="center">

<img src="../assets/module-02-banner.svg" alt="02 · Security Governance" width="100%">

# 🏃 Business Continuity

### *Keep the business running WHILE something is broken*

[![Module](https://img.shields.io/badge/Module-02_Security_Governance-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-2%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~11%20min-57606A?style=flat-square)](#)

📌 *Continuity = DURING, recovery = AFTER; DR is a subset of BC; and people always come first.*

</div>

---

## 🧸 The big idea

A café's card machine dies at lunchtime. Two different things happen:

1. **Right now**, staff take cash and write down IOUs so customers keep getting served. The café
   **keeps running while something is broken**. That's **business continuity**.
2. **Afterwards**, someone repairs or replaces the card machine so things go back to normal. That's
   **disaster recovery**.

<p align="center"><img src="diagrams/1.svg" alt="Normal operations hit a disruption; business continuity keeps serving during it with cash and IOUs; disaster recovery repairs or replaces the card machine afterwards; then operations are normal again" width="820"></p>

> **Continuity = keep working DURING. Recovery = restore AFTER.**

Notice continuity was **not technical** — cash and a notepad. Continuity asks *"how do we keep
taking orders while the system is down?"*, not *"how do we fix the system?"*

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Business continuity (BC)** | Keeping critical functions operating **during** a disruption. |
| **BCP** | Business Continuity Plan — the documented plan for doing that. |
| **Disaster recovery (DR)** | Restoring normal operations **after** a disruption. A **subset** of BC. |
| **Critical business function** | A function the organisation can't operate without for long. |
| **Manual workaround** | Doing the process without its usual systems. |
| **Alternate site** | Another location from which work can continue. |
| **Succession planning** | Making sure key roles can be filled if a person is unavailable. |
| **Crisis management** | The wider organisational response — executive decisions, stakeholders, reputation. |
| **Resilience** | The ability to absorb disruption and keep functioning. |

---

## 🔍 The explanation

### DR sits inside BC

<p align="center"><img src="diagrams/2.svg" alt="Business continuity covers the whole business: people and succession, premises and alternate sites, processes and manual workarounds, suppliers and communications; disaster recovery, covering IT systems and data, is a subset inside it" width="560"></p>

| | **Business continuity** | **Disaster recovery** |
|---|---|---|
| **When** | **During** | **After** |
| **Goal** | Keep critical functions running | Restore normal operations |
| **Scope** | The **whole business** | Mainly **IT systems and data** |
| **Typical answer** | Manual process, alternate site, relocated staff | Restore from backup, fail over, rebuild |

### What goes in a continuity plan

| Element | Why it matters |
|---|---|
| **Critical functions, prioritised** | Taken from the business impact analysis — what to keep running, in what order. |
| **Manual workarounds** | How to do each function without its usual systems. |
| **People and succession** | Who does each role — and who covers if they can't. |
| **Communications plan** | Staff, customers, regulators, suppliers, media — who, what, when. |
| **Alternate arrangements** | Another site, remote working, another team. |
| **Supplier arrangements** | Who to call, and what their contracts commit them to. |
| **Activation criteria** | **Who decides** the plan is invoked, and on what basis. |

Two things that quietly break real plans:

- **No named activator.** If nobody has authority to declare, everyone waits for someone else.
- **The plan lives on the server that's down.** Keep **offline and off-site** copies.

### People come first — always

<p align="center"><img src="diagrams/3.svg" alt="In an emergency, first ensure people's safety and evacuate, then account for everyone, then restore business functions, and only then systems and data" width="700"></p>

> [!CAUTION]
> **Human safety outranks everything, in every scenario.** Evacuate and account for staff before
> assets, data, evidence or operations.

People matter a second way too: a function only one person knows how to do is a **single point of
failure**. That's why **succession planning and cross-training are continuity controls**.

### Communications

| Audience | Needs |
|---|---|
| **Staff** | What happened, whether to come in, what to do |
| **Customers** | What's affected and when it'll be fixed |
| **Regulators** | Notification, where required |
| **Suppliers / partners** | What's needed from them |
| **Media** | **One authorised spokesperson** — never several |

Call trees go stale. A list nobody has checked in two years is a list of old phone numbers.

### Test it, maintain it

**An untested plan is an assumption.** Testing finds the dead phone numbers, the workaround that
depends on the broken system, and the fact nobody knows who activates it. Review it periodically
and after major changes.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Business continuity** | Keep functions running **DURING**. | **Disaster recovery** — restore **AFTER**. |
| **BC** | The **whole business**. | **DR** — mainly IT. DR is a **subset** of BC. |
| **BCP** | The plan. | **BIA** — the analysis the plan is built on. |
| **Manual workaround** | A **continuity** measure. | A recovery measure, which restores the systems. |
| **Crisis management** | Organisational response — decisions, stakeholders, reputation. | **Incident response** — handles the technical incident. |
| **Succession planning** | A **continuity** control. | A pure HR exercise. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** continuity planning means failover and replication.
>
> **On the exam:** that's **disaster recovery**. Continuity is broader and often **non-technical**
> — paper, phones, another office, another supplier.

> [!WARNING]
> **In the job:** in a big outage, restoring service feels like the priority.
>
> **On the exam:** **people first, always.**

> [!WARNING]
> **In the job:** the plan lives on the intranet with everything else.
>
> **On the exam:** it must be **available when systems are down** — offline and off-site copies.

---

## 🧠 How to remember it

**Continuity = DURING. Recovery = AFTER.**

**BC is the whole business; DR is the systems. DR sits inside BC.**

**People → business functions → systems.** Every time.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** What distinguishes business continuity from disaster recovery?

- **A.** Business continuity applies to natural disasters; disaster recovery applies to cyber attacks
- **B.** Business continuity keeps functions running during a disruption; disaster recovery restores normal operations afterwards
- **C.** Disaster recovery is broader and includes business continuity
- **D.** They are the same process with different names

<details>
<summary><b>Answer</b></summary>

**B.** During vs after.

- **A** invents a split by cause.
- **C** reverses it — **BC is broader**; DR is its subset.
- **D** loses the distinction.

</details>

**Q2.** A manufacturer's order system fails. Staff start recording orders on paper to enter
later. What does this represent?

- **A.** Disaster recovery, because operations continue
- **B.** A business continuity measure — a manual workaround keeping the function running
- **C.** Incident response containment
- **D.** A failure of the recovery plan

<details>
<summary><b>Answer</b></summary>

**B.** The function carries on by other means while the system is down.

- **A** would restore or fail over the system itself.
- **C** would limit a security incident's spread.
- **D** — a working workaround is the plan **succeeding**.

</details>

**Q3.** A fire alarm sounds during a major outage that staff are working to fix. What takes
priority?

- **A.** Completing the system restoration before evacuating
- **B.** Evacuating and accounting for all personnel
- **C.** Securing the server room before leaving
- **D.** Notifying customers of the outage

<details>
<summary><b>Answer</b></summary>

**B.** Human safety outranks everything.

- **A** keeps people in a possibly burning building for a server.
- **C** sounds conscientious but delays evacuation.
- **D** is a real duty that doesn't outrank getting people out.

</details>

**Q4.** Which element is MOST likely missing from a continuity plan that fails during a real
disruption?

- **A.** A list of critical business functions
- **B.** Current contact details and a named person authorised to activate the plan
- **C.** A description of the organisation's structure
- **D.** The names of the plan's authors

<details>
<summary><b>Answer</b></summary>

**B.** Contact lists go stale, and without a named activator everyone waits.

- **A** is almost always present — it comes straight from the BIA.
- **C** and **D** have no operational bearing.

</details>

**Q5.** Why is succession planning a business continuity control?

- **A.** It reduces recruitment costs
- **B.** It ensures critical roles can still be performed if key people are unavailable
- **C.** It is required by data protection regulations
- **D.** It improves employee retention

<details>
<summary><b>Answer</b></summary>

**B.** People are a dependency; a one-person function is a single point of failure.

- **A** and **D** are HR benefits, not the continuity reason.
- **C** invents a regulation.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Manual workarounds decay.** A decade later nobody remembers the paper process, and some
workflows (automated fraud checks, tax calculation) can't be done by hand at all. Sometimes the
honest finding is "there is no workaround" — which forces a short recovery target.

**Supplier concentration.** The backup supplier or shared alternate site often serves your
competitors too, and can't absorb everyone during a regional event. Guaranteed capacity costs more
than best-efforts.

**Plans encode assumptions.** Most assumed a disruption to a *place* and answered with "relocate
the people". The 2020 pandemic disrupted the *people* while the places were fine.

**Modern tooling:** mass-notification platforms (Everbridge, AlertMedia) replace call trees and
track who confirmed safe; VDI / cloud desktops turn "the alternate site" into "log in from
anywhere".

**The planning beats the plan.** Teams that have reasoned through three scenarios handle the
unplanned fourth far better than teams with an excellent unread document.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **CONTINUITY = DURING. RECOVERY = AFTER.** DR is a **subset** of BC.
- **BC = whole business** (people, process, premises, suppliers); often **non-technical** (paper, phones, another site).
- **PEOPLE FIRST, ALWAYS.**
- **Named activator + offline/off-site copies.** One authorised spokesperson.
- **Succession planning / cross-training = continuity controls.** An untested plan is an assumption.

---

<div align="center">
<sub><a href="../README.md">← back to 02 · Security Governance</a> &nbsp;·&nbsp; <a href="../disaster-recovery/">next: Disaster recovery →</a></sub>
</div>
