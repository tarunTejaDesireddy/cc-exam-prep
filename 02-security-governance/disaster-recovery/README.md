<div align="center">

<img src="../assets/module-02-banner.svg" alt="02 · Security Governance" width="100%">

# 🔧 Disaster Recovery

### *Getting the systems back AFTER — recovery sites, backup types, and how to test*

[![Module](https://img.shields.io/badge/Module-02_Security_Governance-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-2%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~13%20min-57606A?style=flat-square)](#)

📌 *Rank the recovery sites cold → mirrored, tell incremental from differential, and order the five test types.*

</div>

---

## 🧸 The big idea

A restaurant's kitchen burns down. How fast it can cook again depends on what backup it prepared
**beforehand**:

- An **empty rented room** with power and water → weeks to fit out. **Cold.**
- A room **with ovens already installed**, but no food → days. **Warm.**
- A **fully stocked kitchen** ready to cook → hours. **Hot.**
- A **second restaurant already serving customers** → almost no gap at all. **Mirrored.**

That's disaster recovery: **restoring the systems after a disruption**. It's the technical subset
of business continuity. Three ordered lists carry almost all the marks — **recovery sites**,
**backup types** and **test types** — and each is a trade-off: **faster or more rigorous always
costs or disrupts more.**

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Disaster recovery (DR)** | Restoring systems and operations **after** a disruption. |
| **DRP** | Disaster Recovery Plan. |
| **Cold site** | Space, power, cooling, network. **No equipment, no data.** |
| **Warm site** | Space **+ equipment**; data restored when needed. |
| **Hot site** | Fully equipped, **data current**, ready almost immediately. |
| **Mirrored site** | A full duplicate **running in parallel**. Near instant. |
| **Reciprocal agreement** | Using another organisation's facilities. Cheap, **unreliable**. |
| **Full backup** | Everything, every time. |
| **Incremental** | Changed since the **last backup of any kind**. |
| **Differential** | Changed since the **last full backup**. |
| **Parallel test** | Recovery brought up **while production keeps running**. |
| **Full interruption test** | Production **switched off**; run from recovery. |

---

## 🔍 The explanation

### Recovery sites — temperature = readiness

<p align="center"><img src="diagrams/1.svg" alt="A cold site is an empty room with power and network taking weeks and is cheapest; a warm site adds equipment with data restored later, taking hours to days; a hot site has equipment and current data, taking minutes to hours; a mirrored site is a duplicate already running, near instant and most expensive" width="820"></p>

- **A cold site is an empty room.** No servers, no data. People overestimate it.
- **Match the site to the RTO** (the maximum time allowed to get back up). A 4-hour target needs
  hot or mirrored; a function that can be down for a week doesn't justify a hot site.
- **Reciprocal agreement** — "use each other's building if disaster strikes". Cheap but
  **unreliable**: the partner may be hit by the same regional event or lack capacity.

### Backup types — what's in each, and what a restore needs

<p align="center"><img src="diagrams/2.svg" alt="With incremental backups, each day holds only that day's changes, so restoring Wednesday needs the full backup plus Monday, Tuesday and Wednesday; with differential backups, each day holds all changes since the full, so restoring Wednesday needs the full plus only Wednesday's differential" width="620"></p>

| | Backs up | Backup speed | Restore needs |
|---|---|---|---|
| **Full** | Everything | Slowest | The full only |
| **Incremental** | Since the **last backup of any kind** | **Fastest** | Full + **every** incremental since |
| **Differential** | Since the **last full** | Medium, grows each day | Full + **only the latest** differential |

> [!IMPORTANT]
> **Incremental: fast to make, slow to restore, need them all. Differential: slower to make, fast
> to restore, need only the newest.**

> ⚠️ **A backup that's never been test-restored is an assumption.** A green "job succeeded" report
> doesn't prove the data comes back.

### Testing — rigour and risk rise together

<p align="center"><img src="diagrams/3.svg" alt="The test ladder runs from read-through on paper, to a walkthrough where the team talks it through, to a simulation acted out with production untouched, to a parallel test where recovery comes up while production keeps running, to a full interruption test where production is switched off" width="880"></p>

| Test | What happens | Disruption | Confidence |
|---|---|---|---|
| **Read-through / checklist** | People review the plan on paper | None | Lowest |
| **Walkthrough / tabletop** | The team **talks** through a scenario | None | Low–medium |
| **Simulation** | The scenario is **acted out**; production untouched | Low | Medium |
| **Parallel** | Recovery systems up **while production runs** | Medium | High |
| **Full interruption** | **Production off**; run from recovery | **Highest** | **Highest** |

> 🎯 **Parallel keeps production running. Full interruption switches it off.** That's the pair the
> exam tests.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Disaster recovery** | Restore systems **after**. | **Business continuity** — keep running **during**. DR ⊂ BC. |
| **Cold site** | No equipment. | **Warm site** — equipment, no current data. |
| **Warm site** | Equipment; data restored later. | **Hot site** — data already current. |
| **Hot site** | Ready in minutes–hours. | **Mirrored** — already running. |
| **Incremental** | Since the last backup of **any** kind. | **Differential** — since the last **full**. |
| **Parallel test** | Production **keeps running**. | **Full interruption** — production **off**. |
| **Walkthrough** | Team **talks** it through. | **Simulation** — it's **acted out**. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** a cold site sounds like a basic data centre you could bring up in a day.
>
> **On the exam:** it's an **empty room with power**. Weeks.

> [!WARNING]
> **In the job:** backups are fine because the jobs report success.
>
> **On the exam:** **backups must be test-restored.**

> [!WARNING]
> **In the job:** nobody runs a full interruption test — too risky.
>
> **On the exam:** it's the **most rigorous** test — the right answer when the question asks for
> the highest confidence. Its risk is acknowledged, not disqualifying.

---

## 🧠 How to remember it

**Temperature = readiness.** Cold = empty room. Warm = kit, no data. Hot = ready. Mirrored =
already running.

**Incremental = since the last backup. Differential = since the last full.**

**Testing ladder: Read · Talk · Act · Parallel · Interrupt.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** An organisation must resume operations within four hours of a disaster. Which recovery
site is MOST appropriate?

- **A.** Cold site
- **B.** Warm site
- **C.** Hot site
- **D.** Reciprocal agreement

<details>
<summary><b>Answer</b></summary>

**C — hot site.** Equipped with current data; operational in minutes to hours.

- **A** — an empty room; weeks.
- **B** — needs data restoration; typically hours to days, likely over four hours. The strongest
  distractor.
- **D** — cheap and unreliable; no guaranteed capacity.

</details>

**Q2.** After the last full backup, which backup type needs the fewest sets to do a full restore?

- **A.** Incremental, because each set is small
- **B.** Differential, because only the most recent differential is needed
- **C.** Both require the same number
- **D.** Full backups only, because incremental and differential cannot be restored

<details>
<summary><b>Answer</b></summary>

**B.** Full + one differential = two sets.

- **A** confuses small-and-fast-to-make with simple-to-restore — incrementals need them *all*.
- **C** — the restore difference is the whole trade-off.
- **D** — both are restorable.

</details>

**Q3.** In which test does production keep running while recovery systems are brought online?

- **A.** Walkthrough
- **B.** Simulation
- **C.** Parallel test
- **D.** Full interruption test

<details>
<summary><b>Answer</b></summary>

**C — parallel.**

- **A** is a discussion; no systems.
- **B** acts out a scenario without bringing recovery into real operation.
- **D** switches production **off**.

</details>

**Q4.** What does a cold site provide?

- **A.** Fully configured systems with current data, ready immediately
- **B.** Hardware installed but requiring data restoration
- **C.** Space, power, cooling and connectivity, but no equipment or data
- **D.** A duplicate environment running in parallel with production

<details>
<summary><b>Answer</b></summary>

**C.** An empty, serviced room.

- **A** is hot. **B** is warm. **D** is mirrored.

</details>

**Q5.** Why must backups be periodically test-restored?

- **A.** To comply with data retention regulations
- **B.** Because a successful backup job does not prove the data can actually be recovered
- **C.** To reduce the storage space backups consume
- **D.** Because backups expire after a fixed period

<details>
<summary><b>Answer</b></summary>

**B.** Media fails, jobs skip files, keys go missing. Only a restore proves recovery.

- **A** is about how long data is kept.
- **C** — testing uses resources, it doesn't save them.
- **D** isn't generally true.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**3-2-1 backups:** three copies, two media types, one off-site — now often **3-2-1-1-0**: plus one
**immutable/offline** copy and **zero** restore errors. Ransomware crews hunt and encrypt backups
first; a backup an attacker can delete isn't a backup.

**Replication is not backup.** Replication copies *now* — including deletions, corruption and
ransomware encryption, seconds later. Backups give you a point in time to go back *to*. You need
both.

**Cloud blurs the temperatures.** Infrastructure-as-code can spin up a recovery environment on
demand: near-warm readiness at near-cold cost. A DNS health check fails traffic over to the standby
region — and the DNS record's **TTL** caps how fast that can happen. The automation itself must be
tested, or it drifts.

**The DR plan must survive the disaster** — including the backup encryption keys. Keeping the only
copy of the key in a vault on the downed infrastructure is a classic failure.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **COLD** (empty room, weeks, cheapest) → **WARM** (equipment, hours–days) → **HOT** (current data, minutes–hours) → **MIRRORED** (running duplicate, instant, dearest). **Match the site to the RTO.**
- **Reciprocal agreement = cheap and unreliable.**
- **INCREMENTAL = since last backup** (fast backup, slow restore, need ALL). **DIFFERENTIAL = since last full** (need only the latest).
- **Tests: read-through → walkthrough → simulation → PARALLEL (production runs) → FULL INTERRUPTION (production off).**
- **Backups must be test-restored.**

---

<div align="center">
<sub><a href="../README.md">← back to 02 · Security Governance</a> &nbsp;·&nbsp; <a href="../security-awareness-training/">next: Security awareness training →</a></sub>
</div>
