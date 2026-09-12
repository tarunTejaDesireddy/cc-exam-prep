<div align="center">

<img src="assets/module-07-banner.svg" alt="07 · Question Bank" width="100%">

# 🔀 Mixed drill 2 · All five domains

[![Module](https://img.shields.io/badge/Module-07_Question_Bank-0d2b33?style=flat-square)](README.md)
[![Questions](https://img.shields.io/badge/Questions-30-5C7CFA?style=flat-square)](#)
[![Weighting](https://img.shields.io/badge/Weighted-towards%20scenarios-12B5A5?style=flat-square)](#)

📌 *Harder than drill 1. More scenario questions, more qualifier words, and more options that are operationally right but textbook wrong.*

</div>

---

## Before you start

**30 questions, exam proportion, deliberately harder.** Drill 1 leaned towards recall; this one
leans towards **scenarios and qualifiers** — FIRST, BEST, NOT, LEAST — which is where experienced
candidates lose marks.

Take it after you have reviewed your drill 1 misses, not immediately after. **35 minutes.**

> ⚠️ Several options here are **what you would actually do at work.** They are wrong anyway. Watch
> for it.

---

**Q1.** A junior analyst discovers unauthorised administrative access on a production database.
What should they do FIRST?

- **A.** Disable the account immediately
- **B.** Follow the incident response plan and notify the appropriate people
- **C.** Capture a memory image for forensics
- **D.** Change all administrative passwords

<details><summary><b>Answer · D2</b></summary>

**B — follow the plan and notify.** Every other option is a step within that process, and a junior
analyst acting alone on a production database is precisely the situation the plan exists for.

- **A** is containment. Correct action, wrong position, and it may alert the attacker.
- **C** is good practice and a decision for the process to make.
- **D** is broad remediation with real operational impact, taken before anyone senior knows.
</details>

---

**Q2.** Which action would MOST reduce the impact of a successful ransomware attack?

- **A.** Deploying endpoint detection software
- **B.** Maintaining tested, offline backups
- **C.** Blocking executable attachments at the mail gateway
- **D.** Conducting phishing awareness training

<additional></additional>
<details><summary><b>Answer · D1 / D2</b></summary>

**B — tested, offline backups.** The qualifier is **impact**. Backups do nothing about likelihood;
they reduce the harm once it happens.

- **A**, **C** and **D** all reduce **likelihood** — of execution, of delivery, and of the user
  opening it. All valuable, none of them the answer to an impact question.

**Backups reduce impact. Everything else here reduces likelihood.**
</details>

---

**Q3.** An organisation has a four-level classification scheme. Over time, 85% of documents end up
labelled Confidential. What is the PRIMARY problem?

- **A.** Storage costs have increased
- **B.** The label no longer distinguishes anything, so handling requirements become unworkable
- **C.** The scheme needs more levels
- **D.** Users need stronger passwords

<details><summary><b>Answer · D5</b></summary>

**B — the label no longer distinguishes anything.** Over-classification makes handling
requirements impractical, so everyone develops workarounds — and a scheme where almost everything
is Confidential is functionally no classification at all.

- **A** is a consequence, not the primary problem.
- **C** moves in the wrong direction; **fewer levels are better**.
- **D** is unrelated.
</details>

---

**Q4.** Which option is LEAST likely to be correct on this exam?

- **A.** Segmentation limits an attacker's lateral movement
- **B.** NAT provides a degree of obscurity as a side effect
- **C.** A properly configured firewall completely prevents network intrusion
- **D.** Awareness training reduces susceptibility to phishing

<details><summary><b>Answer · Foundations</b></summary>

**C — "completely prevents".** An absolute, and false on substance: a firewall cannot see inside
encrypted traffic and does nothing about a phished credential.

- **A**, **B** and **D** are all correctly hedged with *limits*, *a degree of*, and *reduces*.

Note the inverted stem — three are true.
</details>

---

**Q5.** A contractor needs read access to one folder for a two-week project. Which approach BEST
applies least privilege?

- **A.** Add them to the existing department group
- **B.** Grant read access to that folder only, with an expiry date
- **C.** Copy the permissions of a team member doing similar work
- **D.** Grant read access to the parent share for convenience

<details><summary><b>Answer · D3</b></summary>

**B — read access to that folder only, with an expiry date.** Minimum access, minimum duration.

- **A** grants everything the department holds.
- **C** propagates whatever privilege creep that account accumulated.
- **D** grants access beyond the requirement because it is easier.
</details>

---

**Q6.** Which statement about data in use is correct?

- **A.** It is protected by encryption at rest
- **B.** It must be decrypted to be processed, making it the hardest state to protect
- **C.** It is protected by TLS
- **D.** It does not exist as a distinct state

<details><summary><b>Answer · D5</b></summary>

**B — it must be decrypted to be processed.**

- **A** covers data on disk, not data loaded in memory.
- **C** covers data in transit.
- **D** denies one of the three states.
</details>

---

**Q7.** An organisation's RTO is 2 hours. Which recovery site is MOST appropriate?

- **A.** Cold site
- **B.** Warm site
- **C.** Hot site
- **D.** Reciprocal agreement

<details><summary><b>Answer · D2</b></summary>

**C — a hot site.** Fully equipped with current data, operational within minutes to hours.

- **A** takes **weeks** — it is an empty room.
- **B** takes hours to days, which may exceed two hours. The strongest distractor.
- **D** offers no guarantee of capacity or availability.
</details>

---

**Q8.** A security team wants to detect an attacker already inside the network. Which is MOST
likely to succeed?

- **A.** Perimeter firewall rules
- **B.** Egress monitoring for unusual outbound traffic
- **C.** Antivirus signature updates
- **D.** Stronger password complexity

<details><summary><b>Answer · D5</b></summary>

**B — egress monitoring.** An attacker inside will eventually communicate outward — command and
control, or exfiltration — and that is where they become visible.

- **A** watches the boundary they have already crossed.
- **C** may find known malware and nothing about an attacker using stolen credentials and built-in
  tools.
- **D** is preventive and does not detect anything.
</details>

---

**Q9.** Which correctly describes the ISC2 canon ranking when canons conflict?

- **A.** The later canon takes priority
- **B.** The lower-numbered canon takes priority
- **C.** They carry equal weight and the professional decides
- **D.** Canon 3 takes priority, as employers pay for the work

<details><summary><b>Answer · D1</b></summary>

**B — the lower-numbered canon takes priority.** The order is a ranking: **public → legal →
employer → profession**.

- **A** inverts it.
- **C** removes the tie-breaking mechanism the ordering provides.
- **D** is the commercially intuitive answer and is exactly wrong — Canon 3 yields to Canons 1
  and 2.
</details>

---

**Q10.** An attacker sends 50,000 SYN packets to a web server and never completes the handshakes.
What is happening, and what is affected?

- **A.** A replay attack affecting integrity
- **B.** A SYN flood affecting availability
- **C.** An on-path attack affecting confidentiality
- **D.** ARP poisoning affecting integrity

<details><summary><b>Answer · D4</b></summary>

**B — a SYN flood affecting availability.** The half-open connection table fills, so legitimate
users are refused.

- **A** re-sends captured valid data; no capture is described.
- **C** requires the attacker to relay between two parties.
- **D** operates at layer 2 with falsified ARP replies.
</details>

---

**Q11.** A policy states that all changes must be approved. During a critical outage, an engineer
makes an undocumented change that fixes it. What should happen?

- **A.** Nothing — the outcome was good
- **B.** The change is retrospectively documented and approved through the emergency process
- **C.** The change is reverted and resubmitted normally
- **D.** The engineer is disciplined for breaching policy

<details><summary><b>Answer · D5</b></summary>

**B — retrospectively documented and approved through the emergency process.** Emergency change is
an **accelerated** path, not an absent one.

- **A** leaves the inventory and baseline wrong, which is how drift begins.
- **C** would reintroduce the outage.
- **D** may be tempting and does nothing about the record; the correct organisational response is to
  capture the change and, if needed, improve the emergency path.
</details>

---

**Q12.** Which BEST describes the relationship between defence in depth and control independence?

- **A.** Independence is desirable but optional
- **B.** Layers sharing a failure cause provide far less depth than their number suggests
- **C.** Depth is measured purely by the number of controls
- **D.** Independence applies only to technical controls

<details><summary><b>Answer · D3</b></summary>

**B — layers sharing a failure cause provide far less depth than their number suggests.** Three
controls all authenticating against one directory are one control counted three times.

- **A** understates it — independence is the property that makes depth real.
- **C** is the counting error the concept exists to correct.
- **D** invents a restriction; a physical and an administrative control can share a dependency too.
</details>

---

**Q13.** An analyst must choose between two controls for the same risk. The ALE is $50,000.
Control A costs $20,000/year and halves the risk. Control B costs $60,000/year and eliminates it.
What should be recommended?

- **A.** Control B, for complete protection
- **B.** Control A, which delivers a net benefit of $5,000
- **C.** Neither — accept the risk
- **D.** Both together

<details><summary><b>Answer · D1</b></summary>

**B — Control A.** It costs $20,000 and reduces expected loss by $25,000 (half of $50,000), a net
benefit of $5,000.

- **A** costs $60,000 to remove $50,000 of expected loss — a $10,000 annual loss.
- **C** forgoes a control that pays for itself.
- **D** spends $80,000 against a $50,000 risk.
</details>

---

**Q14.** Which is a valid reason to choose qualitative over quantitative risk assessment?

- **A.** It produces figures that satisfy finance teams
- **B.** The impact is reputational and no reliable loss data exists
- **C.** It is more accurate for financial risks
- **D.** Regulations require it

<details><summary><b>Answer · D1</b></summary>

**B — reputational impact with no reliable data.**

- **A** describes **quantitative** assessment's advantage.
- **C** is backwards; quantitative is the method for measurable financial impact.
- **D** invents a requirement.
</details>

---

**Q15.** A user reports a suspicious email rather than clicking it. Which phase of incident
response does this represent?

- **A.** Preparation
- **B.** Detection and analysis
- **C.** Containment
- **D.** Post-incident activity

<details><summary><b>Answer · D2</b></summary>

**B — detection and analysis.** User reports are a primary detection source, which is why the
reporting behaviour from awareness training matters so much.

- **A** covers the training that produced the behaviour, and the report itself is detection.
- **C** would involve limiting spread.
- **D** is the lessons-learned review.
</details>

---

**Q16.** Which statement about MFA is correct?

- **A.** An SMS code is not a valid factor because SMS is insecure
- **B.** An SMS code is a valid possession factor, so password plus SMS code is MFA
- **C.** Password plus security question is MFA
- **D.** Two hardware tokens constitute MFA

<details><summary><b>Answer · D1</b></summary>

**B — an SMS code is a valid possession factor.** The exam tests the **category**, not the
strength.

- **A** is operationally reasonable and wrong on this exam. SIM swapping does not change the
  category.
- **C** is two knowledge factors — the classic trap.
- **D** is two possession factors.
</details>

---

**Q17.** An organisation wants to prevent employees taking sensitive data home on USB drives.
Which is the BEST FIRST step?

- **A.** Disable USB ports via group policy
- **B.** Establish a removable media policy and train staff on it
- **C.** Deploy data loss prevention software
- **D.** Issue encrypted corporate USB drives

<details><summary><b>Answer · D5</b></summary>

**B — establish a policy and train staff.** An organisation cannot fairly enforce, monitor or
discipline against an unwritten rule.

- **A** and **C** are legitimate technical controls that come **after** the policy; deployed first,
  they enforce an unwritten rule and break undocumented legitimate use.
- **D** solves convenience rather than governance and does nothing about personal drives.
</details>

---

**Q18.** Which is NOT a characteristic of a cryptographic hash function?

- **A.** Fixed-length output
- **B.** Deterministic — the same input always gives the same output
- **C.** Reversible with the correct key
- **D.** The avalanche effect

<details><summary><b>Answer · D5</b></summary>

**C — reversible with the correct key.** Hash functions are **one-way** and use **no key**. This is
the central distinction from encryption.

- **A**, **B** and **D** are all genuine properties.

Note the inverted stem.
</details>

---

**Q19.** A company's disaster recovery plan has never been tested. What is the PRIMARY concern?

- **A.** It may not meet audit requirements
- **B.** The plan's stated RTO is an untested assumption
- **C.** The plan may be too long
- **D.** Staff may not have read it

<details><summary><b>Answer · D2</b></summary>

**B — the stated RTO is an untested assumption.** Real recoveries surface corrupt backups, stale
documentation, missing credentials and dependencies restored in the wrong order.

- **A** is a genuine consequence and secondary to whether recovery would actually work.
- **C** is a quality observation, not the primary risk.
- **D** is real and narrower — testing would reveal it along with much else.

**An untested control is an assumption.**
</details>

---

**Q20.** Which pairing of control type and function is correct?

- **A.** Background screening — technical, detective
- **B.** Background screening — administrative, preventive
- **C.** Encryption — administrative, preventive
- **D.** CCTV — technical, preventive

<details><summary><b>Answer · D1</b></summary>

**B — administrative, preventive.** A human process that stops an unsuitable person entering a
position of trust.

- **A** has the wrong type and the wrong function.
- **C** misclassifies encryption, which is **technical**.
- **D** misclassifies CCTV, which is **physical** and **detective**.
</details>

---

**Q21.** Which describes the DMZ rule correctly?

- **A.** The internal network may reach the DMZ, but not the internet
- **B.** The internet may reach the DMZ; the DMZ must not freely reach the internal network
- **C.** The DMZ and internal network are equally trusted
- **D.** The DMZ should not be reachable from the internet

<details><summary><b>Answer · D4</b></summary>

**B.** That asymmetry is the whole point — an exposed server that is compromised must not become a
route inward.

- **A** describes something else and omits the critical direction.
- **C** defeats the purpose of having a DMZ.
- **D** would make a public web server pointless.
</details>

---

**Q22.** Under MAC, a user holds Top Secret clearance. Which statement is correct?

- **A.** They may access all Top Secret material
- **B.** Clearance alone is insufficient — need to know also applies
- **C.** They may grant access to others at their discretion
- **D.** Their clearance overrides object labels

<details><summary><b>Answer · D3</b></summary>

**B — clearance alone is insufficient; need to know also applies.**

- **A** is the common misconception. Clearance sets a ceiling, not an entitlement.
- **C** describes **DAC** — under MAC nobody has that discretion.
- **D** inverts the model; labels are compared against clearance by the system.
</details>

---

**Q23.** A company transfers its payment processing to a PCI DSS compliant provider. What has
happened to the risk?

- **A.** It has been avoided
- **B.** It has been mitigated
- **C.** The financial exposure has been transferred, but accountability remains
- **D.** It has been eliminated

<details><summary><b>Answer · D1</b></summary>

**C — the financial exposure is transferred; accountability remains.** Outsourcing the processing
does not outsource responsibility to regulators and customers.

- **A** would require ceasing to take payments altogether.
- **B** would mean applying controls while continuing to process in-house.
- **D** is an absolute and false.
</details>

---

**Q24.** Which is the MOST reliable indicator that an organisation's awareness programme is
working?

- **A.** 100% training completion rates
- **B.** A rising rate of staff reporting suspicious messages
- **C.** A falling number of security incidents
- **D.** Positive feedback scores on training sessions

<details><summary><b>Answer · D5</b></summary>

**B — a rising reporting rate.** Nobody spots every attack, so how quickly the organisation finds
out is the decisive factor.

- **A** measures attendance, not behaviour change.
- **C** is ambiguous — fewer **reported** incidents can mean better security or worse detection.
- **D** measures how much people enjoyed it.
</details>

---

**Q25.** A system administrator uses their privileged account to browse the web. What is the
PRIMARY concern?

- **A.** Reduced productivity from security prompts
- **B.** A drive-by compromise would land on a fully privileged account
- **C.** Browser history would be recorded
- **D.** The account may be locked out

<details><summary><b>Answer · D3</b></summary>

**B — a drive-by compromise would land on a fully privileged account.** Everyday activity is where
compromise arrives, and it must land on an account that cannot do much.

- **A** is an annoyance.
- **C** is a privacy consideration, not the security concern.
- **D** is a minor operational risk.
</details>

---

**Q26.** Which statement about incremental backups is correct?

- **A.** Each contains everything changed since the last full backup
- **B.** Each contains everything changed since the last backup of any type
- **C.** Restoring requires only the full and the latest incremental
- **D.** They are slower to create than differentials

<details><summary><b>Answer · D2</b></summary>

**B — since the last backup of **any** type.** That is what makes them small and fast, and why a
restore needs the full **plus every** increment.

- **A** describes a **differential**.
- **C** describes a differential restore.
- **D** is backwards — incrementals are the **fastest** to create.
</details>

---

**Q27.** An organisation discovers a cloud storage bucket containing customer data was publicly
readable for three months. Whose responsibility was the configuration?

- **A.** The cloud provider's, since they operate the platform
- **B.** The customer's, under the shared responsibility model
- **C.** Shared equally
- **D.** The provider's, if no warning was displayed

<details><summary><b>Answer · D4</b></summary>

**B — the customer's.** Access configuration and data are the customer's responsibility in **every**
service model. This is also the leading cause of cloud breaches.

- **A** confuses operating the platform with configuring what runs on it.
- **C** invents a split the model does not have.
- **D** attempts to shift responsibility onto interface design.
</details>

---

**Q28.** What does an access review discover that provisioning approval cannot?

- **A.** Whether the original grant was justified
- **B.** Access that has become inappropriate since it was granted
- **C.** Whether the user has a strong password
- **D.** Whether the system is patched

<details><summary><b>Answer · D3</b></summary>

**B — access that has become inappropriate since it was granted.** Provisioning approval is
**preventive** and looks at the moment of grant; the review is **detective** and looks at what is
still held.

- **A** is what provisioning approval addresses at the time.
- **C** and **D** are unrelated controls.
</details>

---

**Q29.** Which is the BEST description of business continuity?

- **A.** Restoring IT systems after a disaster
- **B.** Keeping critical business functions operating during a disruption
- **C.** Backing up data to an off-site location
- **D.** Insuring against losses from an outage

<details><summary><b>Answer · D2</b></summary>

**B — keeping critical functions operating during a disruption.**

- **A** describes **disaster recovery**, which is a subset of BC.
- **C** is one technical measure supporting recovery.
- **D** is risk **transfer**, not continuity.
</details>

---

**Q30.** A question asks which control would "identify" unauthorised configuration changes. Which
should you choose?

- **A.** A preventive control, since prevention is always preferable
- **B.** A detective control, because the stem asks to identify
- **C.** A corrective control, to fix the changes
- **D.** A deterrent control, to discourage the changes

<details><summary><b>Answer · Foundations</b></summary>

**B — a detective control, because the stem asks to identify.**

- **A** applies the general preference for prevention **against the stem's explicit wording**, which
  is precisely the error being tested. When a question asks to detect, give it detection.
- **C** repairs rather than identifies.
- **D** discourages rather than identifies.

**Read what the question asks for, not what is generally best.**
</details>

---

## 📊 Score yourself

| Score | Reading |
|---|---|
| **26–30** | Strong on scenarios as well as recall. Ready |
| **22–25** | Good. Review misses and take a mock |
| **18–21** | The knowledge is there; check whether misses were **qualifier** misreads |
| **Below 18** | Re-read `00-foundations/how-isc2-thinks/` and `answering-technique/` before more content |

> 🎯 **Categorise every miss as either "did not know" or "misread the question".** They need
> completely different fixes, and on a drill this scenario-heavy the second category is usually
> larger than people expect.

---

<div align="center">
<sub><a href="README.md">← back to 07 · Question Bank</a> &nbsp;·&nbsp; <a href="../08-mock-exams/README.md">08 · Mock Exams →</a></sub>
</div>
