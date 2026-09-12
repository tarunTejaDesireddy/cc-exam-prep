<div align="center">

<img src="assets/module-06-banner.svg" alt="06 · Term Bank" width="100%">

# 🧭 Domain 1 terms · Security Principles

[![Module](https://img.shields.io/badge/Module-06_Term_Bank-0d2b33?style=flat-square)](README.md)
[![Domain](https://img.shields.io/badge/Domain-1%20·%2026%25-5C7CFA?style=flat-square)](../01-security-principles/README.md)
[![Terms](https://img.shields.io/badge/Terms-78-57606A?style=flat-square)](#)

📌 *Cover the right column. Say the definition out loud before revealing. Mark your misses and drill those tomorrow.*

</div>

---

## 🔺 The CIA triad

| Term | Meaning |
|---|---|
| **Confidentiality** | Ensuring information is not disclosed to unauthorised individuals, processes or devices |
| **Integrity** | Ensuring information is not modified or destroyed in an unauthorised or undetected manner |
| **Availability** | Ensuring authorised users have timely and reliable access to information and systems |
| **Disclosure** | Information seen by someone unauthorised. The failure of confidentiality |
| **Alteration** | Information changed without authorisation. The failure of integrity |
| **Destruction** | Information or access lost. The failure of availability |
| **DAD triad** | Disclosure, Alteration, Destruction — the mirror image of CIA |
| **Sensitivity** | How much harm disclosure would cause. Drives confidentiality |
| **Criticality** | How badly the organisation is hurt if it is unavailable. Drives availability |
| **Authenticity** | Information is genuine and from the claimed source |

---

## 🔑 Authentication, authorisation, accounting

| Term | Meaning |
|---|---|
| **Identification** | Claiming an identity. Unverified — a username, a badge presented |
| **Authentication** | Proving the claimed identity with one or more factors |
| **Authorisation** | Granting or denying a proven identity the right to access a resource |
| **Accounting** | Recording what an authenticated identity did. Also called auditing |
| **Accountability** | Being able to trace an action to a specific individual and hold them responsible |
| **Factor** | A category of proof: knowledge, possession, or inherence |
| **Something you know** | A knowledge factor — password, PIN, passphrase, security question |
| **Something you have** | A possession factor — token, smart card, phone, certificate |
| **Something you are** | An inherence factor — fingerprint, iris, face, voice |
| **MFA** | Authentication using credentials from **two or more different** factors |
| **Biometrics** | Authentication using a measurable physical or behavioural characteristic |
| **FAR** — False Acceptance Rate | How often an **impostor is wrongly accepted**. The security risk |
| **FRR** — False Rejection Rate | How often a **legitimate user is wrongly rejected**. The usability cost |
| **CER** — Crossover Error Rate | The point where FAR and FRR are equal. **Lower is better** |
| **OTP** | One-time password, valid for a single use or short window |
| **Permission** | A right over a specific resource — read, write, execute |
| **Privilege** | A system-level right, such as installing software |
| **Least privilege** | Granting only the access a role requires, and no more |
| **Privilege creep** | Access accumulating as someone changes roles. An administrative failure |
| **Audit trail** | The chronological record produced by accounting |

---

## ✍️ Non-repudiation and privacy

| Term | Meaning |
|---|---|
| **Repudiation** | Denying having performed an action |
| **Non-repudiation** | Assurance that someone cannot successfully deny having performed an action. **Not part of the CIA triad** |
| **Digital signature** | A value created with the signer's **private key**, proving origin and integrity |
| **Private key** | Held by exactly one party, never shared. **Signs** and **decrypts** |
| **Public key** | Distributed freely. **Verifies** and **encrypts** |
| **Certificate** | A document binding a public key to a verified identity |
| **Privacy** | The right of an individual to control collection, use and disclosure of information about them |
| **PII** | Information identifying a specific individual, alone **or in combination** |
| **PHI** | Health information tied to an identifiable individual |
| **Data subject** | The living person the data is about |
| **Data owner** | Accountable for a data set — classification and access. A **business** role |
| **Data custodian** | Implements protection day to day — storage, backups, access. Usually IT |
| **Data controller** | Decides **why and how** personal data is processed |
| **Data processor** | Processes personal data **on the controller's instructions** |
| **Consent** | The data subject's permission for a stated use |
| **Data minimisation** | Collecting only what is necessary for the stated purpose |
| **Purpose limitation** | Using data only for the purpose it was collected for |
| **Anonymisation** | Identifiers removed **irreversibly**. No longer personal data |
| **Pseudonymisation** | Identifiers replaced by a **reversible** token. Still personal data |
| **GDPR** | EU personal data regulation. 72-hour breach notification. Applies by **whose data**, not company location |
| **HIPAA** | US protected health information |
| **PCI DSS** | Cardholder data. **An industry standard enforced by contract, not a law** |
| **SOX** | US financial reporting integrity for public companies |

---

## ⚠️ Risk

| Term | Meaning |
|---|---|
| **Asset** | Anything of value worth protecting — data, systems, facilities, people, reputation |
| **Threat** | Any circumstance or **event** with the potential to cause harm |
| **Threat actor** | The entity that carries out a threat |
| **Threat vector** | The path or route a threat uses to reach the asset |
| **Vulnerability** | A **weakness** that a threat could exploit |
| **Exploit** | The act or tool that takes advantage of a vulnerability |
| **Risk** | The likelihood that a threat exploits a vulnerability, combined with the impact |
| **Likelihood** | How probable it is that the event occurs |
| **Impact** | How much harm results if it does occur |
| **Inherent risk** | The risk **before** any controls are applied |
| **Residual risk** | The risk remaining **after** controls. **Never zero** |
| **Risk tolerance** | How much risk the organisation will accept. Set by **senior management** |
| **Risk appetite** | The broad, strategic amount of risk pursued to meet objectives |
| **Risk register** | The record of each risk, its assessment, owner and treatment |
| **Risk owner** | The named person accountable for a specific risk |

---

## 📐 Risk assessment and treatment

| Term | Meaning |
|---|---|
| **Risk assessment** | Identifying risks and determining their likelihood and impact |
| **Qualitative assessment** | Rating risk in **descriptive categories**. Subjective, fast, no data needed |
| **Quantitative assessment** | Rating risk in **numbers**, usually money. Objective, slow, data-hungry |
| **AV** — Asset Value | What the asset is worth, in money |
| **EF** — Exposure Factor | The **percentage** of asset value lost in a single incident |
| **SLE** — Single Loss Expectancy | Money lost in **one** occurrence. **SLE = AV × EF** |
| **ARO** — Annual Rate of Occurrence | How many times **per year**. Once in 10 years = **0.1** |
| **ALE** — Annualised Loss Expectancy | Expected loss **per year**. **ALE = SLE × ARO** |
| **Risk matrix** | A grid of likelihood against impact, used in qualitative assessment |
| **Risk treatment** | The decision about what to do with an assessed risk |
| **Risk acceptance** | Knowingly bearing the risk. **Informed and documented** |
| **Risk avoidance** | **Stopping the activity** that creates the risk. The only treatment reaching zero |
| **Risk mitigation** | Applying controls to reduce likelihood or impact. Activity continues |
| **Risk transfer** | Shifting the **financial consequence** to a third party. Insurance or contract |

---

## 🛡️ Controls

| Term | Meaning |
|---|---|
| **Control** | A safeguard or countermeasure that reduces risk |
| **Technical control** | Implemented in hardware, software or firmware. Also **logical** |
| **Administrative control** | Implemented through policy, procedure and people. Also **managerial** |
| **Physical control** | Tangible protection of facilities, equipment and people |
| **Preventive** | **Stops** an incident before it happens |
| **Detective** | **Identifies** that an incident happened or is happening |
| **Corrective** | **Restores or repairs** after an incident. **Backups are corrective** |
| **Deterrent** | **Discourages** the attempt. Acts on the mind |
| **Compensating** | An **alternative** where the primary control is not feasible |
| **Directive** | **Instructs or mandates** required behaviour |
| **Defence in depth** | Layering multiple **independent** controls so no single failure is fatal |

---

## 📜 Governance and ethics

| Term | Meaning |
|---|---|
| **Policy** | High-level statement of management intent. **Mandatory.** Approved by senior management |
| **Standard** | A specific, uniform, **mandatory** requirement. If it has a number in it, it's a standard |
| **Procedure** | Detailed **step-by-step** instructions. **Mandatory** |
| **Guideline** | Recommended, **non-mandatory** advice. **The only optional document** |
| **Baseline** | The minimum acceptable level of security for a class of system |
| **Regulation** | A rule imposed externally, enforceable by law |
| **Framework** | A structured set of practices an organisation can adopt — ISO 27001, NIST CSF |
| **Due diligence** | Investigating and understanding the risks. **The research** |
| **Due care** | Doing what a reasonable person would do about them. **The action** |
| **Canon 1** | Protect society, the common good, necessary public trust and confidence, and the infrastructure |
| **Canon 2** | Act honourably, honestly, justly, responsibly, and legally |
| **Canon 3** | Provide diligent and competent service to principals |
| **Canon 4** | Advance and protect the profession |
| **Principal** | The person or organisation you serve — employer or client |
| **Canon priority** | **The order IS the ranking.** Lower number wins: public → legal → employer → profession |

---

<div align="center">
<sub><a href="README.md">← back to 06 · Term Bank</a> &nbsp;·&nbsp; <a href="domain-02-terms.md">Domain 2 terms →</a></sub>
</div>
