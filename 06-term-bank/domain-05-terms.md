<div align="center">

<img src="assets/module-06-banner.svg" alt="06 · Term Bank" width="100%">

# ⚙️ Domain 5 terms · Security Operations

[![Module](https://img.shields.io/badge/Module-06_Term_Bank-0d2b33?style=flat-square)](README.md)
[![Domain](https://img.shields.io/badge/Domain-5%20·%2018%25-5C7CFA?style=flat-square)](../05-security-operations/README.md)
[![Terms](https://img.shields.io/badge/Terms-80-57606A?style=flat-square)](#)

📌 *Broad but shallow. The encryption and hashing terms carry the most weight — especially the key-direction rule.*

</div>

---

## 🗄️ Data handling

| Term | Meaning |
|---|---|
| **Data at rest** | Stored — on disk, in a database, on a backup tape |
| **Data in transit** | Moving across a network. Also **data in motion** |
| **Data in use** | Loaded in memory, being processed. **The HARDEST to protect** |
| **Why in use is hard** | It must be **decrypted to be processed** — encryption cannot cover it |
| **Data lifecycle** | Create → store → use → share → archive → **destroy** |
| **When to classify** | **At creation** — every later decision depends on it |
| **Archived data** | **Still classified data.** Cheaper storage does not reduce sensitivity |
| **Retention** | How long data is kept before disposal |
| **Retention reality** | Keeping data past its period is a **LIABILITY**, not an asset |
| **Legal hold** | Suspends normal destruction for litigation or investigation |
| **Remanence** | Residual data remaining after an attempt to remove it |
| **Deleting** | Removes the **pointer** only. The data remains. **Not sanitisation** |
| **Clearing** | **Overwriting** so ordinary recovery fails. **Media reusable** |
| **Purging** | Degaussing or crypto-erase. **Resists laboratory recovery** |
| **Destruction** | Shredding, incineration, pulverising. **Media unusable** |
| **Degaussing** | Magnetic erasure. **Magnetic media ONLY — does nothing to an SSD** |
| **Crypto-shredding** | **Destroying the encryption key.** The answer for **cloud storage** |
| **SSD sanitisation** | Built-in secure erase, crypto-shredding, or physical destruction |

---

## 🏷️ Data classification

| Term | Meaning |
|---|---|
| **Data classification** | Categorising data by sensitivity so protection is proportionate |
| **What sets the level** | The **IMPACT** of disclosure, alteration or loss. Not volume, format or department |
| **Data owner** | **DECIDES** classification and access. A **BUSINESS** role. **ACCOUNTABLE** |
| **Data custodian** | **IMPLEMENTS** protection — storage, backups, permissions. Usually **IT**. **RESPONSIBLE** |
| **Data steward** | Responsible for data **quality and meaning** within a business area |
| **Data user** | Accesses the data and **follows the handling rules** |
| **Commercial scheme** | Public → Internal → Confidential → Restricted |
| **Government scheme** | Unclassified → Confidential → Secret → Top Secret |
| **How many levels** | **Fewer is better** — three or four. A scheme nobody applies correctly is useless |
| **Labelling** | Marking data with its classification |
| **Handling requirements** | What a classification obliges — storage, transmission, disposal |
| **Aggregation** | Low-sensitivity items combined becoming **more sensitive** |
| **The dataset rule** | Takes the level of its **most sensitive element**, or higher if aggregation raises it |
| **The label is a floor** | At least that protection; stronger is always fine |
| **Reclassification** | Changing a label as sensitivity changes. The **owner's** decision |
| **Declassification** | Lowering a classification when data is no longer sensitive |

---

## 🔐 Encryption

| Term | Meaning |
|---|---|
| **Plaintext** | The readable data before encryption |
| **Ciphertext** | The unreadable data after encryption |
| **Symmetric encryption** | **ONE shared key**, encrypts and decrypts. **FAST** |
| **Symmetric's weakness** | **KEY DISTRIBUTION** — getting the key to the other party safely |
| **Asymmetric encryption** | **A KEY PAIR** — public and private. **SLOW**. Solves key distribution |
| **AES** | The standard **symmetric** algorithm |
| **RSA** | A widely used **asymmetric** algorithm |
| **For confidentiality** | **Encrypt with the RECIPIENT'S PUBLIC key.** Only their private key decrypts |
| **For non-repudiation** | **Sign with YOUR OWN PRIVATE key.** Anyone verifies with your public key |
| **The rule** | **Public encrypts, private decrypts. Private signs, public verifies** |
| **Why** | **The private key does the thing only you should be able to do** |
| **Hybrid model** | **Asymmetric exchanges the session key; symmetric encrypts the traffic.** This is TLS |
| **Shared symmetric key** | Provides **NO non-repudiation** — either party could have produced it |
| **PKI** | The system of certificate authorities binding public keys to identities |
| **CA** | Certificate Authority — verifies identity and issues certificates |
| **Digital certificate** | Binds a public key to a **verified identity** |
| **CRL** | Certificate Revocation List — certificates revoked before expiry |
| **OCSP** | Real-time check of a single certificate's revocation status |
| **Kerckhoffs's principle** | Security rests on **KEY secrecy, never ALGORITHM secrecy** |
| **Security through obscurity** | Relying on a secret algorithm. **Always the wrong answer** |
| **Key length note** | **Not comparable across families** — 256-bit symmetric ≠ 256-bit asymmetric |

---

## #️⃣ Hashing

| Term | Meaning |
|---|---|
| **Hash function** | **ONE-WAY**, no key, **fixed-length** output from any input |
| **Hash / digest** | The output of a hash function |
| **Purpose** | **INTEGRITY** — and storing passwords |
| **Hashing vs encryption** | Encryption is **reversible with a key**. Hashing is **one-way with no key** |
| **Passwords** | **HASHED, NEVER ENCRYPTED.** Encryption's key would recover them all |
| **Deterministic** | The same input always produces the same hash |
| **Avalanche effect** | A tiny input change produces a **completely different** hash |
| **Collision** | Two **different** inputs producing the **same** hash. A weakness |
| **Collision resistance** | It should be infeasible to find two inputs with the same hash |
| **Hashing's control function** | **DETECTIVE** — it detects change, it does not prevent it |
| **Salt** | **Unique random data** added per password before hashing |
| **What salting defeats** | **RAINBOW TABLES** |
| **Salt secrecy** | It needs to be **unique**, not secret. Stored alongside the hash |
| **SHA-256 / SHA-2** | **Current standard** |
| **MD5** | **BROKEN** by collisions. Not for security |
| **SHA-1** | **BROKEN** by collisions. Deprecated |
| **Digital signature** | A **hash encrypted with the signer's private key** |
| **Signature provides** | **Integrity + authentication + non-repudiation** |
| **Signature does NOT provide** | **CONFIDENTIALITY.** A signed message is still readable |
| **Checksum** | Detects accidental corruption. Not cryptographically strong |
| **HMAC** | A hash combined with a secret key — integrity **and** authenticity |

---

## 🔩 Hardening and configuration

| Term | Meaning |
|---|---|
| **Hardening** | Reducing a system's **attack surface** by removing and securing |
| **Attack surface** | The total set of points where an attacker could attempt entry |
| **The order** | **Remove → Disable → Change defaults → Patch → Restrict** |
| **Least functionality** | Only the services and features the **SYSTEM** requires |
| **Least privilege** | Only the access the **PERSON** requires |
| **The key sentence** | **A service that is not running cannot be exploited** |
| **Default credentials** | Built-in usernames and passwords. **Publicly documented.** Change them |
| **Baseline** | The defined **minimum secure configuration** for a class of system |
| **Baseline's two jobs** | New systems are **built from it**; existing systems are **measured against it** |
| **Golden image** | A hardened, approved build template |
| **Configuration drift** | Systems **gradually diverging** from the baseline. Invisible — nothing breaks |
| **Patch management** | Identify → assess → **TEST** → deploy → verify |
| **Testing patches** | **Test before production.** Untested emergency rollouts cause outages |
| **Cannot patch** | **Segment it** — a **compensating control** |
| **Vulnerability scanning** | Automated, **known** issues, broad. **DETECTIVE** |
| **Penetration testing** | **Human**, active exploitation attempts, deep on fewer things |
| **Configuration management** | Establishing and maintaining the **known state** of systems |
| **Asset inventory** | What you have. **THE FIRST STEP in securing anything** |
| **Why inventory first** | **You cannot protect what you do not know you have** |
| **Shadow IT** | Systems and services in use **without IT's or security's knowledge** |
| **Change control** | Request → assess → approve → test → implement → verify **and document** |
| **Backout plan** | How to **reverse** a change. **Defined BEFORE approval** |
| **CAB** | Change Advisory Board — reviews and approves significant changes |
| **Emergency change** | **Accelerated approval + retrospective documentation.** Not an absent process |
| **Unauthorised change** | **No approval at all.** Not the same as an emergency change |
| **The incident question** | **"What changed?"** — the first question in every incident |

---

## 📊 Logging and monitoring

| Term | Meaning |
|---|---|
| **Logging** | **RECORDING** events |
| **Monitoring** | **LOOKING at** those records and noticing when something is wrong |
| **The gap** | **Logs nobody reviews detect NOTHING.** Both are **detective** controls |
| **Every log entry** | **WHO · WHAT · WHEN · WHERE · OUTCOME** |
| **Log failures too** | Failed logins reveal brute force and spraying. Attacks start as failures |
| **Never log** | **Passwords, card numbers, personal data.** Logs are copied and widely read |
| **Centralisation, reason 1** | **Correlation** across sources |
| **Centralisation, reason 2** | **Log integrity** — an attacker on the host cannot delete shipped evidence |
| **Log protection** | Protected from modification **including by administrators** |
| **SIEM** | **Centralises, correlates and ALERTS** on log data |
| **Time synchronisation** | **NTP.** A prerequisite for sequencing events across systems |
| **Ingress monitoring** | Traffic **entering** — attacks |
| **Egress monitoring** | Traffic **LEAVING** — **data exfiltration**, command and control |
| **DLP** | Data Loss Prevention — detects or blocks sensitive data leaving |
| **Alert fatigue** | Too many alerts, especially false positives → analysts dismiss them |
| **Alert fatigue remedy** | **Tune and prioritise.** Not more rules |

---

## 📜 Policies and people

| Term | Meaning |
|---|---|
| **The order** | **POLICY → TRAINING → TECHNICAL CONTROL → MONITORING** |
| **The BEST first step** | For an organisation-wide behaviour problem: **the policy** |
| **AUP** | Acceptable Use Policy — what you may do with **OUR** systems |
| **AUP's second job** | Establishes that **monitoring occurs** — which matters legally |
| **BYOD** | Governs **YOUR OWN device** used for work. A **policy** problem first |
| **BYOD tension** | Remote wipe destroys **personal** data too |
| **Containerisation** | Separating work data so it can be **wiped alone** |
| **MDM** | Mobile Device Management — the **technology** enforcing device policy |
| **Change management policy** | Requires changes to follow a controlled process |
| **Privacy policy** | How personal data is collected, used, shared and protected |
| **Password policy** | **Administrative.** The system setting enforcing it is **technical** |
| **Data retention policy** | How long each data type is kept |
| **Clean desk policy** | Sensitive material secured when unattended. The **physical session timeout** |
| **Every policy needs** | Management approval · scope · responsibilities · **consequences** · review · acknowledgement |
| **Unread policy** | **Not a control.** Communication and acknowledgement are part of it |
| **Awareness** | Keeps security **in mind**. Everyone, continuous, shallow |
| **Training** | Teaches **specific skills** for a role |
| **Education** | Builds understanding of **why**. For security professionals |
| **Awareness training's classification** | **ADMINISTRATIVE + PREVENTIVE** |
| **The social engineering answer** | **Security awareness training.** Human vulnerability, human control |
| **Most valuable behaviour** | **REPORTING** — promptly, including one's own mistakes |
| **Phishing simulations** | **TEACH, do not punish.** Punishment hides mistakes |
| **The metric that matters** | **Reporting rate**, not just click rate. Track the trend |
| **Security culture** | Secure behaviour is normal; concerns are raised without fear |

---

<div align="center">
<sub><a href="README.md">← back to 06 · Term Bank</a> &nbsp;·&nbsp; <a href="most-confused-pairs.md">The most confused pairs →</a></sub>
</div>
