<div align="center">

<img src="assets/repo-banner.svg" alt="ISC2 CC" width="100%">

# 🎓 EXAM DAY

### *The one page. Read it twice on 4 November, once at breakfast on the 5th, then close it.*

[![Exam](https://img.shields.io/badge/Thursday-5%20November%202026-12B5A5?style=for-the-badge)](#)
[![Format](https://img.shields.io/badge/100--125%20items%20·%20CAT%20·%20700%2F1000-0d2b33?style=for-the-badge)](#)

</div>

---

> [!CAUTION]
> **Nothing new goes in from here.** If it is not on this page, you are not learning it now. Late
> cramming of unfamiliar material displaces what you already know and costs more marks than it
> adds.

---

## 🧠 The four words that decide scenario questions

> ## **People · Paper · Permission · Ports**

| | |
|---|---|
| **People** | Is anyone in danger? Safety and evacuation come first. **Always. No exceptions.** |
| **Paper** | Is there a documented plan or policy? **Follow it.** |
| **Permission** | Whose decision is this? Has the right person been told? |
| **Ports** | **Only now** do you touch the technology |

**Your working instinct starts at Ports. The exam starts at People.**

---

## ⚙️ How to sit it — live CAT format

- **100–125 items · up to 2 hours · CAT delivery (Computerized Adaptive Testing) · 700/1000 to
  pass.** 700 is a **scaled** score, **not 70%**.
- **No negative marking.** A blank and a wrong answer both score zero — but on CAT, guess and
  move on when the interface allows it, because you generally **cannot go back**.
- **There is no flag-and-return.** Commit to each item once. There is no second pass to lean on.
- **One-minute rule, revised.** Take your best ~60 seconds of deliberation, then submit for real
  — that decision is close to final.
- **Find the qualifier first:** FIRST · BEST · PRIMARY · MOST · LEAST · NOT · EXCEPT.
- **NOT / EXCEPT / LEAST:** say the word in your head. *Three are true — hunt the false one.*
- **Delete:** absolutes (*always, never, completely eliminates*), wrong level of authority, wrong
  phase.
- **Change your mind only BEFORE you submit**, and only if you can say why in a sentence. Once
  you move on, let it go — there is no coming back to it.
- **Pick the boring textbook answer**, not the clever one.
- Some items are **unscored pretest questions.** A bizarre question may be worth nothing — do not
  let it rattle you, and don't let a rattled answer cost you the next item too.

---

## 🔝 The twelve that cost the most marks

| | | |
|:--:|---|---|
| 1 | **RTO vs RPO** | RTO = **time to restore** (forward). RPO = **data loss** (backward) |
| 2 | **DAC vs MAC** | DAC: the **owner** decides. MAC: the **system** decides, owner **cannot override** |
| 3 | **IDS vs IPS** | I-**D**-S **detects**. I-**P**-S **prevents** |
| 4 | **Encryption vs hashing** | Encryption reversible with a key. Hashing one-way. **Passwords are hashed** |
| 5 | **Backups are CORRECTIVE** | Not preventive. Most-missed classification on the paper |
| 6 | **Ransomware = AVAILABILITY** | Encryption removes access. A **leak** is the confidentiality part |
| 7 | **Threat vs vulnerability** | Threats are **events**. Vulnerabilities are **conditions** |
| 8 | **Due diligence vs due care** | Diligence = investigate **before**. Care = act reasonably, **ongoing** |
| 9 | **Avoid vs mitigate** | Avoid = **stop the activity**. Mitigate = controls, activity continues |
| 10 | **Only guidelines are optional** | Policy, standard and procedure are all mandatory |
| 11 | **In IaaS YOU patch the OS** | And data + access are yours in **every** cloud model |
| 12 | **Key direction** | **Public encrypts, private decrypts. Private signs, public verifies** |

---

## 🧭 Domain 1 · Security Principles · 24%

- **See · Change · Reach** — Confidentiality, Integrity, Availability. **DAD** mirrors it:
  Disclosure, Alteration, Destruction.
- **Ransomware encryption = availability.** Accidental disclosure **is** a confidentiality failure —
  **intent is irrelevant**.
- **Integrity** = no unauthorised change **AND** change is detectable. Covers accidental corruption.
- **Availability includes "timely"** — a lockout of legitimate users is an availability failure.
- **Know · Have · Are.** **MFA = two or more DIFFERENT categories.** Count letters, not credentials.
- **Password + security question is NOT MFA.** Two biometrics is NOT MFA. **SMS code IS a valid
  possession factor.**
- **FAR** = impostor accepted (**the security failure**). **FRR** = valid user rejected. **CER** =
  where they cross; lower is better.
- **Biometrics' weakness: they cannot be reissued.**
- **Identification = the claim. Authentication = the proof. Authorisation = what you may do.**
- **Logged in but denied the file = authorisation working**, not an authentication failure.
- **Non-repudiation = "you can't say it wasn't you."** Digital signature is the mechanism.
  **NOT part of the CIA triad.**
- **Confidentiality protects data. Privacy governs what you're PERMITTED to do with it.**
- **PII** identifies a person **alone or in combination**. **Owner decides, custodian implements.**
- **Anonymisation is irreversible. Pseudonymisation is reversible — still personal data.**
- **GDPR** = EU people, 72-hour notice, applies by whose data. **HIPAA** = health. **PCI DSS** =
  cards, **a contract not a law**. **SOX** = financial reporting.
- **A threat exploits a vulnerability to harm an asset. Risk = likelihood × impact.**
- **Threats need not be human or malicious.** **Unpatched software = a vulnerability**, not a risk.
- **Risk lifecycle: Identify → Assess → Treat → Monitor**, then back to Identify. Never stops.
- **Inherent** = before controls. **Residual** = after. **Residual is never zero.**
- **SLE = AV × EF. ALE = SLE × ARO.** **EF is a percentage.** **ARO is per year** — once in 10
  years = **0.1**.
- **A control should not cost more than the ALE.**
- **Qualitative** = words, fast, no data, handles intangibles. **Quantitative** = numbers, needs
  data, justifies spend.
- **Four treatments: Accept · Avoid · Mitigate · Transfer.** *Take it, ditch it, shrink it, share
  it.*
- **Transfer moves financial loss only — never accountability, never likelihood.**
- **Controls have TWO axes: TYPE and FUNCTION.** Types = **T**echnical, **A**dministrative,
  **P**hysical.
- Functions in time order: **deter → prevent → detect → correct**, plus **directive** and
  **compensating**.
- **Backups = corrective. Awareness training = administrative + preventive. Access review =
  administrative + DETECTIVE.**
- **Compensating = the primary control isn't feasible** (can't patch → segment).
- **Policy → Standard → Procedure → Guideline.** *What · What exactly · How · Maybe.*
- **Numbers mean standard. Steps mean procedure. "Should" means guideline.**
- **ISO and CIS are named examples of standards/frameworks** — not a separate document type.
- **Senior management approves policy, sets risk tolerance, and accepts risk. You never do.**
- **Canons, in order — the order IS the ranking:**
  **1** protect society · **2** act legally and honourably · **3** serve principals · **4** protect
  the profession.
- **Public → Legal → Employer → Profession.** An employer's instruction never legitimises an
  illegal act.
- **Due diligence = investigate BEFORE. Due care = act reasonably, ONGOING.** Negligence =
  failure of due care.

---

## 🌐 Domain 4 · Networking and Cloud Security Concepts · 21.3%

- **All People Seem To Need Data Processing** — Application, Presentation, Session, Transport,
  Network, Data Link, Physical (7→1).
- **The address tells you the layer: MAC = 2 · IP = 3 · Port = 4.**
- **Hub = 1. Switch = 2. Router = 3. Basic firewall = 3+4.**
- **PDUs going down: Data → Segment → Packet → Frame → Bits.**
- **ARP is LAYER 2.** **TLS/SSL is LAYER 6.** The two most-missed placements.
- **TCP/IP has 4 layers**, and calls layer 3 **Internet**, not Network.
- **TCP** = connection-oriented, reliable, slower. **UDP** = connectionless, unreliable, faster.
- **Handshake: SYN → SYN-ACK → ACK.**
- *Switches work inside; routers work between.* **Hub floods every frame → eavesdropping risk.**
- **Star = most common. Mesh = most resilient. Bus = one break kills it.**
- **Private: `10.0.0.0/8` · `172.16`–`172.31` ONLY · `192.168.0.0/16`.**
  **`172.15` and `172.32` are PUBLIC.**
- **`127.0.0.1`** = loopback. **`169.254.x.x`** = APIPA = **DHCP FAILED**.
- **IPv4 = 32-bit. IPv6 = 128-bit**, IPSec built in.
- **DHCP gives an address. DNS finds an address. NAT swaps an address.**
- **NAT's purpose = address conservation. NOT a security control, NOT a firewall.**
- **DNSSEC = authenticity + integrity. It signs; it does NOT encrypt.**
- **Ports: 20/21 FTP · 22 SSH/SFTP · 23 Telnet · 25 SMTP · 53 DNS · 67/68 DHCP · 69 TFTP ·
  80 HTTP · 110 POP3 · 143 IMAP · 161/162 SNMP · 389 LDAP · 443 HTTPS · 445 SMB · 636 LDAPS ·
  3389 RDP.**
- **Well-known = 0–1023.** **Telnet(23)→SSH(22) · FTP(21)→SFTP(22) · HTTP(80)→HTTPS(443) ·
  LDAP(389)→LDAPS(636).**
- **SMTP sends (25). POP3 (110) and IMAP (143) receive.** **DNS is UDP 53.**
- **Malware sorts by HOW IT SPREADS: Virus** needs a user · **Worm** self-spreads · **Trojan** is
  disguised.
- **Rootkit HIDES. Backdoor OPENS. Logic bomb has a TRIGGER.**
- **Zero-day = NO PATCH EXISTS** (≠ unpatched).
- **Phishing** broad · **spear** targeted · **whaling** = executives · **vishing** voice ·
  **smishing** SMS. **Defence = awareness training.**
- **DDoS = many sources.** **SYN flood** fills the half-open table.
- **Eavesdropping = PASSIVE. On-path = ACTIVE.**
- **Encryption does NOT stop replay** — use **timestamps, sequence numbers, nonces**.
- **SQLi attacks the DATABASE. XSS attacks OTHER USERS' browsers.** **Input validation** defeats
  injection.
- **Brute force** = every combination · **dictionary** = a list · **spraying** = one password across
  many accounts (**dodges lockout**) · **stuffing** = pairs breached elsewhere.
- **Salting defeats rainbow tables.** **Side-channel** = timing, power, emissions.
- **I-D-S = Detect (alerts, out of band, DETECTIVE). I-P-S = Prevent (blocks, in line,
  PREVENTIVE).**
- **Signature** = known patterns, **misses zero-days**. **Anomaly** = catches unknown, more false
  positives.
- **FALSE NEGATIVE is the dangerous error.**
- **Stateless** = each packet alone. **Stateful** = tracks connections. **Default deny.**
- **Forward proxy faces CLIENTS. Reverse proxy faces SERVERS. WAF = layer 7.**
- **Segmentation LIMITS LATERAL MOVEMENT** — contains, doesn't prevent.
- **Micro-segmentation = workload-level**, stopping lateral movement *inside* a zone.
- **DMZ = screened subnet.** Internet may reach it; **it must NOT freely reach the internal
  network.**
- **VLAN = LOGICAL only** (VLAN hopping). **Air gap = strongest.**
- **A VPN protects data IN TRANSIT between endpoints — NOT the endpoints, NOT data at rest.**
- **Site-to-site** = two networks, always on. **Remote access** = one device, user-initiated.
- **FULL tunnelling = more secure. SPLIT = faster, bypasses inspection.**
- **IPSec = layer 3. Tunnel mode wraps the whole packet; transport mode the payload only.**
- **WEP broken · WPA2 acceptable · WPA3 current.** **Evil twin impersonates an SSID** (outside).
  **Rogue AP** = unauthorised, from **inside**.
- **Bluejacking (messages) < Bluesnarfing (data) < Bluebugging (control).**
- **ICS/SCADA control physical processes. IoT is broader consumer/commercial connectivity.**
  ICS/embedded risk: **long lifespan, hard to patch, reboot can be unsafe.**
- **Hidden SSID and MAC filtering are OBSCURITY, not security.**
- **Five cloud characteristics:** on-demand self-service, broad network access, resource
  pooling, rapid elasticity, measured service.
- **IaaS: YOU patch the OS. PaaS: apps + data. SaaS: data + access only.**
  **Data, users and access are yours in EVERY model. Accountability never transfers.**
- **Community cloud** = shared by orgs with **common requirements**.
- **Type 1 = bare metal.** **Containers share the host kernel → WEAKER isolation than VMs.**
- **Misconfiguration is the leading cause of cloud breaches.**
- **Zero trust = "never trust, always verify."** No trust from **network location**.
  **Verify explicitly · least privilege · assume breach.**
- **Defence in depth needs INDEPENDENT layers.** Ask: *what single event defeats more than one?*
  **More controls ≠ more depth.**
- **SLA** = measurable service levels, binding. **MOU** = intent, **usually NOT binding**.
  **MSA** = umbrella; **SOW** = the specific job.

---

## 🚪 Domain 3 · IAM Concepts · 20%

- **Subject requests (ACTIVE), object is requested (PASSIVE), rule decides.**
- **ACL is on the OBJECT** ("who may access me"). **Capability list is on the SUBJECT.**
- **Default deny.** **Reference monitor: always invoked · tamper-proof · verifiable.**
- **Could you touch it?** Touchable = physical. Configured = logical. **Logical = technical.**
- **Lockout stops guessing. Timeout stops loitering.** **Audit logs and access reviews are
  DETECTIVE.**
- **A constrained interface is NOT an access control** — the check must be at the point of access.
- **Who decides? DAC = OWNER · MAC = SYSTEM (labels + clearances, no override) · RBAC = ROLE ·
  ABAC = ATTRIBUTES.**
- **MAC tell:** "classified", "cannot grant an exception". **DAC tell:** "the owner chose".
  **RBAC tell:** "because of her job". **ABAC tell:** several different conditions together.
- **Security: MAC highest → DAC lowest.** **RBAC ≠ Rule-based** (system-wide rules, e.g. firewall).
- **Under MAC, clearance alone isn't enough — need to know applies.**
- **Least privilege = what you can DO. Need to know = what you can SEE.**
- **SoD = no one person completes a process alone.** Requires **collusion** to defeat.
- **SoD = different STEPS. DUAL CONTROL = the SAME action, two people.**
- **Mandatory vacation and job rotation are SECURITY controls** — someone else sits in the chair.
- **Privilege creep = accumulated over role changes. Privilege escalation = an attack.**
- **Privileged accounts can DISABLE THE LOGS.** **Separate admin account** — admins don't read
  email on it. **JIT beats standing privilege.** **Log to storage admins cannot edit.**
- **Break-glass use triggers an ALERT.** **Never a shared `admin` account.**
- **Joiner · Mover · Leaver. MOVER is the stage that fails** — grant happens, **revoke doesn't**.
- **Provision from the ROLE, never by cloning a user.** **Hostile departure → remove access before
  or during notification.** **Disable first, delete later.**
- **Orphaned = no owner. Dormant = has an owner, unused.**
- **Access reviews are performed by the MANAGER or DATA OWNER** — not IT, not the user.
- **Physical access control is NOT a named Domain 3 objective anymore** — the surviving thread
  is physical *penetration testing*, in Domain 5.

---

## 🚨 Domain 2 · Security Governance · 17.3%

- **GRC = Governance, Risk, Compliance** — run together to stay aligned, not as three silos.
- **Governance sets direction. Risk treats threats to it. Compliance proves it's happening.**
- **GRC frameworks:** e.g. **COBIT** (IT governance), **NIST CSF** (risk).
- **This domain does NOT own incident response anymore** — IR is Domain 5.
- **The BIA comes FIRST.** It asks **"what if it STOPS"** and is **cause-agnostic**. Risk
  assessment asks **"what could HAPPEN"** — threats and likelihood.
- **BIA outputs: critical functions · impact over time · RTO and RPO · dependencies.**
- **RTO = TIME TO RESTORE, looks FORWARD. RPO = DATA LOSS, looks BACKWARD.**
- **The P in RPO is the POINT you go back to. The T in RTO is the TIME it takes.**
- **RPO is bounded by BACKUP FREQUENCY.** Nightly backups → up to 24 hours.
- **RTO ≤ MTD.** **WRT** = catching up after systems return; **RTO + WRT must fit inside MTD**.
- **MTBF and MTTR are HARDWARE metrics**, not recovery objectives.
- **CONTINUITY = DURING. RECOVERY = AFTER. DR is a SUBSET of BC.**
- **Continuity answers are often NON-TECHNICAL** — paper, phones, another site, another supplier.
- **The plan needs ACTIVATION CRITERIA, a named activator, and OFFLINE copies.**
- **One authorised spokesperson.** **Succession planning is a continuity control.**
- **Sites: COLD** (space + power, **weeks**) → **WARM** (equipment, data restored) → **HOT**
  (current data, minutes–hours) → **MIRRORED** (running duplicate).
  **Match the site to the RTO.** **Reciprocal agreements are unreliable.**
- **INCREMENTAL = since the last backup of ANY kind** — fast backup, **slow restore, need them
  all**. **DIFFERENTIAL = since the last FULL** — **fast restore, need only the latest**.
- **Testing ladder: read-through → walkthrough → simulation → PARALLEL → FULL INTERRUPTION.**
  **Parallel keeps production RUNNING. Full interruption switches it OFF.**
- **Backups must be TEST-RESTORED.** A successful job report proves nothing.
- **AWARENESS makes you notice · TRAINING teaches how · EDUCATION explains why.**
- **Awareness training = ADMINISTRATIVE + PREVENTIVE**, and the **standing answer to social
  engineering**.
- **The most valuable behaviour is REPORTING.** Simulations **teach, don't punish**. Track the
  **reporting rate**.
- **KRI warns of rising risk. KPI grades current performance against a target.**
- **Dashboard = continuous, technical audience. Scorecard/report = periodic, leadership audience.**

---

## ⚙️ Domain 5 · Security Operations and Incident Response · 17.3%

- **Three states: AT REST · IN TRANSIT · IN USE. IN USE is the hardest** — it must be decrypted to
  be processed.
- **Classify at CREATION.** **Archived data is still classified.**
- **Masking hides a value for viewing; encryption protects a value for later recovery.**
- **Delete ≠ sanitise** (remanence). **Clearing** = overwrite, reusable. **Purging** = degauss /
  crypto-erase. **Destruction** = physical.
- **DEGAUSSING DOES NOTHING TO SSDs.** **Crypto-shredding = destroy the key** — the cloud answer.
- **Retention past the period is a LIABILITY.** **Legal hold suspends destruction.**
- **OWNER decides (classification, access). CUSTODIAN implements. USER follows.**
  **Owner is ACCOUNTABLE; custodian is RESPONSIBLE.**
- **Classification is set by IMPACT** — not volume, format or department. **Fewer levels are
  better.**
- **AGGREGATION:** harmless fields combined can need a **higher** classification.
- **Symmetric = one key, FAST**; weakness is **key distribution**. **Asymmetric = a pair, SLOW**;
  solves it.
- **PUBLIC ENCRYPTS, PRIVATE DECRYPTS. PRIVATE SIGNS, PUBLIC VERIFIES.**
  *The private key does what only you should be able to do.*
- **Hybrid: asymmetric exchanges the session key, symmetric encrypts the traffic.** That's TLS.
- **A shared symmetric key gives NO non-repudiation.**
- **Security rests on KEY secrecy, not ALGORITHM secrecy.** Obscurity is never the answer.
- **HASHING IS NOT ENCRYPTION** — one-way, no key, fixed length, for **integrity**.
- **PASSWORDS ARE HASHED, NEVER ENCRYPTED.** **Salt defeats rainbow tables** (unique, not secret).
- **Digital signature = hash under the private key. Gives integrity + authentication +
  non-repudiation — NOT confidentiality.** A signed message is still readable.
- **MD5 and SHA-1 are BROKEN by collisions.** Use **SHA-256**.
- **"Harvest now, decrypt later"** — why quantum-resistant crypto matters before quantum
  computers can actually break encryption. Mainly a **public-key (asymmetric)** concern.
- **Logging RECORDS. Monitoring NOTICES.** Logs nobody reviews detect **nothing**. Both
  **detective**.
- **Every entry: who · what · when · where · outcome. Log FAILURES too. Never log passwords.**
- **Centralise logs** — correlation, and evidence beyond an attacker's reach.
  **Protect them from admins.** **NTP time sync is a prerequisite.**
- **INGRESS finds attacks in. EGRESS finds DATA EXFILTRATION out.**
- **Alert fatigue → tune and prioritise**, not more rules.
- **Correlation links related events. Prioritisation ranks them by severity + confidence.**
- **CTI levels: Strategic (leadership) → Operational (campaigns) → Tactical (IOCs).**
- **Threat actors by capability:** nation-state/APT > organised crime > hacktivist > insider >
  script kiddie.
- **A threat framework (e.g. MITRE ATT&CK)** is a shared vocabulary for attacker behaviour.
- **Funnel: EVENT → ALERT → INCIDENT → BREACH.**
- **Event** = neutral occurrence. **Incident** = actually **or potentially** jeopardises C, I or A.
  **Breach** = data **actually** disclosed. **Accidental disclosure is still a breach.**
- **Phases: PREPARATION → DETECTION & ANALYSIS → CONTAINMENT → ERADICATION → RECOVERY →
  POST-INCIDENT.**
- **The FIRST action is ALWAYS: follow the plan and notify.** Containment is a **phase**, not a
  first move.
- **Eradicate** = remove the cause **including attacker access**. **Recover** = restore **and
  verify clean**.
- **Order of volatility: memory before disk.** **Chain of custody** unbroken.
- **Hardening: Remove → Disable → Change defaults → Patch → Restrict.**
  *A service that isn't running can't be exploited.*
- **CHANGE DEFAULT CREDENTIALS** — they're in the vendor manual.
- **Least FUNCTIONALITY limits the SYSTEM. Least PRIVILEGE limits the PERSON.**
- **Patch process: identify → assess → TEST → deploy → verify.** **Can't patch → SEGMENT.**
- **INVENTORY IS THE FIRST STEP.** *You cannot protect what you don't know you have.*
- **Shadow IT** = services outside every control. **Configuration drift** = gradual divergence.
- **Every change needs a BACKOUT PLAN, before approval.**
  **Emergency change = accelerated approval + retrospective documentation.**
- **"What changed?" is the first question in every incident.**
- **EOL/EOS = no more vendor security patches.** Risk increases indefinitely from that point.
  **"Still works fine" is irrelevant.** Can't retire on time? **Compensating controls.**
- **Red = attacks. Blue = defends. Purple = both, sharing findings DURING the exercise.**
- **SAST = source code, app not running. DAST = running app, code not examined.**
- **Vulnerability scanning is DETECTIVE**, checks against **known** issues. **Threat modeling** =
  design-time, the earliest of all these.
- **Physical penetration testing = phishing, tailgating, impersonation** (the outline's own
  three). **Tailgating = no consent. Piggybacking = with consent.**
- **POLICY → TRAINING → TECHNICAL CONTROL → MONITORING.** Policy is the **BEST first step** for
  behaviour problems.
- **AUP = OUR systems** (and establishes monitoring). **BYOD = YOUR device** — policy first, MDM
  second. **Containerisation** enables selective wipe.
- **Password POLICY is administrative; the setting enforcing it is TECHNICAL.**
- **Clean desk = the physical session timeout.** **A policy nobody read is not a control.**

---

## 🌅 The last 24 hours

| When | Do |
|---|---|
| **Tue 3 Nov** | Review Mock 3 misses. Finish this page. **Last day of new material.** |
| **Wed 4 Nov** | **This page only.** Once in the morning, once in the evening. Nothing else. Sleep early. |
| **Thu 5 Nov, breakfast** | Read the **twelve** and the **four words**. Then close it. |
| **In the room** | Work top to bottom. Commit to each item once. **No going back on CAT.** |

---

<div align="center">

## **People · Paper · Permission · Ports**

### **Commit to each item. Guess rather than blank. There is no going back.**

<sub>You have read every topic, drilled 438 questions and sat three papers. Trust the preparation.</sub>

<br>

<sub><a href="README.md">← back to the repo index</a></sub>

</div>
</content>
