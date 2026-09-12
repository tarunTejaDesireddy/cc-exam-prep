<div align="center">

<img src="assets/module-06-banner.svg" alt="06 · Term Bank" width="100%">

# 🚨 Domain 2 terms · Security Governance

[![Module](https://img.shields.io/badge/Module-06_Term_Bank-0d2b33?style=flat-square)](README.md)
[![Domain](https://img.shields.io/badge/Domain-2%20·%2017.3%25-5C7CFA?style=flat-square)](../02-security-governance/README.md)
[![Terms](https://img.shields.io/badge/Terms-65-57606A?style=flat-square)](#)

📌 *GRC, redundancy (BC/DR), awareness, and measuring effectiveness. Incident response moved to Domain 5 — look there instead.*

</div>

---

## 🧭 GRC fundamentals

| Term | Meaning |
|---|---|
| **GRC** | Governance, Risk, Compliance — run as **one integrated programme** |
| **Governance** | **Sets direction** and accountability |
| **Compliance** | **Proves**, with evidence, that obligations are being met |
| **GRC framework** | e.g. **COBIT** (IT governance), **NIST CSF** (risk) |
| **GRC tool** | Software centrally tracking controls, risks, policies, evidence |
| **Audit** | Independent check of whether obligations are actually met |

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

## 🎣 Security awareness

| Term | Meaning |
|---|---|
| **Awareness** | Keeps security **in mind**. Everyone, continuous, shallow |
| **Training** | Teaches **specific skills** for a role |
| **Education** | Builds understanding of **why**. For security professionals |
| **Awareness training's classification** | **ADMINISTRATIVE + PREVENTIVE** |
| **The social engineering answer** | **Security awareness training.** Human vulnerability, human control |
| **Most valuable behaviour** | **REPORTING** — promptly, including one's own mistakes |
| **Phishing simulations** | **TEACH, do not punish.** Punishment hides mistakes |
| **The metric that matters** | **Reporting rate**, not just click rate. Track the trend |
| **Security culture** | Secure behaviour is normal; concerns are raised without fear |
| **Security leadership** | Visible management commitment to security — sets the tone for the culture |

---

## 📈 Measuring effectiveness

| Term | Meaning |
|---|---|
| **KRI** — Key Risk Indicator | **Warns** of rising risk exposure, before a loss occurs |
| **KPI** — Key Performance Indicator | **Grades** how well a process/control performs against a target |
| **KRI vs KPI** | **KRI warns, KPI grades** |
| **Dashboard** | Continuous, real-time, technical audience |
| **Scorecard** | Periodic, graded summary, management audience |
| **Report** | Periodic, often narrative, executive/board/regulator audience |

---

<div align="center">
<sub><a href="README.md">← back to 06 · Term Bank</a> &nbsp;·&nbsp; <a href="most-confused-pairs.md">The most confused pairs →</a></sub>
</div>
</content>
