<div align="center">

<img src="assets/module-06-banner.svg" alt="06 · Term Bank" width="100%">

# 🚨 Domain 2 terms · BC, DR & Incident Response

[![Module](https://img.shields.io/badge/Module-06_Term_Bank-0d2b33?style=flat-square)](README.md)
[![Domain](https://img.shields.io/badge/Domain-2%20·%2010%25-5C7CFA?style=flat-square)](../02-bc-dr-ir/README.md)
[![Terms](https://img.shields.io/badge/Terms-52-57606A?style=flat-square)](#)

📌 *The smallest domain and the quickest to secure. RTO vs RPO and the incident phase order carry most of the marks.*

</div>

---

## 🏷️ Incident terminology

| Term | Meaning |
|---|---|
| **Event** | Any **observable occurrence** in a system or network. **Neutral** — most are routine |
| **Alert** | A notification that an event **may** require attention. A claim, not a fact |
| **Adverse event** | An event with a negative consequence |
| **Incident** | An event that **actually or potentially** jeopardises C, I or A, or violates policy |
| **Breach** | An incident in which protected data was **actually** accessed, disclosed or taken |
| **Intrusion** | Unauthorised **access** to a system |
| **Compromise** | A system or account under unauthorised control |
| **Near miss** | A genuine threat that was prevented or failed, still worth learning from |
| **False positive** | An alert for something that was not a problem |
| **Triage** | Assessing and prioritising alerts and incidents |
| **Escalation** | Raising an incident to higher authority or expertise |

---

## 🚑 Incident response

| Term | Meaning |
|---|---|
| **Incident response plan (IRP)** | The documented process for handling incidents |
| **CSIRT / CIRT** | Computer Security Incident Response Team |
| **Playbook** | A procedure for one specific incident type |
| **Phase 1 · Preparation** | Everything **before** an incident: plan, team, tools, training, exercises |
| **Phase 2 · Detection and analysis** | Identifying that an incident is occurring and determining its nature |
| **Phase 3 · Containment** | **Limiting the damage** and stopping the spread |
| **Phase 4 · Eradication** | **Removing the cause** — malware, attacker access, the vulnerability |
| **Phase 5 · Recovery** | **Restoring** systems to normal and verifying they are clean |
| **Phase 6 · Post-incident activity** | The **lessons-learned** review. Blameless. Feeds back into preparation |
| **Short-term containment** | Immediate action — isolate a host, block an address, disable an account |
| **Long-term containment** | Temporary fixes allowing business to continue while a proper fix is prepared |
| **The first action** | **Follow the documented plan and notify.** Containment is a phase, not a first move |
| **Chain of custody** | An unbroken documented record of who handled evidence, when, and why |
| **Order of volatility** | Collect the **most perishable evidence first** — memory before disk |
| **Working copy** | Analyse a copy; preserve the original untouched |

---

## 📊 Business impact analysis

| Term | Meaning |
|---|---|
| **BIA** | Identifying critical functions and the **impact** of losing them. **Comes first** |
| **Critical business function** | A function the organisation cannot operate without for long |
| **Impact** | The harm from a disruption — financial, operational, reputational, legal, safety |
| **Dependency** | Something a function relies on — a system, supplier, person, or facility |
| **Single point of failure** | A dependency whose loss stops the function entirely |
| **BIA vs risk assessment** | BIA asks **"what if it stops"** (cause-agnostic). Risk assessment asks **"what could happen"** (threats and likelihood) |
| **BIA outputs** | Critical functions, impact over time, **RTO and RPO**, dependencies |

---

## ⏱️ The time metrics

| Term | Meaning |
|---|---|
| **RTO** — Recovery Time Objective | The target **time to restore** a function. Looks **forward** |
| **RPO** — Recovery Point Objective | The maximum acceptable **data loss**, as a period. Looks **backward** |
| **MTD** — Maximum Tolerable Downtime | The **longest** a function can be down before unacceptable harm |
| **WRT** — Work Recovery Time | Time **after systems are back** to catch the work up |
| **The constraint** | **RTO ≤ MTD.** And RTO + WRT must fit inside MTD |
| **RPO's determinant** | **Backup frequency.** Nightly backups → RPO of up to 24 hours |
| **MTBF** — Mean Time Between Failures | Average operating time between failures. A **reliability** measure. **Hardware, not a recovery objective** |
| **MTTR** — Mean Time To Repair | Average time to fix a failed component. A **maintainability** measure |

---

## 🏃 Business continuity

| Term | Meaning |
|---|---|
| **Business continuity (BC)** | Keeping critical functions operating **DURING** a disruption |
| **BCP** | The documented business continuity plan |
| **Disaster recovery (DR)** | Restoring normal operations **AFTER**. A **subset** of BC |
| **Scope difference** | BC covers the **whole business** — people, process, premises, suppliers. DR is mainly **IT** |
| **Manual workaround** | Carrying out a process **without the usual systems**. A continuity measure |
| **Alternate site** | Another location from which work can continue |
| **Succession planning** | Ensuring key roles can be filled if a person is unavailable. **A continuity control** |
| **Crisis management** | The wider organisational response — decisions, communications, stakeholders |
| **Communications plan** | Who is told what, by whom, through which channel. **One authorised spokesperson** |
| **Activation criteria** | **Who decides** the plan is invoked, and on what basis |
| **Resilience** | The ability to absorb disruption and keep functioning |
| **The first priority** | **Human safety.** Evacuation and accounting for staff, before assets or data |

---

## 🔧 Disaster recovery

| Term | Meaning |
|---|---|
| **DRP** | The documented disaster recovery plan |
| **Cold site** | Space, power, cooling, connectivity. **No equipment, no data.** Weeks. Cheapest |
| **Warm site** | Space **and equipment**; data restored when needed. Hours to days |
| **Hot site** | Fully equipped, **data current**. Minutes to hours |
| **Mirrored site** | A full duplicate **running in parallel**. Near instant. Dearest |
| **Reciprocal agreement** | Using another organisation's facilities. Cheap and **unreliable** |
| **Site selection rule** | **Match the site type to the RTO** |
| **Full backup** | Everything, every time. Slow backup, **fast restore** — one set needed |
| **Incremental backup** | Changed since the **last backup of any kind**. Fast backup, **slow restore — need them all** |
| **Differential backup** | Changed since the **last full**. Medium backup, **fast restore — need only the latest** |
| **3-2-1 rule** | Three copies, two media types, one off-site |
| **Read-through / checklist test** | Individuals review the plan on paper. No disruption |
| **Walkthrough / tabletop** | The team **talks through** a scenario together |
| **Simulation** | The scenario is **acted out**; production untouched |
| **Parallel test** | Recovery systems brought up **while production keeps running** |
| **Full interruption test** | **Production switched off**; run from recovery. Most rigorous, most risky |
| **Backup verification** | **Test-restore them.** A successful job report proves nothing |

---

<div align="center">
<sub><a href="README.md">← back to 06 · Term Bank</a> &nbsp;·&nbsp; <a href="domain-03-terms.md">Domain 3 terms →</a></sub>
</div>
