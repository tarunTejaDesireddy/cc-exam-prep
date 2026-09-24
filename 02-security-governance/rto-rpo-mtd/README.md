<div align="center">

<img src="../assets/module-02-banner.svg" alt="02 · Security Governance" width="100%">

# ⏱️ RTO, RPO and MTD

### *Three numbers, all in time — how long down, how much lost, how long we can survive*

[![Module](https://img.shields.io/badge/Module-02_Security_Governance-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-2%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~11%20min-57606A?style=flat-square)](#)

📌 *RTO = downtime (forward), RPO = data loss (backward), RTO must fit inside MTD, and backup frequency sets the RPO.*

</div>

---

## 🧸 The big idea

You're writing an essay. Your laptop autosaves every 10 minutes. At 2:10 it crashes — the last
save was at 2:00.

- **How much work did you lose?** Ten minutes' worth — everything since 2:00. That backward-looking
  gap is the **RPO** (Recovery **Point** Objective).
- **How long until you're typing again?** You borrow a laptop and you're back at 3:10. That
  forward-looking gap is the **RTO** (Recovery **Time** Objective).
- **How long can you be stuck before it's a disaster?** The essay is due in 3 hours — past that,
  you fail. That hard ceiling is the **MTD** (Maximum Tolerable Downtime).

<p align="center"><img src="diagrams/1.svg" alt="The last save at 2:00, then RPO is the lost work up to the crash at 2:10, then RTO is the downtime until working again at 3:10, then WRT is the catch-up until fully normal" width="700"></p>

> **RPO looks backward (data lost). RTO looks forward (time down). MTD is the limit everything
> must fit inside.**

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **RTO** — Recovery Time Objective | Target **time to restore** a function after a disruption. |
| **RPO** — Recovery Point Objective | Maximum acceptable **data loss**, expressed as a period of time. |
| **MTD** — Maximum Tolerable Downtime | The longest a function can be down before **unacceptable harm**. Also MTO / MAD. |
| **WRT** — Work Recovery Time | After systems return: time to catch up the backlog and verify data. |
| **MTBF** — Mean Time Between Failures | How often hardware fails. A **reliability** measure. |
| **MTTR** — Mean Time To Repair | How long a repair takes. A **maintainability** measure. |

---

## 🔍 The explanation

### RTO — how long until we're back?

| | |
|---|---|
| Measures | **Downtime** |
| Direction | **Forward** from the disruption |
| Shortened by | Warm/hot standby sites, replication, automated failover |
| Cost | **Shorter RTO costs more** — standby capacity sits idle |

### RPO — how much data can we lose?

| | |
|---|---|
| Measures | **Data loss** |
| Direction | **Backward** to the last good copy |
| Set by | **Backup or replication frequency** |
| Cost | **Shorter RPO costs more** — more copying, storage, bandwidth |

> [!IMPORTANT]
> **Backup frequency sets the best possible RPO.** You can't recover to a point you never saved.
> Given a backup schedule and asked for the achievable RPO, the answer is the **interval between
> backups**.

| Backup frequency | Best achievable RPO |
|---|---|
| Continuous replication | Near zero |
| Every 15 minutes | 15 minutes |
| Hourly | 1 hour |
| Nightly | **24 hours** |
| Weekly | 7 days |

### MTD — the business's hard limit

MTD comes from the **business impact analysis** and is a **business** judgement: past it,
customers leave for good, regulations are breached, the business is genuinely threatened.

**RTO (plus the catch-up time) must fit inside the MTD** — otherwise the plan fails by definition:

<p align="center"><img src="diagrams/2.svg" alt="With an MTD of 8 hours, plan A with a 4 hour RTO plus 2 hours WRT totals 6 hours and fits, so it works; plan B with a 10 hour RTO exceeds the limit, so it fails" width="580"></p>

### Shorter always costs more

<p align="center"><img src="diagrams/3.svg" alt="Longer RTO and RPO with nightly backups and a cold site is cheap; shorter RTO and RPO with replication and a hot site is expensive; the right target is where protection cost roughly equals outage cost" width="700"></p>

**"Zero RTO and zero RPO" is never the answer.** Objectives are business decisions about acceptable
loss — the same cost-benefit logic as any other risk decision.

### The look-alikes: MTBF and MTTR

| | Measures | Is it a recovery objective? |
|---|---|---|
| **MTBF** | How **often** a component fails (reliability) | ❌ No — hardware engineering |
| **MTTR** | How **fast** it's repaired (maintainability) | ❌ No — hardware engineering |

They appear as distractors precisely because they look like RTO and RPO.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **RTO** | **Time to restore.** Forward. | **RPO** — **data loss**. The most-swapped pair in the domain. |
| **RPO** | **Data loss**, as time. Backward. Set by **backup frequency**. | **RTO**, set by how fast you can restore. |
| **MTD** | The **limit** the business can tolerate. | **RTO** — a **target** that must fit **inside** the MTD. |
| **WRT** | Catch-up **after** systems return. | **RTO**, which ends when systems are back. |
| **MTBF / MTTR** | Hardware reliability / repair time. | Business recovery objectives. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** RTO and RPO get used loosely, even interchangeably.
>
> **On the exam:** **RTO = downtime. RPO = data loss.** They're deliberately swapped in distractors.

> [!WARNING]
> **In the job:** the RPO is whatever the business asked for.
>
> **On the exam:** **RPO is capped by backup frequency.** Asking for a 1-hour RPO with nightly
> backups is a plan that can't deliver.

> [!WARNING]
> **In the job:** if the recovery can't meet the deadline, you renegotiate the deadline.
>
> **On the exam:** the MTD comes from **business impact** — you don't raise it to fit what the
> technology can do. You change the recovery strategy.

---

## 🧠 How to remember it

**The P in RPO is the Point you go back to. The T in RTO is the Time it Takes.**

**RPO looks backward; RTO looks forward.** The disruption is in the middle.

**RPO = backup frequency. RTO ≤ MTD.**

**MTBF and MTTR are hardware.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** Full backups run every night at midnight. A failure happens at 4pm. What is the maximum
data loss, and which metric describes it?

- **A.** 8 hours, describing the RTO
- **B.** 16 hours, describing the RPO
- **C.** 24 hours, describing the MTD
- **D.** 4 hours, describing the WRT

<details>
<summary><b>Answer</b></summary>

**B.** Midnight to 4pm = 16 hours of lost data. Data loss as time = RPO.

- **A** — wrong figure, and RTO is time to *restore*.
- **C** — 24 hours is the backup *interval*, and MTD is tolerable downtime.
- **D** — WRT is catch-up after restore.

</details>

**Q2.** Which statement correctly distinguishes RTO from RPO?

- **A.** RTO measures data loss; RPO measures downtime
- **B.** RTO measures how long restoration takes; RPO measures how much data can be lost
- **C.** They measure the same thing from different perspectives
- **D.** RTO applies to hardware; RPO applies to software

<details>
<summary><b>Answer</b></summary>

**B.** RTO forward (time), RPO backward (data).

- **A** is exactly reversed — the most common error.
- **C** loses the distinction.
- **D** invents a split.

</details>

**Q3.** A BIA sets a function's MTD at 6 hours. The proposed recovery strategy has an RTO of 8
hours. What is the problem?

- **A.** Nothing — the RTO exceeds the MTD, which provides a safety margin
- **B.** The RTO exceeds the MTD, so the strategy cannot meet the business requirement
- **C.** The RPO has not been specified
- **D.** The MTD should be increased to match the RTO

<details>
<summary><b>Answer</b></summary>

**B.** Recovery arriving after the limit has failed by definition. **RTO ≤ MTD.**

- **A** — exceeding the limit is a shortfall, not a margin.
- **C** — true, but not the problem described.
- **D** — the tempting one: bending the business requirement to fit the tech. MTD comes from
  business impact.

</details>

**Q4.** An organisation needs an RPO of 15 minutes. What does this require?

- **A.** A recovery site that can be operational within 15 minutes
- **B.** Backups or replication occurring at least every 15 minutes
- **C.** An MTD of no more than 15 minutes
- **D.** Staff available to restore systems within 15 minutes

<details>
<summary><b>Answer</b></summary>

**B.** RPO is bounded by how often you copy the data.

- **A** and **D** describe **RTO** (restore speed).
- **C** confuses MTD with data loss.

</details>

**Q5.** Which pair describes hardware reliability rather than recovery objectives?

- **A.** RTO and RPO
- **B.** MTD and WRT
- **C.** MTBF and MTTR
- **D.** RPO and MTD

<details>
<summary><b>Answer</b></summary>

**C.** Reliability and maintainability of components.

- **A**, **B** and **D** are all recovery concepts.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Stated RTOs are usually optimistic.** Real recoveries include corrupt backups, stale runbooks,
waiting for someone with the right credentials, and rebuilding dependencies in order. An untested
RTO is a hypothesis.

**How near-zero RPO is really achieved.** Databases stream their change logs (PostgreSQL's WAL,
MySQL's binlog) to a standby; storage snapshots copy only changed blocks; **synchronous
replication** confirms every write at both sites — near-zero loss, but added latency and a distance
limit.

**Replication faithfully copies ransomware too.** It protects against losing a site, not against
bad data. Immutable, isolated backups protect against that.

**Set objectives per function, not per organisation** — a few critical functions near zero, most in
hours, the rest in days. That tiering is what makes the cost defensible.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **RTO = time to restore (forward). RPO = data loss (backward).** P = the Point you go back to; T = the Time it Takes.
- **Backup frequency sets the achievable RPO.** Nightly backups → 24-hour RPO.
- **RTO (+WRT) must be ≤ MTD.** MTD is a business limit — don't raise it to fit the tech.
- **Shorter objectives cost more. Zero is never the answer.**
- **MTBF / MTTR = hardware reliability**, not recovery objectives.

---

<div align="center">
<sub><a href="../README.md">← back to 02 · Security Governance</a> &nbsp;·&nbsp; <a href="../business-continuity/">next: Business continuity →</a></sub>
</div>
