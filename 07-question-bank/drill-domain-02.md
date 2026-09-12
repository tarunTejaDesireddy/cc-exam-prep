<div align="center">

<img src="assets/module-07-banner.svg" alt="07 · Question Bank" width="100%">

# 🚨 Drill · Domain 2 · Security Governance

[![Module](https://img.shields.io/badge/Module-07_Question_Bank-0d2b33?style=flat-square)](README.md)
[![Questions](https://img.shields.io/badge/Questions-20-5C7CFA?style=flat-square)](#)
[![Domain](https://img.shields.io/badge/Domain-2%20·%2017.3%25-12B5A5?style=flat-square)](../02-security-governance/README.md)

📌 *GRC, redundancy (BC/DR), awareness and measuring effectiveness. RTO vs RPO carries most of the redundancy marks — incident response now has its own drill in Domain 5.*

</div>

---

**Q1.** Backups run at 02:00 daily. A server fails at 18:00. What is the maximum data loss, and
which metric is it?

- **A.** 6 hours — the RTO
- **B.** 16 hours — the RPO
- **C.** 24 hours — the MTD
- **D.** 8 hours — the WRT

<details><summary><b>Answer</b></summary>

**B — 16 hours, the RPO.** Last good backup at 02:00, failure at 18:00, so sixteen hours of work
is lost. **Data loss measured as a period of time is the RPO.**

- **A** has the wrong figure and the wrong metric — RTO is time to **restore**.
- **C** uses the backup *interval* rather than the loss in this incident, and MTD is a downtime
  limit.
- **D** describes catching up work after systems return.
</details>

---

**Q2.** Why do organisations run governance, risk and compliance as one integrated GRC
programme rather than as three separate functions?

- **A.** To reduce headcount
- **B.** To keep direction-setting, risk treatment and verification aligned rather than duplicated
- **C.** To eliminate the need for audits
- **D.** To move all accountability to the compliance team

<details><summary><b>Answer</b></summary>

**B — to keep the three aligned.** Running them separately produces duplicated evidence
requests and priorities that drift out of sync with what governance actually approved.

- **A** may be a side effect but is not the purpose.
- **C** is wrong — audits still happen; GRC organises the evidence for them.
- **D** misunderstands the model; accountability stays distributed across the organisation.
</details>

---

**Q3.** A rising count of overdue critical patches, tracked month over month, is an example of
which of the following?

- **A.** A key performance indicator (KPI)
- **B.** A key risk indicator (KRI)
- **C.** A compliance report
- **D.** A governance document

<details><summary><b>Answer</b></summary>

**B — a KRI.** It warns of *rising* risk exposure before any loss has actually occurred.

- **A** would instead grade a process against a target, e.g. "% patched within SLA."
- **C** is a periodic formal document, not a single tracked metric.
- **D** describes a policy or standard, not a measurement.
</details>

---

**Q4.** A BIA sets an MTD of 6 hours. The proposed strategy has an RTO of 9 hours. What is wrong?

- **A.** Nothing — the margin is a safety buffer
- **B.** RTO exceeds MTD, so the strategy cannot meet the business requirement
- **C.** The RPO is unspecified
- **D.** The MTD should be raised to 9 hours

<details><summary><b>Answer</b></summary>

**B — RTO exceeds MTD.** MTD is the point where harm becomes unacceptable; a recovery arriving
three hours later has failed by definition. **RTO ≤ MTD.**

- **A** inverts the relationship — exceeding the limit is a shortfall, not a buffer.
- **C** is a true observation and not the described problem.
- **D** is the tempting wrong answer: adjusting the business requirement to fit the technical
  capability. MTD comes from business impact.
</details>

---

**Q5.** What does a cold site provide?

- **A.** Fully configured systems with current data
- **B.** Hardware installed, data requiring restoration
- **C.** Space, power, cooling and connectivity — no equipment or data
- **D.** A live duplicate of production

<details><summary><b>Answer</b></summary>

**C — space, power, cooling and connectivity, no equipment or data.** Essentially an empty serviced
room, which is why it is cheapest and takes **weeks**.

- **A** describes a **hot** site.
- **B** describes a **warm** site.
- **D** describes a **mirrored** site.
</details>

---

**Q6.** A board of directors needs a periodic, non-technical summary of the security
programme's status. What is the MOST appropriate format?

- **A.** Direct access to the SOC's live dashboard
- **B.** A scorecard or report tailored to an executive audience
- **C.** The raw vulnerability scan output
- **D.** No reporting, since boards are not a security audience

<details><summary><b>Answer</b></summary>

**B — a scorecard or report.** These formats match a periodic, non-technical, leadership
audience.

- **A** gives a continuous, technical view to an audience that needs a periodic summary.
- **C** is unfiltered operational data, not a governance communication.
- **D** ignores that boards are an intended audience for security reporting.
</details>

---

**Q7.** Which backup type needs the fewest sets to complete a restore?

- **A.** Incremental, because each set is small
- **B.** Differential, because only the latest one is needed
- **C.** Both need the same number
- **D.** Neither can be restored without a full chain

<details><summary><b>Answer</b></summary>

**B — differential.** A differential holds everything changed since the last **full**, so a restore
needs the full plus **one** differential.

- **A** confuses backup speed with restore simplicity. Incrementals are fast to create and a
  restore needs the full **plus every increment since**.
- **C** denies the defining trade-off between them.
- **D** is wrong; both are restorable with different combinations.
</details>

---

**Q8.** What distinguishes business continuity from disaster recovery?

- **A.** BC handles natural disasters; DR handles cyber attacks
- **B.** BC keeps functions running during a disruption; DR restores normal operations afterwards
- **C.** DR is broader and contains BC
- **D.** They are the same discipline

<details><summary><b>Answer</b></summary>

**B — BC is DURING; DR is AFTER.**

- **A** invents a split by cause; both apply regardless.
- **C** reverses the relationship — **BC is broader, and DR is a subset of it**.
- **D** loses the distinction entirely.
</details>

---

**Q9.** Which BEST distinguishes security awareness from security training?

- **A.** Awareness targets everyone, continuously and shallowly; training teaches specific
  skills for a role
- **B.** Training is optional; awareness is mandatory
- **C.** They are the same activity under different names
- **D.** Awareness is only for technical staff

<details><summary><b>Answer</b></summary>

**A — awareness is broad and continuous; training is role-specific.** This is the distinction
the exam tests directly, alongside education (the "why," for security professionals).

- **B** invents an optionality distinction that doesn't hold.
- **C** collapses a tested distinction.
- **D** reverses the intended audience — awareness is for **everyone**.
</details>

---

**Q10.** An employee clicks a simulated phishing email during an awareness campaign. What is
the MOST appropriate organisational response?

- **A.** Immediate disciplinary action
- **B.** Public disclosure of the employee's name to deter others
- **C.** Additional targeted training, without punishment
- **D.** No action, since simulations don't reflect real risk

<details><summary><b>Answer</b></summary>

**C — targeted training, without punishment.** Punitive responses to phishing simulations
suppress future reporting, which is the opposite of the desired culture.

- **A** and **B** both punish a teaching moment, discouraging the honest reporting the
  programme depends on.
- **D** dismisses a core purpose of running simulations at all.
</details>

---

**Q11.** Which is the FIRST step in a business continuity programme?

- **A.** Selecting a recovery site
- **B.** Conducting a business impact analysis
- **C.** Writing the disaster recovery plan
- **D.** Buying backup infrastructure

<details><summary><b>Answer</b></summary>

**B — conducting a BIA.** It identifies critical functions and produces the RTO and RPO everything
else is built to meet.

- **A** is a strategy decision that must be informed by those targets.
- **C** cannot be written without knowing what to recover and how fast.
- **D** commits spending before establishing what needs protecting.
</details>

---

**Q12.** What distinguishes a BIA from a risk assessment?

- **A.** A BIA identifies threats; a risk assessment identifies impact
- **B.** A BIA assesses impact regardless of cause; a risk assessment assesses threats and likelihood
- **C.** They are the same exercise
- **D.** A BIA is technical; a risk assessment is financial

<details><summary><b>Answer</b></summary>

**B — a BIA assesses impact **regardless of cause**; a risk assessment assesses threats and
likelihood.** The BIA does not care whether a fire, a flood or a failed disk stopped the function.

- **A** reverses them.
- **C** loses a tested distinction; they complement each other.
- **D** invents a split — the BIA is a **business** exercise.
</details>

---

**Q13.** During which test does production continue running alongside the recovery environment?

- **A.** Walkthrough
- **B.** Simulation
- **C.** Parallel test
- **D.** Full interruption test

<details><summary><b>Answer</b></summary>

**C — a parallel test.** Recovery systems are validated while production keeps serving the
business — high confidence without risking an outage.

- **A** is a discussion exercise; no systems involved.
- **B** acts out a scenario without bringing recovery into real operation.
- **D** is the opposite: **production is switched off**.
</details>

---

**Q14.** An RPO of 15 minutes requires what?

- **A.** A site operational within 15 minutes
- **B.** Backups or replication at least every 15 minutes
- **C.** An MTD of 15 minutes
- **D.** Staff on call within 15 minutes

<details><summary><b>Answer</b></summary>

**B — backups or replication at least every 15 minutes.** **RPO is bounded by copy frequency** —
you cannot recover to a point you never captured.

- **A** and **D** describe **RTO** requirements — how fast service returns.
- **C** confuses the metrics; MTD is a downtime limit.
</details>

---

**Q15.** An employee is being dismissed for misconduct. When should access be removed?

- **A.** At the end of the notice period
- **B.** Within 30 days, per standard offboarding
- **C.** Before or at the moment of notification
- **D.** After the exit interview

<details><summary><b>Answer</b></summary>

**C — before or at the moment of notification.** The window of greatest risk opens the instant the
person learns of the decision.

- **A** leaves a potentially hostile individual with full access for weeks.
- **B** applies a routine timescale to an exceptional circumstance — and 30 days is too long even
  routinely.
- **D** sequences removal after a conversation that follows notification.
</details>

---

**Q16.** Which pair are hardware metrics rather than recovery objectives?

- **A.** RTO and RPO
- **B.** MTD and WRT
- **C.** MTBF and MTTR
- **D.** RPO and MTD

<details><summary><b>Answer</b></summary>

**C — MTBF and MTTR.** Mean Time Between Failures measures **reliability**; Mean Time To Repair
measures **maintainability**. Both are engineering characteristics.

- **A**, **B** and **D** are all recovery concepts. These acronyms appear as distractors precisely
  because they look alike.
</details>

---

**Q17.** Which metric matters MOST when evaluating the success of a phishing awareness
programme over time?

- **A.** Click rate alone
- **B.** Reporting rate, tracked as a trend
- **C.** The total number of simulations sent
- **D.** How quickly IT can reset a clicked link

<details><summary><b>Answer</b></summary>

**B — reporting rate, tracked as a trend.** A programme succeeding at building a reporting
culture is a stronger signal than click rate alone, which can be noisy and doesn't measure
whether people are speaking up.

- **A** is a real signal but incomplete on its own.
- **C** measures effort, not outcome.
- **D** is an operational detail unrelated to programme effectiveness.
</details>

---

**Q18.** Staff begin recording orders on paper while the order system is down. What is this?

- **A.** Disaster recovery
- **B.** A business continuity measure — a manual workaround
- **C.** Incident containment
- **D.** A failure of the recovery plan

<details><summary><b>Answer</b></summary>

**B — a business continuity measure.** The function continues by different means while the system
is unavailable, which illustrates that **continuity answers are often non-technical**.

- **A** would involve restoring or failing over the system.
- **C** would limit the spread of a security incident.
- **D** inverts it — a workaround keeping the business running is the plan **working**.
</details>

---

**Q19.** Why must backups be periodically test-restored?

- **A.** To satisfy retention regulations
- **B.** Because a successful backup job does not prove the data is recoverable
- **C.** To reduce storage consumption
- **D.** Because backup media expires on a fixed schedule

<details><summary><b>Answer</b></summary>

**B — a successful job does not prove recoverability.** Media fails, jobs silently skip locked
files, keys go missing, and restore procedures go stale.

- **A** concerns how long data is kept.
- **C** is unrelated — testing consumes resources.
- **D** is not generally true and is not the reason.

**An untested control is an assumption.**
</details>

---

**Q20.** A fire alarm sounds while engineers are resolving a major outage. What takes priority?

- **A.** Completing the restoration first
- **B.** Evacuating and accounting for all personnel
- **C.** Securing the server room before leaving
- **D.** Notifying customers of the outage

<details><summary><b>Answer</b></summary>

**B — evacuating and accounting for all personnel.** Human safety outranks every other
consideration, in every scenario, without exception.

- **A** keeps people in a building that may be on fire to protect a system.
- **C** is a conscientious-sounding distractor that risks locking doors during an evacuation.
- **D** is a real obligation that does not outrank getting people out.
</details>

---

## 📊 Score yourself

| Score | Reading |
|---|---|
| **18–20** | Domain 2 is solid — move on to Domain 5 |
| **15–17** | Good. Re-read the topics behind your misses |
| **12–14** | Drill `rto-rpo-mtd/` and `measuring-cybersecurity-effectiveness/` |
| **Below 12** | Re-read the domain — it is broad but shallow, so this is manageable |

> 🎯 **If you missed Q1, Q4 or Q14**, go back to `rto-rpo-mtd/`. Those three are the highest-yield
> facts in the domain.

---

<div align="center">
<sub><a href="README.md">← back to 07 · Question Bank</a> &nbsp;·&nbsp; <a href="mixed-drill-01.md">Mixed drill 1 →</a></sub>
</div>
