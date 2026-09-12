<div align="center">

<img src="assets/module-07-banner.svg" alt="07 · Question Bank" width="100%">

# 🔀 Mixed drill 1 · All five domains

[![Module](https://img.shields.io/badge/Module-07_Question_Bank-0d2b33?style=flat-square)](README.md)
[![Questions](https://img.shields.io/badge/Questions-30-5C7CFA?style=flat-square)](#)
[![Order](https://img.shields.io/badge/Order-exam%20proportion-12B5A5?style=flat-square)](#)

📌 *Domains interleaved with no warning of which is coming. This is the format the real paper uses — and switching cold is the skill being trained.*

</div>

---

## Before you start

**30 questions, drawn in roughly exam proportion:** 8 from Domain 1, 7 from Domain 4, 7 from
Domain 3, 5 from Domain 5, 3 from Domain 2.

They are **not grouped**. You will not know which domain a question belongs to until you read it,
which is the point — the context cue is what makes topic-page questions easier than the real
thing.

Give yourself **35 minutes** if you want a time signal. Answer everything before expanding
anything.

---

**Q1.** A firewall permits inbound traffic on port 443 to a web server. Which layers is it
operating at?

- **A.** 1 and 2
- **B.** 3 and 4
- **C.** 5 and 6
- **D.** 7 only

<details><summary><b>Answer · D4</b></summary>

**B — layers 3 and 4.** IP addresses are layer 3; port numbers are layer 4.

- **A** covers physical signalling and MAC addressing.
- **C** covers session management and formatting.
- **D** would describe an application-layer firewall inspecting content, which the stem does not
  describe.
</details>

---

**Q2.** An organisation keeps customer records for twelve years although the legal requirement is
six. What is the concern?

- **A.** Storage cost only
- **B.** Retaining data past its retention period is a liability that can still be breached
- **C.** Nothing — more data is better
- **D.** The classification must be raised

<details><summary><b>Answer · D5</b></summary>

**B — retaining data past its retention period is a liability.** It can still be breached, still
be subject to disclosure requests, and still attracts obligations.

- **A** is a real cost and not the security concern.
- **C** is the instinct data minimisation exists to correct.
- **D** invents a consequence; the sensitivity has not changed.
</details>

---

**Q3.** Who may formally accept a risk exceeding the organisation's tolerance?

- **A.** The security analyst who assessed it
- **B.** The system administrator
- **C.** Senior management
- **D.** The internal auditor

<details><summary><b>Answer · D1</b></summary>

**C — senior management.** Risk acceptance is a business decision.

- **A** assessing a risk confers no authority to accept it.
- **B** administering a system is not owning its business risk.
- **D** would destroy the independence that makes the audit meaningful.
</details>

---

**Q4.** An engineer isolates a compromised host, then reports it. On this exam, what was wrong
about the order?

- **A.** Nothing — containment first is correct
- **B.** The incident response plan should be followed and notification made first
- **C.** The host should have been powered off instead
- **D.** Eradication should precede containment

<details><summary><b>Answer · D2</b></summary>

**B — follow the plan and notify first.** Containment is a **phase within** the process, not a
substitute for starting it.

- **A** is what you would genuinely do at work, which is what makes it the trap.
- **C** would destroy volatile evidence and is a decision the plan should make.
- **D** is impossible — you cannot remove a cause you have not contained or analysed.
</details>

---

**Q5.** A file's permissions list which users may read it. What is this called?

- **A.** Capability list
- **B.** Access control list
- **C.** Access control matrix
- **D.** Entitlement

<details><summary><b>Answer · D3</b></summary>

**B — an access control list.** Attached to the **object**: "who may access me".

- **A** attaches to the **subject**: "what may I access".
- **C** is the full grid; this is one column of it.
- **D** is the total set of rights a subject holds.
</details>

---

**Q6.** Which is a **corrective** control?

- **A.** A firewall rule
- **B.** An audit log
- **C.** Restoring data from backup
- **D.** A warning sign

<details><summary><b>Answer · D1</b></summary>

**C — restoring data from backup.** Corrective controls repair or restore after an incident.

- **A** is preventive.
- **B** is detective.
- **D** is deterrent.

**Backups are corrective — the most-missed classification on the exam.**
</details>

---

**Q7.** A device shows the address `169.254.18.3` and cannot reach the network. What happened?

- **A.** It was given a public address in error
- **B.** DHCP was unavailable, so the device self-assigned
- **C.** DNS resolution failed
- **D.** The subnet mask is wrong

<details><summary><b>Answer · D4</b></summary>

**B — DHCP was unavailable.** `169.254.x.x` is APIPA, assigned only when a host cannot obtain an
address from DHCP. **The address is the diagnostic.**

- **A** is wrong; `169.254` is a reserved self-assignment range.
- **C** would leave the host with a valid address but unable to resolve names.
- **D** would not produce an APIPA address.
</details>

---

**Q8.** What does hashing provide that encryption does not?

- **A.** Confidentiality
- **B.** A one-way transformation with no key
- **C.** Reversibility with the correct key
- **D.** Key distribution

<details><summary><b>Answer · D5</b></summary>

**B — a one-way transformation with no key.**

- **A** is what encryption provides.
- **C** describes encryption exactly.
- **D** is what asymmetric encryption solves; hashing has no keys at all.
</details>

---

**Q9.** A user cannot send email but receives it normally. Which protocol is likely affected?

- **A.** POP3, port 110
- **B.** IMAP, port 143
- **C.** SMTP, port 25
- **D.** DNS, port 53

<details><summary><b>Answer · D4</b></summary>

**C — SMTP on port 25.** **SMTP sends; POP3 and IMAP receive.**

- **A** and **B** are retrieval protocols, evidently working.
- **D** would generally affect both directions.
</details>

---

**Q10.** Two biometric factors are required to unlock a door — a fingerprint and an iris scan. Is
this multi-factor?

- **A.** Yes, two credentials are required
- **B.** No, both are the same factor category
- **C.** Yes, biometrics always count as multi-factor
- **D.** No, biometrics cannot be used for authentication

<details><summary><b>Answer · D1</b></summary>

**B — no, both are inherence factors.** MFA requires two or more **different** categories.

- **A** counts credentials instead of categories.
- **C** invents a rule.
- **D** is plainly false.

**Count letters, not credentials.**
</details>

---

**Q11.** Which describes MAC?

- **A.** The resource owner decides who may access
- **B.** The system decides from labels and clearances, and the owner cannot override
- **C.** Access is granted by job function
- **D.** Access is computed from multiple attributes at request time

<details><summary><b>Answer · D3</b></summary>

**B.** "Cannot override" is the tell.

- **A** is DAC.
- **C** is RBAC.
- **D** is ABAC.
</details>

---

**Q12.** An organisation's only copy of the business continuity plan is on the corporate file
server. What is the flaw?

- **A.** File servers are insecure
- **B.** The plan is unavailable in exactly the scenario it was written for
- **C.** The plan should be printed for legal reasons
- **D.** Nothing, if backups exist

<details><summary><b>Answer · D2</b></summary>

**B — the plan is unavailable when the network is down.** Offline and off-site copies are part of
the control.

- **A** is a vague assertion, not the flaw.
- **C** invents a legal requirement.
- **D** misses the point — restoring a backup requires working systems.
</details>

---

**Q13.** What is the purpose of salting a password before hashing?

- **A.** To make the hash reversible
- **B.** To defeat precomputed rainbow table attacks
- **C.** To encrypt the password
- **D.** To shorten the hash output

<details><summary><b>Answer · D5</b></summary>

**B — to defeat rainbow tables.** A unique salt per password means the same password produces
different hashes, so precomputed tables do not match.

- **A** is the opposite of the intent.
- **C** is wrong — hashing is not encryption.
- **D** is wrong; hash output is fixed length regardless.
</details>

---

**Q14.** Which is the strongest signal that an option is a distractor?

- **A.** It mentions senior management
- **B.** It uses the words "completely eliminates"
- **C.** It is the longest option
- **D.** It appears as option C

<details><summary><b>Answer · Foundations</b></summary>

**B — "completely eliminates".** Absolutes are almost always wrong, because no control removes risk
entirely.

- **A** is frequently a marker of the **correct** answer in this exam's governance questions.
- **C** and **D** are superstitions about option length and position with no basis on a
  professionally developed exam.
</details>

---

**Q15.** A legacy system cannot be patched. The organisation segments it and increases monitoring.
What kind of control is the segmentation?

- **A.** Preventive
- **B.** Compensating
- **C.** Corrective
- **D.** Directive

<details><summary><b>Answer · D1 / D4</b></summary>

**B — compensating.** The primary control, patching, is unavailable, so an alternative provides
comparable protection. The stem's framing as a **substitute** is the signal.

- **A** is defensible in isolation — segmentation does prevent lateral movement — but the question
  emphasises substitution.
- **C** restores; nothing is being restored.
- **D** mandates behaviour.
</details>

---

**Q16.** Under SaaS, what remains the customer's responsibility?

- **A.** Nothing
- **B.** Operating system patching
- **C.** Data, user accounts and access permissions
- **D.** Physical data centre security

<details><summary><b>Answer · D4</b></summary>

**C — data, user accounts and access permissions.**

- **A** is wrong in every model and is the assumption behind many cloud incidents.
- **B** is the provider's job under SaaS; it is yours under **IaaS**.
- **D** is always the provider's.
</details>

---

**Q17.** A new starter's access is created by copying a long-serving colleague's. What is the
concern?

- **A.** Nothing — it is efficient
- **B.** It propagates accumulated privilege creep
- **C.** It breaches segregation of duties
- **D.** It creates a dormant account

<details><summary><b>Answer · D3</b></summary>

**B — it propagates privilege creep.** A long-serving employee has gathered rights from previous
roles and projects.

- **A** states the convenience that makes this common.
- **C** is not described — no process is being completed alone.
- **D** requires the account to be unused.
</details>

---

**Q18.** Which statement about a VPN is correct?

- **A.** It protects data at rest on the connecting device
- **B.** It protects data in transit between the two tunnel endpoints only
- **C.** It prevents malware on the connecting device
- **D.** It encrypts traffic after it leaves the far endpoint

<details><summary><b>Answer · D4</b></summary>

**B — data in transit between the two endpoints only.**

- **A**, **C** and **D** all overstate it. A VPN protects **the pipe, not the ends** — an infected
  laptop on a VPN gives malware an encrypted, authenticated route in.
</details>

---

**Q19.** An organisation must prove to a regulator that a specific employee approved a payment.
Which mechanism BEST supports this?

- **A.** An audit log entry
- **B.** A digital signature applied with the employee's private key
- **C.** Encryption of the payment record
- **D.** A shared departmental approval account

<details><summary><b>Answer · D1</b></summary>

**B — a digital signature with the employee's private key.** Only they hold it, so only they could
have produced the signature.

- **A** supports non-repudiation and is weaker — accounts get shared and logs get edited.
- **C** protects confidentiality and proves nothing about who approved.
- **D** destroys attribution entirely.
</details>

---

**Q20.** What is the defining characteristic of a worm?

- **A.** It attaches to a host file
- **B.** It self-propagates with no user action
- **C.** It disguises itself as legitimate software
- **D.** It encrypts data for ransom

<details><summary><b>Answer · D4</b></summary>

**B — self-propagation with no user action.**

- **A** describes a virus.
- **C** describes a Trojan.
- **D** describes what ransomware **does**, not how it spreads. **The categories are about
  propagation, not payload.**
</details>

---

**Q21.** A data custodian is asked to classify a dataset. What should happen?

- **A.** They should classify it, as they administer the system
- **B.** The data owner classifies it; the custodian implements the resulting protection
- **C.** The security team classifies it
- **D.** The end users classify it collectively

<details><summary><b>Answer · D5</b></summary>

**B — the owner classifies; the custodian implements.**

- **A** is the most common wrong answer. Administering a system confers no authority to classify
  what is in it.
- **C** advises on the scheme.
- **D** would produce inconsistency and has no accountability.
</details>

---

**Q22.** Which is NOT one of the four risk treatments?

- **A.** Accept
- **B.** Avoid
- **C.** Eliminate
- **D.** Transfer

<details><summary><b>Answer · D1</b></summary>

**C — eliminate.** The four are **accept, avoid, mitigate, transfer**. "Eliminate" is not one of
them, and no treatment except avoidance takes risk to zero.

- **A**, **B** and **D** are three of the four; **mitigate** is the missing one.

Note the inverted stem.
</details>

---

**Q23.** An IPS is configured in monitor-only mode. On this exam, how should an IPS be described?

- **A.** As a detective control, since it is only monitoring
- **B.** As detecting and blocking traffic
- **C.** As identical to an IDS
- **D.** As a firewall

<details><summary><b>Answer · D4</b></summary>

**B — detecting and blocking.** The exam grades against the simplified model: **IPS blocks, full
stop.**

- **A** and **C** reason from the deployment reality, which is exactly the practitioner trap this
  domain is built around.
- **D** confuses two different device types.
</details>

---

**Q24.** Which describes the relationship between RTO and MTD?

- **A.** RTO must be greater than MTD
- **B.** RTO must be less than or equal to MTD
- **C.** They are unrelated
- **D.** MTD is always double the RTO

<details><summary><b>Answer · D2</b></summary>

**B — RTO ≤ MTD.** MTD is the business limit; RTO is the target that must fit inside it.

- **A** inverts it, producing an invalid plan.
- **C** denies the constraint.
- **D** invents an arithmetic rule.
</details>

---

**Q25.** Employees keep propping open a secure door for convenience. What is the BEST FIRST step?

- **A.** Install an alarm on the door
- **B.** Establish and communicate a policy, then train staff on it
- **C.** Replace the door with a mantrap
- **D.** Review CCTV and discipline those responsible

<details><summary><b>Answer · D5</b></summary>

**B — policy, then training.** An organisation-wide behaviour problem gets the policy answer first.

- **A** and **C** are legitimate technical and physical controls that may follow.
- **D** disciplines people against a rule that may never have been communicated.

**Policy → training → technology → monitoring.**
</details>

---

**Q26.** Which access control posture is expected on this exam?

- **A.** Default allow, blocking known-bad
- **B.** Default deny, permitting by exception
- **C.** Allow all internal, deny all external
- **D.** Permit based on seniority

<details><summary><b>Answer · D3</b></summary>

**B — default deny, permitting by exception.**

- **A** lets through anything not yet identified as bad.
- **C** is the perimeter assumption that internal means trustworthy.
- **D** grants by rank rather than need — senior staff often need **less** system access.
</details>

---

**Q27.** What does DNSSEC provide?

- **A.** Encryption of DNS queries
- **B.** Authenticity and integrity of DNS responses
- **C.** Faster name resolution
- **D.** Protection against DDoS attacks

<details><summary><b>Answer · D4</b></summary>

**B — authenticity and integrity.** It **signs** responses so they can be verified as genuine and
unmodified.

- **A** is the common error. **DNSSEC does not encrypt** — DNS over HTTPS/TLS does that.
- **C** and **D** are unrelated to what DNSSEC does.
</details>

---

**Q28.** Which statement about accountability is correct?

- **A.** It is achieved by logging alone
- **B.** It requires unique identification for each individual
- **C.** Shared accounts preserve it if the password is strong
- **D.** It is the same thing as authentication

<details><summary><b>Answer · D1 / D3</b></summary>

**B — it requires unique identification per individual.** Without a distinct identity, log entries
cannot be tied to anyone.

- **A** is necessary and not sufficient — the log must name a person, not an account.
- **C** is exactly backwards: shared accounts **destroy** accountability whatever the password.
- **D** conflates proving identity with tracing responsibility.
</details>

---

**Q29.** An organisation wants the highest confidence that its recovery plan works. Which test?

- **A.** Read-through
- **B.** Walkthrough
- **C.** Parallel test
- **D.** Full interruption test

<details><summary><b>Answer · D2</b></summary>

**D — full interruption test.** Production is switched off and the business runs from recovery —
the most rigorous and the most risky.

- **A** and **B** are paper and discussion exercises.
- **C** gives high confidence without the outage risk, and it is the second-strongest rather than
  the strongest.
</details>

---

**Q30.** Which is the correct order of the four ISC2 canons?

- **A.** Profession → principals → honour → society
- **B.** Society → honour → principals → profession
- **C.** Honour → society → profession → principals
- **D.** Principals → society → honour → profession

<details><summary><b>Answer · D1</b></summary>

**B — society → honour → principals → profession.** **Public → legal → employer → profession**, and
the order is a **priority ranking**.

- **A** is exactly reversed.
- **C** and **D** start from the wrong canon.
</details>

---

## 📊 Score yourself

| Score | Reading |
|---|---|
| **26–30** | Strong. You are ready for a mock exam |
| **22–25** | Good. Review misses, then take Mock 1 |
| **18–21** | Workable. Re-read the weak domains before a mock |
| **Below 18** | Not yet. Re-read the domains behind the misses, then redo this drill |

**Tally your misses by domain.** Mixed drills are where uneven coverage becomes visible — a score
of 24 with five of the six misses in one domain is a different problem from 24 spread evenly.

---

<div align="center">
<sub><a href="README.md">← back to 07 · Question Bank</a> &nbsp;·&nbsp; <a href="mixed-drill-02.md">Mixed drill 2 →</a></sub>
</div>
