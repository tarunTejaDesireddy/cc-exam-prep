<div align="center">

<img src="assets/module-06-banner.svg" alt="06 · Term Bank" width="100%">

# ⚖️ The most confused pairs

### *The terms the exam deliberately swaps — drilled one pair at a time*

[![Module](https://img.shields.io/badge/Module-06_Term_Bank-0d2b33?style=flat-square)](README.md)
[![Value](https://img.shields.io/badge/Value-highest%20in%20the%20module-12B5A5?style=flat-square)](README.md)
[![Pairs](https://img.shields.io/badge/Pairs-55%2B-5C7CFA?style=flat-square)](#)

📌 *If you drill one thing in this repo, drill this page. Every pair here is a distractor pattern that appears on the paper.*

</div>

---

## How to use this page

**Cover the right-hand column.** Read the left term, say what it means *and* what it is not, then
reveal.

A pair is only learned when you can state **both halves and the difference**. "RTO is recovery
time" is half an answer; "RTO is time to restore, looking forward — RPO is data loss, looking
back" is the whole one.

The ⭐ pairs are the ones that appear most often. Start there if time is short.

---

## 🧭 Domain 1 · Security Principles

| Pair | The difference |
|---|---|
| ⭐ **Threat vs Vulnerability** | Threat = the **event** that could happen. Vulnerability = the **condition** that would let it. Flood is a threat; basement server room is a vulnerability |
| ⭐ **Vulnerability vs Risk** | Vulnerability = a weakness. Risk = **likelihood × impact**, needing a threat *and* an impact too |
| **Threat vs Threat actor vs Threat vector** | Threat = **what**. Actor = **who**. Vector = **the route** |
| **Vulnerability vs Exploit** | Vulnerability = the weakness. Exploit = the **act or tool** that uses it |
| ⭐ **Inherent vs Residual risk** | Inherent = **before** controls. Residual = **after**. Residual is never zero |
| **Risk appetite vs Risk tolerance** | Appetite = broad strategic willingness. Tolerance = acceptable variation on a **specific** objective |
| ⭐ **SLE vs ALE** | SLE = loss from **one** event. ALE = loss **per year** (SLE × ARO) |
| **AV vs EF** | AV = the asset's **money value**. EF = the **percentage** lost per incident |
| ⭐ **Qualitative vs Quantitative** | Qualitative = **words**, subjective, fast, no data needed. Quantitative = **numbers**, objective, slow, needs data |
| ⭐ **Avoid vs Mitigate** | Avoid = **stop the activity** (risk → zero). Mitigate = **controls, activity continues** |
| ⭐ **Transfer vs Avoid** | Transfer = move the **financial loss** (insurance/contract); the event is just as likely. Avoid = the event can no longer happen |
| **Accept vs Ignore** | Accept = **informed and documented** decision by management. Ignoring is not a treatment |
| ⭐ **Technical vs Administrative control** | Technical = in **hardware/software**. Administrative = **policy, process, people**. A password policy is administrative; the setting enforcing it is technical |
| ⭐ **Preventive vs Detective** | Preventive **stops** it. Detective **notices** it. Firewall vs audit log |
| ⭐ **Preventive vs Deterrent** | Preventive acts on the **situation** (a lock). Deterrent acts on the **mind** (a warning sign) |
| ⭐ **Corrective vs Preventive** | Corrective **restores after**. **Backups are corrective** — most-missed classification on the exam |
| **Compensating vs Additional control** | Compensating = a **substitute** where the primary is infeasible. Additional = another layer for depth |
| ⭐ **Policy vs Standard** | Policy = **what and why**, technology-neutral. Standard = **the specific requirement**. **If it has a number in it, it's a standard** |
| ⭐ **Standard vs Guideline** | Standard = **mandatory**. Guideline = **optional**. Only the guideline is optional |
| **Procedure vs Standard** | Procedure = **numbered steps, how**. Standard = the requirement, without saying how |
| **Due diligence vs Due care** | Diligence = **the research** (knowing the roof might leak). Care = **the action** (fixing it) |
| ⭐ **Confidentiality vs Privacy** | Confidentiality **protects** data. Privacy governs what you are **permitted to do** with it |
| **Sensitivity vs Criticality** | Sensitivity → harm from **disclosure** (confidentiality). Criticality → harm from **loss of access** (availability) |
| ⭐ **Anonymisation vs Pseudonymisation** | Anonymisation is **irreversible** — no longer personal data. Pseudonymisation is **reversible** — still personal data |
| **Data controller vs Data processor** | Controller **decides** why and how. Processor acts on **instructions**. Accountability stays with the controller |

---

## 🚪 Domain 3 · IAM Concepts

| Pair | The difference |
|---|---|
| ⭐ **Identification vs Authentication** | Identification = the **claim** (username). Authentication = the **proof** (password) |
| ⭐ **Authentication vs Authorisation** | Authentication = **who are you**. Authorisation = **what may you do**. Logged in but denied a file = authorisation working |
| ⭐ **Accounting vs Accountability** | Accounting = the **activity** of recording. Accountability = the **result** — tracing an action to a named person |
| ⭐ **DAC vs MAC** | DAC = the **owner** decides, at their discretion. MAC = the **system** decides from labels; **the owner cannot override** |
| ⭐ **RBAC vs ABAC** | RBAC decides on **one thing — the role**. ABAC decides on **several different attributes** together |
| ⭐ **RBAC vs Rule-based** | **Role**-based = by job function. **Rule**-based = system-wide rules regardless of who you are (firewall rules) |
| ⭐ **Least privilege vs Need to know** | Least privilege = what you can **do**. Need to know = what information you can **see** |
| ⭐ **Segregation of duties vs Least privilege** | SoD = no one person completes a **process** alone. Least privilege = no one person holds **too much** |
| ⭐ **Segregation of duties vs Dual control** | SoD = different **steps**, different people. Dual control = the **same action** needs two people |
| ⭐ **Privilege creep vs Privilege escalation** | Creep = rights **accumulating legitimately** over role changes (admin failure). Escalation = **an attack** |
| **ACL vs Capability list** | ACL hangs off the **object** ("who may access me"). Capability list hangs off the **subject** ("what may I access") |
| **Subject vs Object** | Subject = **active**, requests. Object = **passive**, is requested |
| **Permission vs Privilege** | Permission = a right over a **specific object**. Privilege = a **system-level** right |
| ⭐ **Fail-safe vs Fail-secure** | Fail-**safe** = door **unlocks**, protects **people**. Fail-**secure** = door **locks**, protects **assets**. "Safe" means safe for people |
| ⭐ **Tailgating vs Piggybacking** | Tailgating = **no consent**. Piggy**b**acking has **p**ermission |
| **Orphaned vs Dormant account** | Orphaned = **no valid owner** (a leaver). Dormant = **has an owner**, unused |
| **Defence in depth vs Redundancy** | Depth **layers different** controls in sequence. Redundancy **duplicates** one component |

---

## 🌐 Domain 4 · Networking and Cloud Security Concepts

| Pair | The difference |
|---|---|
| ⭐ **IDS vs IPS** | I-**D**-S = **D**etects and alerts, out of band, **detective**. I-**P**-S = **P**revents/blocks, in line, **preventive** |
| ⭐ **Switch vs Router** | Switch = **layer 2, MAC, within** a network. Router = **layer 3, IP, between** networks |
| **Hub vs Switch** | Hub **floods every frame to every port** (eavesdropping risk). Switch forwards only to the right port |
| ⭐ **ARP vs DNS** | ARP resolves **IP → MAC** (layer 2). DNS resolves **name → IP** (layer 7) |
| ⭐ **Stateless vs Stateful firewall** | Stateless judges **each packet alone**. Stateful **tracks connections** and permits return traffic |
| ⭐ **TCP vs UDP** | TCP = connection-oriented, **reliable**, acknowledged, slower. UDP = connectionless, **unreliable**, faster |
| ⭐ **Signature vs Anomaly detection** | Signature = **known patterns**, few false positives, **misses zero-days**. Anomaly = baseline deviation, **catches unknown**, more false positives |
| ⭐ **False positive vs False negative** | False positive = legitimate activity flagged (**costly**). False negative = **a real attack missed** (**dangerous**) |
| ⭐ **DoS vs DDoS** | The extra **D is Distributed** — many sources |
| ⭐ **Eavesdropping vs On-path** | Eavesdropping is **passive** (modifies nothing, hard to detect). On-path is **active** (relays, can alter) |
| ⭐ **Replay vs Session hijacking** | Replay **re-sends captured data**. Hijacking **takes over a live authenticated session** |
| ⭐ **SQL injection vs XSS** | SQLi attacks the **database**. XSS attacks **other users' browsers** |
| ⭐ **Brute force vs Dictionary** | Brute force = **every** combination. Dictionary = **a prepared list** |
| ⭐ **Spraying vs Credential stuffing** | Spraying = **one password, many accounts** (dodges lockout). Stuffing = **pairs breached elsewhere** (exploits reuse) |
| ⭐ **Virus vs Worm** | Virus attaches to a file and **needs a user to run it**. Worm **spreads by itself** |
| **Virus vs Trojan** | Virus hides in a file the user **already wanted**. Trojan is **disguised as something desirable** |
| **Rootkit vs Backdoor** | Rootkit **hides**. Backdoor **opens access** |
| ⭐ **Zero-day vs Unpatched** | Zero-day = **no patch exists**. Unpatched = a fix exists but was **not applied** |
| **Spear phishing vs Whaling** | Spear = a **specific person**. Whaling = a **senior executive** |
| ⭐ **Forward vs Reverse proxy** | Forward sits in front of **clients**. Reverse sits in front of **servers** |
| **VLAN vs Physical separation** | VLAN is **logical** (VLAN hopping exists). Physical separation is stronger; **air gap** is strongest |
| ⭐ **Split vs Full tunnelling** | Split = only corporate traffic tunnelled, **faster, bypasses inspection**. Full = **all** traffic, **more secure** |
| **Tunnel vs Transport mode** | Tunnel encrypts the **whole packet** (site-to-site). Transport encrypts the **payload only** |
| ⭐ **Site-to-site vs Remote access VPN** | Site-to-site joins two **networks**, always on. Remote access joins one **device**, user-initiated |
| ⭐ **VM vs Container** | VM has its **own kernel** — **stronger isolation**. Containers **share the host kernel** — weaker |
| ⭐ **IaaS vs PaaS vs SaaS** | IaaS: **you patch the OS**. PaaS: you manage apps + data. SaaS: **data and access only** |
| **Public vs Community cloud** | Public = open to **anyone**. Community = shared by orgs with **common requirements** |
| **Evil twin vs Rogue AP** | Evil twin **impersonates a legitimate SSID**. Rogue AP is any **unauthorised** access point |
| **SLA vs MOU** | SLA = measurable service levels, **binding**. MOU = statement of **intent**, **usually not binding** |
| **MSA vs SOW** | MSA is the **umbrella contract**. SOW is the **specific job** under it |

---

## ⚙️ Domain 5 · Security Operations and Incident Response

| Pair | The difference |
|---|---|
| ⭐ **Encryption vs Hashing** | Encryption is **reversible with a key**, for **confidentiality**. Hashing is **one-way, no key**, for **integrity** |
| ⭐ **Symmetric vs Asymmetric** | Symmetric = **one shared key, fast**; weakness is **key distribution**. Asymmetric = **a pair, slow**; solves distribution |
| ⭐ **Encrypting vs Signing** | Encrypt with the **recipient's public** key (confidentiality). Sign with **your own private** key (non-repudiation) |
| ⭐ **Public vs Private key** | **Public encrypts, private decrypts. Private signs, public verifies.** The private key does what only you should do |
| **Digital signature vs Encryption** | A signature gives **integrity + authentication + non-repudiation**, **not confidentiality**. A signed message is still readable |
| ⭐ **Non-repudiation vs Integrity** | Integrity = the **content** didn't change. Non-repudiation = **who** did it. **Not part of the CIA triad** |
| **Salt vs Key** | A salt needs to be **unique**, not secret. It defeats **rainbow tables** |
| ⭐ **Data at rest / in transit / in use** | At rest = stored. In transit = moving. **In use = in memory, hardest to protect** — encryption can't cover it |
| ⭐ **Clearing vs Purging vs Destruction** | Clearing = **overwrite**, media reusable. Purging = degauss/crypto-erase, **resists lab recovery**. Destruction = **physical** |
| ⭐ **Deleting vs Sanitising** | Deleting removes the **pointer** — the data remains (**remanence**). It is not sanitisation |
| **Degaussing vs SSDs** | Degaussing is **magnetic only**. It does **nothing** to an SSD |
| ⭐ **Data owner vs Data custodian** | Owner **decides** (classification, access) — a **business** role, **accountable**. Custodian **implements** — usually IT, **responsible** |
| **Data owner vs Data steward** | Owner = **sensitivity and access**. Steward = **data quality and meaning** |
| ⭐ **Least privilege vs Least functionality** | Least privilege limits the **person**. Least functionality limits the **system** |
| **Baseline vs Golden image** | Baseline = the **approved configuration**. Golden image = a **build template** made from it |
| ⭐ **Vulnerability scanning vs Penetration testing** | Scanning = **automated, known issues, broad, detective**. Pen test = **human, exploitation, deep** |
| ⭐ **Logging vs Monitoring** | Logging **records**. Monitoring **notices**. Logs nobody reviews detect nothing |
| ⭐ **Ingress vs Egress monitoring** | Ingress = attacks coming **in**. Egress = **data exfiltration** going **out** |
| **Emergency vs Unauthorised change** | Emergency = **accelerated approval + retrospective documentation**. Unauthorised = **no approval at all** |
| ⭐ **AUP vs BYOD** | AUP = **our** systems. BYOD = **your own device** used for work |
| ⭐ **Event vs Incident** | Event = **any observable occurrence**, neutral. Incident = **actually or potentially jeopardises** C, I or A |
| ⭐ **Incident vs Breach** | Breach = data **actually disclosed**. **Ransomware encryption = incident. Ransomware leak = breach** |
| **Alert vs Incident** | An alert is a **claim** needing triage. Many are false positives |
| ⭐ **Containment vs Eradication** | Containment **stops the spread**. Eradication **removes the cause** — including the attacker's access, not just malware |
| **Eradication vs Recovery** | Eradication removes the cause. Recovery **restores service** and verifies clean |

---

## 🚨 Domain 2 · Security Governance

| Pair | The difference |
|---|---|
| ⭐ **RTO vs RPO** | **RTO = time to restore, looks FORWARD.** **RPO = data loss, looks BACKWARD.** The **P** in RPO is the **point** you go back to |
| ⭐ **RPO vs Backup frequency** | RPO is **bounded by** backup frequency. Nightly backups → RPO of up to 24 hours |
| ⭐ **RTO vs MTD** | MTD = the **maximum** the business tolerates. RTO is a **target that must fit inside it**. RTO ≤ MTD |
| **RTO vs WRT** | RTO ends when **systems are back**. WRT is **catching up the work** afterwards |
| **MTBF vs MTTR** | MTBF = how **often** it fails (reliability). MTTR = how **fast** it's fixed (maintainability). **Both are hardware metrics, not recovery objectives** |
| ⭐ **Business continuity vs Disaster recovery** | Continuity = **DURING** the disruption, whole business. Recovery = **AFTER**, mainly IT. **DR is a subset of BC** |
| ⭐ **BIA vs Risk assessment** | BIA asks **"what if it stops"** — impact, **cause-agnostic**. Risk assessment asks **"what could happen"** — threats and likelihood |
| ⭐ **Incremental vs Differential** | Incremental = since the **last backup of any kind** — fast backup, **slow restore, need them all**. Differential = since the **last full** — slower backup, **fast restore, need only the latest** |
| ⭐ **Cold vs Warm vs Hot site** | Cold = **space and power only** (weeks). Warm = **equipment, data restored** (hours–days). Hot = **equipped + current data** (minutes–hours) |
| ⭐ **Parallel vs Full interruption test** | Parallel = recovery brought up, **production keeps running**. Full interruption = **production switched off** |
| **Walkthrough vs Simulation** | Walkthrough = the team **talks** it through. Simulation = it is **acted out** |
| ⭐ **Awareness vs Training vs Education** | Awareness makes you **notice**. Training teaches you **how**. Education explains **why** |

---

## 🆕 New on the live outline

| | Pair | The one-line answer |
|:--:|---|---|
| ⭐ **KRI vs KPI** | KRI **warns** of rising risk. KPI **grades** current performance against a target |
| ⭐ **Due diligence vs Due care** | Diligence = investigate **before**. Care = act reasonably, **ongoing** |
| ⭐ **SAST vs DAST** | SAST reads **source code**, app not running. DAST attacks a **running** app |
| **Black box vs White box vs Grey box** | **No** knowledge vs **full** knowledge vs **partial** knowledge before a pen test |
| **IOC vs IOA** | IOC = static **artefact** (easy to change). IOA = **behaviour/intent** (harder to change) |
| **Tailgating vs Piggybacking** | Tailgating = **without** consent. Piggybacking = **with** consent |
| **Rogue AP vs Evil twin** | Rogue AP = unauthorised, from **inside**. Evil twin = impersonation, from **outside** |
| **Bluesnarfing vs Bluebugging** | Snarfing steals **data**. Bugging takes **control** — more severe |
| **VLAN vs Micro-segmentation** | VLAN = coarse, zone-level. Micro-segmentation = fine, **workload-level** |
| **Governance (Domain 2) vs Incident Response (Domain 5)** | Governance = **before** anything happens (GRC, BC/DR, awareness). IR = **after** an incident is declared |
| **EOL/EOS vs "old"** | EOL/EOS specifically means **no more vendor patches** — age alone isn't the risk |
| **CAT vs the old linear format** | CAT: **cannot generally go back** to an answered item. Old format allowed flag-and-return |
| ⭐ **WPA-Personal vs WPA-Enterprise** | Personal = **one shared passphrase** for everyone. Enterprise = **individual credentials** via 802.1X/RADIUS, revocable one at a time |
| **UTM vs NGFW** | UTM = **one box, many functions**, simplicity. NGFW = **deep inspection**, built around the firewall |
| **ICS priority order vs standard IT (CIA)** | ICS often flips to **availability + integrity first**; standard IT usually leads with confidentiality |

---

## 🎯 The twelve that cost the most marks

If you have ten minutes before the exam, these are the ones.

| | Pair | The one-line answer |
|:--:|---|---|
| 1 | **RTO vs RPO** | RTO = time to restore (forward). RPO = data loss (backward) |
| 2 | **DAC vs MAC** | DAC: the **owner** decides. MAC: the **system** decides, owner cannot override |
| 3 | **IDS vs IPS** | IDS **detects**. IPS **prevents** |
| 4 | **Encryption vs Hashing** | Encryption is reversible with a key. Hashing is one-way. **Passwords are hashed** |
| 5 | **Backups are corrective** | Not preventive. Most-missed control classification |
| 6 | **Ransomware = availability** | Encryption removes access. A **leak** is the confidentiality part |
| 7 | **Threat vs Vulnerability** | Threats are **events**. Vulnerabilities are **conditions** |
| 8 | **Fail-safe vs Fail-secure** | Safe = unlocks, protects **people**. Secure = locks, protects **assets** |
| 9 | **Avoid vs Mitigate** | Avoid = **stop the activity**. Mitigate = controls, activity continues |
| 10 | **Only guidelines are optional** | Policy, standard and procedure are all mandatory |
| 11 | **In IaaS you patch the OS** | And data + access are yours in **every** cloud model |
| 12 | **Public encrypts, private decrypts. Private signs, public verifies.** | The private key does what only you should be able to do |

---

<div align="center">
<sub><a href="README.md">← back to 06 · Term Bank</a></sub>
</div>
