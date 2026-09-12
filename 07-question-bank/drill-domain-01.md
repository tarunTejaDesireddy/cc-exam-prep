<div align="center">

<img src="assets/module-07-banner.svg" alt="07 · Question Bank" width="100%">

# 🧭 Drill · Domain 1 · Security Principles

[![Module](https://img.shields.io/badge/Module-07_Question_Bank-0d2b33?style=flat-square)](README.md)
[![Questions](https://img.shields.io/badge/Questions-22-5C7CFA?style=flat-square)](#)
[![Domain](https://img.shields.io/badge/Domain-1%20·%2024%25-12B5A5?style=flat-square)](../01-security-principles/README.md)

📌 *Mixed across the whole domain — no topic cue. Answer all twenty before expanding anything.*

</div>

---

**Q1.** A hospital's patient record system is encrypted, but an administrator accidentally grants
a contractor read access to the entire database. Which principle has been violated?

- **A.** Integrity
- **B.** Confidentiality
- **C.** Availability
- **D.** Non-repudiation

<details><summary><b>Answer</b></summary>

**B — Confidentiality.** Information reached someone not authorised to see it. Encryption was in
place and did not prevent it, because the access was granted through legitimate permissions.

- **A** is wrong: nothing was modified.
- **C** is wrong: no authorised user lost access.
- **D** is not part of the CIA triad, and the ability to attribute actions is unaffected.
</details>

---

**Q2.** Which of the following is a vulnerability rather than a threat?

- **A.** A disgruntled former employee
- **B.** A regional power outage
- **C.** Administrative accounts with no multi-factor authentication
- **D.** A ransomware group targeting the sector

<details><summary><b>Answer</b></summary>

**C — administrative accounts with no MFA.** A weakness in the environment; a **condition** the
organisation is in.

- **A** is a threat **actor**.
- **B** is a threat — an event that could cause harm.
- **D** is a threat actor. Remember: **threats are events, vulnerabilities are conditions.**
</details>

---

**Q3.** An asset worth $80,000 would lose 50% of its value in a single incident occurring roughly
once every five years. What is the ALE?

- **A.** $8,000
- **B.** $16,000
- **C.** $40,000
- **D.** $200,000

<details><summary><b>Answer</b></summary>

**A — $8,000.**

- SLE = AV × EF = $80,000 × 0.5 = **$40,000**
- ARO = 1 ÷ 5 = **0.2**
- ALE = $40,000 × 0.2 = **$8,000**

- **B** results from using an ARO of 0.4 or halving twice.
- **C** is the **SLE** — the single-event loss, a real intermediate value and the most common wrong
  answer.
- **D** results from multiplying by 5 instead of dividing.
</details>

---

**Q4.** A company decides to stop offering a payment service because the fraud risk outweighs the
revenue. Which risk treatment is this?

- **A.** Mitigate
- **B.** Transfer
- **C.** Avoid
- **D.** Accept

<details><summary><b>Answer</b></summary>

**C — avoid.** The activity creating the risk has ceased, so the risk ceases with it. Avoidance is
the only treatment that reaches zero, and it does so by giving up the benefit.

- **A** would mean continuing the service with controls around it.
- **B** would mean insuring or contracting the financial loss away while continuing.
- **D** would mean continuing and bearing the risk knowingly.
</details>

---

**Q5.** Which control is BEST classified as administrative and detective?

- **A.** An intrusion detection system
- **B.** A quarterly user access review
- **C.** A locked server cabinet
- **D.** Mandatory security awareness training

<details><summary><b>Answer</b></summary>

**B — a quarterly user access review.** Administrative because it is a human process; detective
because it finds inappropriate access that **already exists**.

- **A** is technical and detective — wrong on the type axis.
- **C** is physical and preventive — wrong on both.
- **D** is administrative and **preventive** — right type, wrong function.
</details>

---

**Q6.** A user enters a password and then a code from a hardware token. How many authentication
factors are in use?

- **A.** One
- **B.** Two
- **C.** Three
- **D.** None — a token code is not a factor

<details><summary><b>Answer</b></summary>

**B — two.** The password is something you **know**; the hardware token is something you **have**.
Two different categories, so genuine MFA.

- **A** would apply if both credentials were the same category — password plus PIN, for example.
- **C** would require a biometric as well.
- **D** misunderstands possession factors. The **device** is the factor; the code is how it proves
  possession.
</details>

---

**Q7.** A document states: "Staff should consider using a privacy screen when working in public
spaces." What kind of document is this?

- **A.** Policy
- **B.** Standard
- **C.** Procedure
- **D.** Guideline

<details><summary><b>Answer</b></summary>

**D — a guideline.** The verb **"should consider"** is the tell: recommended, not mandatory.

- **A** would use *must* or *shall* and state intent at a high level.
- **B** would state a specific mandatory requirement.
- **C** would give numbered steps.

**Soft verbs mean guideline. Only the guideline is optional.**
</details>

---

**Q8.** Which action would a security analyst NOT be authorised to take?

- **A.** Identifying a risk during an assessment
- **B.** Recommending a control to address a risk
- **C.** Formally accepting a risk that exceeds tolerance
- **D.** Implementing an approved control

<details><summary><b>Answer</b></summary>

**C — formally accepting a risk.** Risk acceptance is a business decision belonging to **senior
management**. Analysts identify, assess, recommend and implement.

- **A**, **B** and **D** are all within an analyst's remit. The pattern is consistent throughout
  the exam: **you never accept risk and you never set tolerance.**
</details>

---

**Q9.** Which statement about residual risk is correct?

- **A.** It can be eliminated entirely with sufficient controls
- **B.** It is the risk remaining after controls, and must itself be accepted or treated further
- **C.** It refers to the risk before any controls are applied
- **D.** It is automatically transferred to the control vendor

<details><summary><b>Answer</b></summary>

**B — the risk remaining after controls, which must itself be accepted or treated.** Residual risk
is a decision point in its own right.

- **A** is an absolute and false — residual risk is never zero.
- **C** describes **inherent** risk.
- **D** is wrong; buying a product transfers nothing.
</details>

---

**Q10.** An organisation encrypts customer data flawlessly, restricts access tightly, and then
sells it to data brokers under terms customers never read. What is the correct assessment?

- **A.** Both confidentiality and privacy are intact
- **B.** Confidentiality is intact; privacy is violated
- **C.** Privacy is intact; confidentiality is violated
- **D.** Neither concept applies to commercial data sales

<details><summary><b>Answer</b></summary>

**B — confidentiality intact, privacy violated.** The data is protected from unauthorised
disclosure, so the security property holds. The individuals have lost control over how information
about them is used, which is what privacy protects.

- **A** ignores the sale entirely.
- **C** inverts it — nothing reached an *unauthorised* party.
- **D** is wrong: commercial use is precisely what privacy regimes regulate.

**Confidentiality protects; privacy permits.**
</details>

---

**Q11.** Which is the strongest reason to prefer qualitative risk assessment in a particular
situation?

- **A.** It always produces more accurate results
- **B.** The impact is reputational and no historical data exists
- **C.** It is required for regulatory compliance
- **D.** It produces monetary figures for budget approval

<details><summary><b>Answer</b></summary>

**B — reputational impact with no historical data.** Qualitative assessment is designed for
intangible impacts and data-poor situations.

- **A** contains an absolute and is false — neither method is universally more accurate.
- **C** invents a requirement.
- **D** describes **quantitative** assessment, which is the one producing monetary figures.
</details>

---

**Q12.** A security professional discovers their employer is concealing a product defect that
endangers customers. According to the ISC2 Code of Ethics, what takes priority?

- **A.** The duty of diligent service to the employer
- **B.** Protecting society and public trust
- **C.** Advancing the profession
- **D.** The confidentiality clause in their contract

<details><summary><b>Answer</b></summary>

**B — protecting society and public trust.** Canon 1 is the highest duty and sits above the duty to
principals precisely so a professional cannot be instructed into concealing a public danger.

- **A** is Canon 3 — real, and **third** in the ranking.
- **C** is Canon 4, the lowest priority.
- **D** is not part of the Code, and a contract cannot override an ethical obligation accepted as a
  condition of certification.
</details>

---

**Q13.** Which control PRIMARILY reduces the **impact** of a risk rather than its likelihood?

- **A.** Multi-factor authentication
- **B.** Regular data backups
- **C.** Security awareness training
- **D.** Network firewall rules

<details><summary><b>Answer</b></summary>

**B — regular data backups.** They do nothing to make data loss less probable; they reduce the harm
when it happens.

- **A**, **C** and **D** all reduce **likelihood** — of credential compromise, of successful
  phishing, and of intrusion respectively.
</details>

---

**Q14.** A risk has an ALE of $30,000. Two controls are available: Control A costs $12,000/year
and reduces the ALE to $10,000. Control B costs $35,000/year and eliminates the risk. What should
be recommended?

- **A.** Control B, because eliminating risk is preferable
- **B.** Control A, because it delivers a net benefit
- **C.** Neither — accept the risk
- **D.** Both, for defence in depth

<details><summary><b>Answer</b></summary>

**B — Control A.** It costs $12,000 and saves $20,000 of expected annual loss — a net benefit of
$8,000.

- **A** costs $35,000 to avoid $30,000 of expected loss, destroying $5,000 a year in value.
- **C** forgoes a control that demonstrably pays for itself.
- **D** spends $47,000 against a $30,000 risk, which is worse than either option alone.
</details>

---

**Q15.** Which pairing correctly describes due diligence and due care?

- **A.** Due diligence is the action taken; due care is the investigation
- **B.** Due diligence is the investigation; due care is the action taken
- **C.** They are two names for the same obligation
- **D.** Due care applies to management; due diligence applies to staff

<details><summary><b>Answer</b></summary>

**B — due diligence is the investigation; due care is the action.** Diligence is knowing the roof
might leak; care is fixing it.

- **A** reverses them, which is the common error.
- **C** loses a distinction that exists precisely because an organisation can do one without the
  other.
- **D** invents a split by seniority.
</details>

---

**Q16.** Ransomware encrypts a production database. Backups exist and are clean. No data was
exfiltrated. Which CIA element was PRIMARILY affected?

- **A.** Confidentiality
- **B.** Integrity
- **C.** Availability
- **D.** None, because backups exist

<details><summary><b>Answer</b></summary>

**C — availability.** Authorised users cannot reach the data. The existence of backups affects the
**recovery**, not the classification of the impact.

- **A** would require disclosure, which the stem excludes.
- **B** is the strongest distractor — the files visibly changed on disk — but the information itself
  is unaltered; access to it was removed.
- **D** confuses having a remedy with having suffered no impact.
</details>

---

**Q17.** Who is responsible for approving an organisation's information security policy?

- **A.** The CISO
- **B.** Senior management
- **C.** Internal audit
- **D.** The IT director

<details><summary><b>Answer</b></summary>

**B — senior management.** Their approval is what gives the policy authority across the whole
organisation.

- **A** typically drafts and owns it operationally — the most tempting distractor for anyone who has
  written one.
- **C** assesses compliance independently; approving it would compromise that independence.
- **D** implements it, and a single department cannot confer organisation-wide authority.
</details>

---

**Q18.** A dataset has had names and identification numbers replaced with random tokens, with the
mapping stored separately. How is this data classified?

- **A.** Anonymised — no longer personal data
- **B.** Pseudonymised — still personal data
- **C.** Encrypted — protected at rest
- **D.** Aggregated — no longer identifying

<details><summary><b>Answer</b></summary>

**B — pseudonymised, still personal data.** The mapping exists, so the process is **reversible**,
which keeps the data in scope.

- **A** requires **irreversible** removal of identifiers. A stored mapping is the opposite.
- **C** is a different technique; tokenisation with a separate mapping is not encryption of the
  dataset.
- **D** describes combining records into summary statistics, which is not what happened.
</details>

---

**Q19.** Which statement about security controls is correct?

- **A.** A visible CCTV camera is preventive because it stops intruders
- **B.** Backups are preventive because they protect against data loss
- **C.** Network segmentation used because a system cannot be patched is a compensating control
- **D.** Security awareness training is a technical control

<details><summary><b>Answer</b></summary>

**C — segmentation used because a system cannot be patched is a compensating control.** The primary
control is unavailable, so an alternative provides comparable protection.

- **A** is wrong: CCTV is **detective**, and deterrent when visible. It stops nobody.
- **B** is the most-missed classification on the exam. **Backups are corrective.**
- **D** is wrong: training is **administrative**, delivered through process and changing human
  behaviour.
</details>

---

**Q20.** An organisation purchases cyber insurance covering breach response costs and regulatory
fines. Which statement is correct?

- **A.** The likelihood of a breach is now reduced
- **B.** The financial impact is transferred, but accountability remains with the organisation
- **C.** The risk has been avoided
- **D.** The insurer becomes the data controller

<details><summary><b>Answer</b></summary>

**B — the financial impact is transferred; accountability remains.** Insurance pays for
consequences; it does not make the breach someone else's responsibility to regulators or customers.

- **A** is the most-missed point about transfer: **a policy changes nothing about probability.**
- **C** would require ceasing the activity that creates the risk.
- **D** is wrong — the organisation still decides why and how personal data is processed, so it
  remains the controller.
</details>

---

## 📊 Score yourself

| Score | Reading |
|---|---|
| **18–20** | Domain 1 is solid. Move on |
| **15–17** | Good. Re-read the topics behind your misses |
| **12–14** | Workable gaps. Re-read the domain's ⚖️ Told apart blocks |
| **Below 12** | Re-read the domain properly before continuing |

**Log your misses by topic**, not just the count. Six misses across six topics is a different
problem from six in one.

---

## 🆕 New for the live outline: due care/diligence, named standards

**Q21.** Before acquiring a smaller competitor, a company reviews the target's incident
history and patch practices. What does this represent?

- **A.** Due care
- **B.** Due diligence
- **C.** Negligence
- **D.** Risk transfer

<details><summary><b>Answer</b></summary>

**B — due diligence.** Investigation performed *before* a decision is finalised.

- **A** describes ongoing reasonable action, not pre-decision investigation.
- **C** describes a failure to act reasonably.
- **D** describes shifting risk to a third party, unrelated here.
</details>

---

**Q22.** Which of the following is a named example of a standards/framework body under the
live outline's governance sub-area?

- **A.** CIS
- **B.** SAST
- **C.** RTO
- **D.** VLAN

<details><summary><b>Answer</b></summary>

**A — CIS (Center for Internet Security)**, publisher of the CIS Controls and CIS Benchmarks.

- **B** is an application testing technique.
- **C** is a business continuity metric.
- **D** is a network segmentation technology.
</details>

---

<div align="center">
<sub><a href="README.md">← back to 07 · Question Bank</a> &nbsp;·&nbsp; <a href="drill-domain-02.md">Domain 2 drill →</a></sub>
</div>
