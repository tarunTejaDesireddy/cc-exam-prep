<div align="center">

<img src="assets/module-07-banner.svg" alt="07 · Question Bank" width="100%">

# ⚙️ Drill · Domain 5 · Security Operations

[![Module](https://img.shields.io/badge/Module-07_Question_Bank-0d2b33?style=flat-square)](README.md)
[![Questions](https://img.shields.io/badge/Questions-20-5C7CFA?style=flat-square)](#)
[![Domain](https://img.shields.io/badge/Domain-5%20·%2018%25-12B5A5?style=flat-square)](../05-security-operations/README.md)

📌 *Broad but shallow. The encryption and hashing questions carry the most weight.*

</div>

---

**Q1.** How should user passwords be stored?

- **A.** Encrypted with AES-256
- **B.** Hashed with a unique salt per password
- **C.** In plaintext, protected by database permissions
- **D.** Encoded with Base64

<details><summary><b>Answer</b></summary>

**B — hashed with a unique salt.** Hashing is irreversible, so a database breach does not expose
the passwords, and the salt defeats rainbow tables.

- **A** is **reversible**. Whoever obtains the key recovers every password, and the key must live
  somewhere the application can reach.
- **C** means a breach hands over every credential immediately.
- **D** is encoding, not protection — Base64 is trivially reversed with no key at all.
</details>

---

**Q2.** To send a message only the recipient can read, which key encrypts it?

- **A.** The sender's private key
- **B.** The recipient's public key
- **C.** The sender's public key
- **D.** A shared symmetric key sent alongside

<details><summary><b>Answer</b></summary>

**B — the recipient's public key.** Only their private key can decrypt it.

- **A** is used for **signing**. Anyone with the sender's public key could decrypt it, so it gives
  no confidentiality.
- **C** would be undecryptable by anyone but the sender.
- **D** sends the key with the message, which protects nothing.

**Public encrypts, private decrypts.**
</details>

---

**Q3.** Which state of data is hardest to protect?

- **A.** At rest
- **B.** In transit
- **C.** In use
- **D.** Archived

<details><summary><b>Answer</b></summary>

**C — in use.** Data being processed must be **decrypted**, so encryption cannot cover it. Memory
scraping and malicious processes remain live threats.

- **A** is well addressed by encryption at rest.
- **B** is well addressed by TLS and VPNs.
- **D** is a form of data at rest, not a separate state.
</details>

---

**Q4.** An organisation degausses retired SSDs before disposal. What is wrong?

- **A.** Degaussing is too slow
- **B.** Degaussing has no effect on solid-state drives
- **C.** Degaussing prevents resale
- **D.** Nothing — this is correct

<details><summary><b>Answer</b></summary>

**B — degaussing has no effect on SSDs.** It disrupts magnetic fields; flash memory stores data in
cells, not magnetically. **The data survives.**

- **A** is operational and irrelevant to whether the data is gone.
- **C** is true of magnetic drives and beside the point.
- **D** is exactly the misconception being tested.
</details>

---

**Q5.** Who determines the classification level of a dataset?

- **A.** The database administrator
- **B.** The data owner
- **C.** The security team
- **D.** The end users

<details><summary><b>Answer</b></summary>

**B — the data owner.** A business role, accountable, deciding based on the impact of disclosure.

- **A** is the **custodian** — implements protection. Managing the system confers no authority to
  classify what is in it. The most common wrong answer here.
- **C** advises on the scheme and controls.
- **D** follow the handling rules.
</details>

---

**Q6.** What does a digital signature provide?

- **A.** Confidentiality and integrity
- **B.** Integrity, authentication and non-repudiation
- **C.** Confidentiality only
- **D.** Availability and integrity

<details><summary><b>Answer</b></summary>

**B — integrity, authentication and non-repudiation.** The signature proves the content is
unchanged and came from the private key holder.

- **A** and **C** both claim confidentiality. **A signed message is still readable by anyone** —
  signing is not encrypting.
- **D** is unrelated; signatures say nothing about availability.
</details>

---

**Q7.** Why are MD5 and SHA-1 unsuitable for security use?

- **A.** Their output is too short to store
- **B.** Practical collision attacks exist
- **C.** They require key distribution
- **D.** They are too slow

<details><summary><b>Answer</b></summary>

**B — practical collision attacks exist.** If an attacker can construct a different input with the
same hash, the hash no longer proves the content is unchanged.

- **A** is a storage point, not a security flaw.
- **C** is wrong — hash functions use no key.
- **D** is backwards; they are fast. Speed is a separate problem for password hashing specifically.
</details>

---

**Q8.** What is the FIRST step in securing an environment?

- **A.** Deploying endpoint protection
- **B.** Creating an accurate asset inventory
- **C.** Implementing MFA
- **D.** Running a penetration test

<details><summary><b>Answer</b></summary>

**B — an accurate asset inventory.** Every other control needs a list of what it applies to, and an
unknown asset receives none of them.

- **A** and **C** are valuable controls that must be applied to **identified** systems.
- **D** tests only what you know about. A test scoped from an incomplete inventory gives false
  assurance.

**You cannot protect what you do not know you have.**
</details>

---

**Q9.** A network device is still using its factory default password. What is the concern?

- **A.** It may not meet complexity requirements
- **B.** Default credentials are published in vendor documentation and public lists
- **C.** It will expire soon
- **D.** It cannot be changed without vendor support

<details><summary><b>Answer</b></summary>

**B — default credentials are published and widely known.** Automated tools try them against
exposed devices constantly.

- **A** is secondary; even a complex default is worthless once published.
- **C** invents a behaviour.
- **D** is generally untrue and would be operational rather than the primary concern.
</details>

---

**Q10.** An organisation logs comprehensively but reviews nothing. An intrusion runs for four
months. What failed?

- **A.** Insufficient logging coverage
- **B.** Logging without monitoring, so nothing was detected
- **C.** Log retention was too short
- **D.** Logs were not encrypted

<details><summary><b>Answer</b></summary>

**B — logging without monitoring.** Logging is the **record**; monitoring is the **attention**.

- **A** is contradicted by the stem.
- **C** is wrong — the logs were present throughout.
- **D** protects logs from disclosure and would not have made anyone notice.
</details>

---

**Q11.** Employees are installing unapproved software. What is the BEST FIRST step?

- **A.** Remove local administrator rights immediately
- **B.** Establish and communicate an acceptable use policy
- **C.** Deploy application allow-listing
- **D.** Monitor and discipline offenders

<details><summary><b>Answer</b></summary>

**B — establish and communicate an AUP.** The organisation cannot fairly enforce or discipline
against a rule it never wrote down.

- **A** and **C** are legitimate technical controls that may follow. As a **first** step they
  enforce an unwritten rule and break undocumented legitimate use.
- **D** disciplines people for breaching a rule they were never told about.

**Policy → training → technology → monitoring.**
</details>

---

**Q12.** Which type of monitoring detects data exfiltration?

- **A.** Ingress monitoring
- **B.** Egress monitoring
- **C.** Failed authentication monitoring
- **D.** Physical access monitoring

<details><summary><b>Answer</b></summary>

**B — egress monitoring.** Exfiltration is data going **out**.

- **A** watches traffic arriving. By the time data leaves, the attacker is already inside and
  ingress controls have been passed.
- **C** may reveal an earlier stage and says nothing about data leaving.
- **D** would find physical media removal, not network exfiltration.
</details>

---

**Q13.** Why does asymmetric encryption exist, given that symmetric is faster?

- **A.** It produces smaller ciphertext
- **B.** It solves the key distribution problem
- **C.** It is more resistant to brute force
- **D.** It works on larger files

<details><summary><b>Answer</b></summary>

**B — it solves key distribution.** The public key can be published freely because it cannot
decrypt anything.

- **A** is false; asymmetric ciphertext is typically larger.
- **C** conflates key length with algorithm family, and they are not comparable.
- **D** is backwards — asymmetric is unsuitable for bulk data, which is why hybrid systems exist.
</details>

---

**Q14.** What is the purpose of a configuration baseline?

- **A.** To record what hardware the organisation owns
- **B.** To define the minimum secure configuration, build new systems from it, and measure existing ones against it
- **C.** To document incident response procedures
- **D.** To set data retention periods

<details><summary><b>Answer</b></summary>

**B — define the minimum secure configuration, build from it, and measure against it.** The second
half is what catches **configuration drift**.

- **A** describes an asset inventory — related and different.
- **C** describes an incident response plan.
- **D** describes a retention policy.
</details>

---

**Q15.** An emergency change is made during an incident. What should happen?

- **A.** Nothing — incident response is exempt from change control
- **B.** Accelerated approval, then retrospective documentation
- **C.** The change is reversed and resubmitted normally
- **D.** Change control applies only to planned work

<details><summary><b>Answer</b></summary>

**B — accelerated approval, then retrospective documentation.** The process compresses; it does not
vanish.

- **A** is how undocumented changes accumulate until nobody can explain the environment.
- **C** would undo containment and reintroduce the incident.
- **D** is wrong; change control covers all changes, at varying depth.
</details>

---

**Q16.** An employee's personal phone holds corporate email. They resign. What is the challenge?

- **A.** The phone must be surrendered as company property
- **B.** Wiping corporate data may destroy personal data, which is why containerisation exists
- **C.** Corporate email cannot be removed from personal devices
- **D.** The employee must sign a declaration and be trusted

<details><summary><b>Answer</b></summary>

**B — wiping corporate data may destroy personal data, which is why containerisation exists.** A
managed container allows a **selective wipe** leaving personal content untouched.

- **A** is wrong; the device belongs to the employee, which is the defining feature of BYOD.
- **C** is factually wrong — selective wipe is standard MDM functionality.
- **D** provides no assurance and is what happens without policy or technology.
</details>

---

**Q17.** Which distinguishes awareness from training?

- **A.** Awareness is for executives; training is for technical staff
- **B.** Awareness keeps security in mind generally; training teaches role-specific skills
- **C.** Awareness is mandatory; training is optional
- **D.** They are interchangeable terms

<details><summary><b>Answer</b></summary>

**B — awareness keeps security in mind; training teaches role-specific skills.** Awareness is
continuous, shallow and for everyone; training is deeper and role-specific.

- **A** invents an audience split by seniority.
- **C** invents a mandatory/optional distinction.
- **D** loses the three-level distinction this topic tests.

**Awareness makes you notice. Training teaches you how. Education explains why.**
</details>

---

**Q18.** A report combines employee names, postcodes and salary bands, each individually
Internal. How should the report be classified?

- **A.** Internal, matching its components
- **B.** Public, since no field is individually sensitive
- **C.** Higher than Internal, because aggregation increases sensitivity
- **D.** Unclassified, as a derived artefact

<details><summary><b>Answer</b></summary>

**C — higher than Internal, because aggregation increases sensitivity.** Combined, the fields
identify individuals and reveal their pay.

- **A** applies component classification mechanically and misses aggregation entirely.
- **B** moves in the wrong direction.
- **D** is a genuine real-world failure — derived reports escape classification because they are new
  artefacts nobody labelled.
</details>

---

**Q19.** During a phishing simulation, 40 employees click the link. What is the BEST response?

- **A.** Issue formal warnings to all 40
- **B.** Immediate targeted teaching, and track the trend over time
- **C.** Publish the names internally
- **D.** Remove email access from repeat clickers

<details><summary><b>Answer</b></summary>

**B — immediate targeted teaching, tracking the trend.** The simulation exists to teach at the
moment of the mistake, and what matters is improvement over time.

- **A** turns an exercise into a disciplinary matter, teaching people to hide mistakes.
- **C** is worse — public shaming destroys the reporting culture that catches real incidents.
- **D** removes a business function as punishment and improves nobody's judgement.

**People who fear punishment hide mistakes, and hidden mistakes become breaches.**
</details>

---

**Q20.** How should vulnerability scanning be classified by control function?

- **A.** Preventive
- **B.** Detective
- **C.** Corrective
- **D.** Compensating

<details><summary><b>Answer</b></summary>

**B — detective.** A scan reports weaknesses and changes nothing.

- **A** is wrong — scanning stops no attack. The **patching that follows** reduces risk.
- **C** describes the remediation, not the scan.
- **D** would be an alternative where a primary control is infeasible, which a scan is not.
</details>

---

## 📊 Score yourself

| Score | Reading |
|---|---|
| **18–20** | Domain 5 is solid |
| **15–17** | Good. Re-read the topics behind your misses |
| **12–14** | Focus on `encryption-concepts/` and `hashing-and-integrity/` |
| **Below 12** | Re-read the domain; it is broad, so check coverage rather than depth |

> 🎯 **Misses on the key-direction rule** (public encrypts / private signs) are the most
> expensive here — that rule appears in Domain 1 too.

---

<div align="center">
<sub><a href="README.md">← back to 07 · Question Bank</a> &nbsp;·&nbsp; <a href="drill-domain-02.md">Domain 2 drill →</a></sub>
</div>
