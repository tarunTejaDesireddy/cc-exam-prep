<div align="center">

<img src="../assets/module-02-banner.svg" alt="02 · Security Governance" width="100%">

# 📊 Business Impact Analysis

### *Before you plan for a disruption, find out what it would actually cost you*

[![Module](https://img.shields.io/badge/Module-02_Security_Governance-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-2%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~11%20min-57606A?style=flat-square)](#)

📌 *The BIA comes FIRST, it's cause-agnostic (unlike a risk assessment), and it produces the RTO and RPO targets.*

</div>

---

## 🧸 The big idea

Before buying a generator for power cuts at home, you'd list what actually matters and how long you
could live without each:

- **Fridge** — food spoils in about 4 hours. Critical.
- **Phone charging** — you can manage for a day.
- **TV** — you'd survive weeks.

Only **after** that ranking do you decide what generator to buy. And notice: it doesn't matter
**why** the power went off — storm, fault or blown fuse — the fridge is off either way.

That's a **business impact analysis (BIA)**: identify the organisation's critical functions, work
out what it costs when each stops, and set how fast each must come back. **Ranking first, planning
second — never the other way round.**

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **BIA** | Business Impact Analysis — identifies critical functions and the **impact** of losing them. |
| **Critical business function** | A function the organisation can't operate without for long. |
| **Criticality** | How essential a function is. Drives **availability** decisions. |
| **Impact** | The harm from a disruption — financial, operational, reputational, legal, safety. |
| **RTO / RPO** | Recovery time and recovery point targets — **produced by** the BIA. |
| **MTD** | Maximum Tolerable Downtime — the limit before unacceptable harm. |
| **Dependency** | Something a function relies on — a system, supplier, person or facility. |
| **Single point of failure** | A dependency with no alternative; losing it stops the function. |

---

## 🔍 The explanation

### Where the BIA sits

<p align="center"><img src="diagrams/1.svg" alt="First the BIA finds what matters and what an outage costs, then a strategy decides how to meet the targets, then the continuity and disaster recovery plans are written, then they are tested, with lessons feeding back into the BIA" width="760"></p>

> 🎯 **"What comes FIRST in business continuity planning?"** → the **BIA**. You can't plan recovery
> for functions you haven't identified and ranked.

### What the BIA does

<p align="center"><img src="diagrams/2.svg" alt="The BIA identifies business functions, assesses the impact of losing each over time, prioritises them by criticality, maps their dependencies, and sets RTO and RPO targets for each" width="880"></p>

### Impact grows over time

The harm from an outage isn't constant — which is what makes prioritising possible:

<p align="center"><img src="diagrams/3.svg" alt="For order processing, one hour down means orders queue, four hours means customers notice and some leave, one day means real revenue loss and reputation damage, one week means penalties and customers lost for good" width="820"></p>

Impact is measured across several dimensions:

| Dimension | Examples |
|---|---|
| **Financial** | Lost revenue, penalties, recovery costs |
| **Operational** | Can't deliver, growing backlog |
| **Reputational** | Customer confidence, press coverage |
| **Legal / regulatory** | Breached obligations, fines |
| **Safety** | Where systems affect physical safety |

> ⚠️ **The BIA is a business exercise.** Function owners know what their process costs when it
> stops. IT maps the systems each function depends on — it can't supply the business impact alone.

### Dependencies are where the surprises live

A function depends on far more than its main application — upstream systems, suppliers, specific
people, facilities, connectivity. **Dependency mapping finds single points of failure nobody knew
about**: one spreadsheet, one supplier, one person with undocumented knowledge.

### BIA vs risk assessment

Both produce prioritised lists — the exam loves separating them. The key difference: **the BIA
doesn't care what caused the outage.**

<p align="center"><img src="diagrams/4.svg" alt="Whether caused by a fire, a flood or a failed disk, order processing is down, and the BIA only asks what that costs and how fast it must come back" width="520"></p>

| | **Risk assessment** | **BIA** |
|---|---|---|
| Asks | What **could happen**, and how likely? | What if this function **stops**? |
| Focus | **Threats** and **likelihood** | **Impact** and **duration** |
| Cares about the cause? | **Yes** | **No** — cause-agnostic |
| Produces | Prioritised risks and treatments | Critical functions, RTO, RPO, dependencies |

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **BIA** | Impact of losing functions. Cause-agnostic. | **Risk assessment** — threats and likelihood. |
| **BIA** | Comes **first**. | The **continuity plan**, built from the BIA's findings. |
| **Criticality** | How essential → drives **availability**. | **Sensitivity** — how damaging disclosure is → drives confidentiality. |
| **Impact** | The harm from disruption. | **Likelihood** — which the BIA doesn't assess. |
| **RTO / RPO** | **Outputs** of the BIA. | Inputs to it. |
| **Dependency** | Something a function relies on. | **Single point of failure** — a dependency with no alternative. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** IT sets recovery priorities, because IT knows which systems matter.
>
> **On the exam:** the BIA is a **business** exercise. Function owners state the impact; IT maps
> dependencies.

> [!WARNING]
> **In the job:** you'd start continuity work by designing the recovery architecture.
>
> **On the exam:** **the BIA comes first.** Designing recovery before knowing what must recover,
> and how fast, protects the wrong things.

> [!WARNING]
> **In the job:** you plan for what's most likely to go wrong.
>
> **On the exam:** the BIA is **cause-agnostic**. Likelihood is the risk assessment's job.

---

## 🧠 How to remember it

**BIA first, plans second.**

**Risk assessment: "what could happen?" BIA: "what if it stops?"**

**The BIA doesn't care why it broke** — fire, flood or failed disk, it's down either way.

**The BIA produces RTO and RPO.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** What is the FIRST step in developing a business continuity programme?

- **A.** Selecting an alternate recovery site
- **B.** Conducting a business impact analysis
- **C.** Writing the disaster recovery plan
- **D.** Purchasing backup infrastructure

<details>
<summary><b>Answer</b></summary>

**B — the BIA.** It sets the priorities and targets everything else is built to meet.

- **A** — choosing a site without knowing the RTO is guessing.
- **C** — can't be written sensibly without knowing what must recover, and how fast.
- **D** — spending before knowing what needs protecting.

</details>

**Q2.** What distinguishes a BIA from a risk assessment?

- **A.** A BIA identifies threats; a risk assessment identifies impacts
- **B.** A BIA focuses on the impact of disruption regardless of cause; a risk assessment focuses on threats and their likelihood
- **C.** They are the same process under different names
- **D.** A BIA is technical; a risk assessment is financial

<details>
<summary><b>Answer</b></summary>

**B.** The BIA is cause-agnostic.

- **A** reverses them.
- **C** loses a distinction the exam tests directly.
- **D** invents a split — the BIA is a *business* exercise.

</details>

**Q3.** Which outputs does a BIA produce?

- **A.** A list of threats ranked by likelihood
- **B.** Critical business functions, impact over time, RTO and RPO targets, and dependencies
- **C.** A completed disaster recovery plan
- **D.** An inventory of all hardware assets

<details>
<summary><b>Answer</b></summary>

**B.**

- **A** is a **risk assessment** output.
- **C** is written afterwards, from the BIA.
- **D** is an asset inventory — a different exercise.

</details>

**Q4.** Who should provide the impact information during a BIA?

- **A.** The IT department, since it understands the systems
- **B.** Business function owners, who understand what their processes cost when they stop
- **C.** External auditors, for independence
- **D.** The information security team

<details>
<summary><b>Answer</b></summary>

**B.** Only the people running a process know what its loss costs the business.

- **A** — IT's contribution is dependency mapping.
- **C** — auditors check the process; supplying input would compromise independence.
- **D** facilitates, but doesn't supply business impact figures.

</details>

**Q5.** A BIA finds order processing can tolerate at most four hours of downtime. What does this
figure primarily inform?

- **A.** The data classification level of order records
- **B.** The recovery time objective and the recovery strategy chosen to meet it
- **C.** The password policy for the order system
- **D.** The likelihood of an outage occurring

<details>
<summary><b>Answer</b></summary>

**B.** Four hours drives an RTO inside that window — and so whether a warm or hot site is needed.

- **A** is about disclosure (confidentiality), not downtime.
- **C** is access control.
- **D** is likelihood — the BIA doesn't assess it.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Everyone says their function is critical.** Every department asks for a one-hour RTO. Good
practice shows the cost of each recovery tier and forces a ranking — criticality only means
something if some functions are *less* critical.

**Dependency mapping is where the value is.** Interviews find the dependencies people remember. A
CMDB holds the documented ones (and drifts). Distributed tracing (Datadog, AWS X-Ray, Jaeger)
observes the real call graph at runtime — and finds the tax API a departed developer wired in six
months ago.

**Concentration risk.** Many "independent" services turn out to share one cloud region or CDN.
A dependency map that stops at "our cloud provider" misses that.

**The BIA has a shelf life** — refresh it periodically and after mergers, major system changes or
restructures.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **The BIA comes FIRST** — before continuity and recovery plans.
- **BIA = "what if it STOPS?"** — **cause-agnostic**. Risk assessment = threats and **likelihood**.
- **BIA outputs:** critical functions · impact over time · **RTO and RPO** · dependencies.
- **Impact grows with duration.** The BIA is a **business** exercise — function owners supply impact.

---

<div align="center">
<sub><a href="../README.md">← back to 02 · Security Governance</a> &nbsp;·&nbsp; <a href="../rto-rpo-mtd/">next: RTO, RPO and MTD →</a></sub>
</div>
