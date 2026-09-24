<div align="center">

<img src="../assets/module-04-banner.svg" alt="04 · Networking and Cloud Security Concepts" width="100%">

# 🦠 Network Threats

### *Who attacks, what malware does, and how people get tricked*

[![Module](https://img.shields.io/badge/Module-04_Network_Security-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2021.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~13%20min-57606A?style=flat-square)](#)

📌 *Rank threat actors, sort malware by HOW IT SPREADS (virus / worm / Trojan), know zero-day ≠ unpatched, and tell the social-engineering attacks apart.*

</div>

---

## 🧸 The big idea

Three ways a problem can get into a house:

- A **note hidden inside a book** only travels when someone lends the book on — **a person has to
  carry it**. That's a **virus**.
- A **fire** jumps from house to house on its own — **nobody helps it**. That's a **worm**.
- A **"free gift"** you happily carry inside, which turns out to be something nasty. That's a
  **Trojan**.

All three can end with the house ruined. What separates them is **how they get in and spread** —
not the damage they do. **Malware categories are about propagation, not payload.** Fix that and most
malware questions answer themselves.

Before the tricks come the **people behind them**, sorted by **motivation and capability**.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Threat actor** | Who carries out the threat. |
| **Insider threat** | A threat from someone with **legitimate access**. |
| **APT** | Advanced Persistent Threat — well-resourced, long-term covert access, usually state-linked. |
| **Malware** | Any software written to cause harm (umbrella term). |
| **Virus** | Attaches to a file; **needs a user to run it** to spread. |
| **Worm** | **Spreads by itself** over a network. |
| **Trojan** | Disguised as legitimate software; the user installs it. |
| **Rootkit** | **Hides** itself and other malware, often deep in the system. |
| **Backdoor** | A hidden way in that **bypasses** authentication. |
| **Logic bomb** | Dormant code that fires when a **condition** is met. |
| **Botnet** | Many compromised machines controlled together. |
| **Zero-day** | A flaw with **no patch**, unknown to the vendor. |
| **Social engineering** | Manipulating **people** rather than technology. |

---

## 🔍 The explanation

### Threat actors

<p align="center"><img src="diagrams/1.svg" alt="Threat actors ranked by capability: script kiddie using others' tools with low skill, hacktivist driven by a cause, organised crime driven by money and professional, nation state or APT patient, funded and highest; the insider sits apart with varying skill but already inside" width="880"></p>

| Actor | Motivation | Capability |
|---|---|---|
| **Script kiddie** | Curiosity, notoriety | **Low** |
| **Hacktivist** | A political or social cause | Low–medium; defacement, DDoS |
| **Organised crime** | **Money** | High — ransomware, fraud |
| **Nation state / APT** | Espionage, disruption | **Highest** — patient, funded, persistent |
| **Insider** | Grievance, money, or accident | Varies — **but already has access** |

> 🎯 "Long-term, stealthy, well-resourced access" in a stem → **APT**.

**The insider** is treated most seriously because they bypass the perimeter entirely:

| Type | Means |
|---|---|
| **Malicious** | Deliberate theft or sabotage |
| **Negligent** | Careless — falls for phishing, emails the wrong person |
| **Compromised** | A real user whose account an attacker controls |

> ⚠️ **Most insider incidents are NEGLIGENT, not malicious.**

Insider controls: least privilege, segregation of duties, access reviews, monitoring, background
checks, mandatory vacation and job rotation, a proper leaver process.

### Virus, worm or Trojan? — two questions

<p align="center"><img src="diagrams/2.svg" alt="If no human had to do anything and it spread itself across the network, it is a worm; if a human ran a file they already wanted, it is a virus hiding inside that file; if they were tricked into installing fake software, it is a Trojan" width="560"></p>

| | Spreads how | Needs a human? | Attaches to a file? |
|---|---|:--:|:--:|
| **Virus** | Travels with an infected file | ✅ | ✅ |
| **Worm** | **By itself** across the network | ❌ | ❌ standalone |
| **Trojan** | Disguised as something useful | ✅ they install it | ❌ |

> [!IMPORTANT]
> **Worm = spreads with NO user action.** Hundreds of machines infected in minutes, nobody clicking
> anything → worm.

### The rest of the malware family

| Malware | Does |
|---|---|
| **Ransomware** | Encrypts data, demands payment — an **availability** attack |
| **Spyware** / **keylogger** | Secretly collects information / records keystrokes |
| **Adware** | Unwanted adverts, often bundled |
| **Rootkit** | **Hides** — often below the OS; usually means rebuilding the machine |
| **Backdoor** | **Opens** a hidden way in |
| **Logic bomb** | Fires on a **condition** — e.g. "if my account is disabled, delete the database" |
| **Botnet** | Many compromised hosts used together (DDoS, spam) |
| **Fileless** | Runs in memory using legitimate system tools |

### Zero-day is not "unpatched"

<p align="center"><img src="diagrams/4.svg" alt="If the vendor doesn't know about a flaw and no patch exists, it is a zero-day; if a patch exists but you haven't applied it, it is simply unpatched, an operational failure" width="720"></p>

### Social engineering — attacking the person

| Attack | Means |
|---|---|
| **Phishing** | Fraudulent email, sent broadly |
| **Spear phishing** | Targeted at a **specific** person or organisation |
| **Whaling** | Spear phishing aimed at a **senior executive** |
| **Vishing** / **Smishing** | By **voice** call / by **SMS** |
| **Pretexting** | An invented story to seem legitimate |
| **Baiting** | Infected USB left for someone to find and plug in |
| **Shoulder surfing** | Watching someone type their password |
| **Dumpster diving** | Searching discarded material |

<p align="center"><img src="diagrams/3.svg" alt="Phishing is broad by email, spear phishing targets one named person, whaling targets a senior executive; vishing uses phone calls and smishing uses SMS text" width="700"></p>

<p align="center"><img src="diagrams/5.svg" alt="When someone gets through a secure door behind an authorised person, it is piggybacking if that person knew and held the door, and tailgating if they did not know" width="700"></p>

> 🎯 **The defence against social engineering is security awareness training** — the vulnerability
> is human.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Virus** | Needs a file **and** a user. | **Worm** — spreads by itself. |
| **Trojan** | Disguised software the user installs. | **Virus** — hides in a file the user already wanted. |
| **Rootkit** | **Hides**. | **Backdoor** — **opens** a way in. Often found together. |
| **Logic bomb** | Fires on a condition. | **Time bomb** — a logic bomb triggered by a date. |
| **Spear phishing** | One specific target. | **Whaling** (executive) / **phishing** (broad). |
| **Piggybacking** | Authorised person **consents**. | **Tailgating** — they didn't know. |
| **Zero-day** | **No patch exists.** | **Unpatched** — a patch exists, not applied. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** modern malware is modular — dropper, worm and ransomware in one.
>
> **On the exam:** the taxonomy is clean and defined by **propagation**. Answer on how it spreads.

> [!WARNING]
> **In the job:** "insider threat" means the person stealing data on the way out.
>
> **On the exam:** **most insider incidents are negligent.** Awareness training is the expected
> control.

> [!WARNING]
> **In the job:** "APT" gets used for any competent intrusion.
>
> **On the exam:** APT = **well-resourced, persistent, usually state-linked**, long-term covert
> access.

---

## 🧠 How to remember it

**Virus needs a ride (a file) and a driver (a user). Worm walks by itself. Trojan is invited in.**

**Rootkit Hides, Backdoor Opens.**

**Zero-day = zero patches exist.**

**Piggybacking has Permission.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** Malware spreads across the network within minutes, infecting hundreds of systems without any
user interaction. What is it MOST likely to be?

- **A.** Virus
- **B.** Worm
- **C.** Trojan
- **D.** Spyware

<details>
<summary><b>Answer</b></summary>

**B — worm.** Self-spreading, no user action — explains the speed.

- **A** needs a user to run an infected file.
- **C** needs a user tricked into installing it.
- **D** describes what malware *does*, not how it spreads.

</details>

**Q2.** A departing administrator leaves code that deletes database records if their account is ever
disabled. What is this?

- **A.** A rootkit
- **B.** A backdoor
- **C.** A logic bomb
- **D.** A worm

<details>
<summary><b>Answer</b></summary>

**C — logic bomb.** Dormant code, fired by a condition.

- **A** hides things. **B** gives access. **D** spreads itself.

</details>

**Q3.** Which statement about insider threats is correct?

- **A.** Insider threats are almost always deliberate acts of sabotage
- **B.** Most insider incidents result from negligence rather than malice
- **C.** Insider threats can be eliminated through perimeter firewalls
- **D.** Only privileged users can constitute an insider threat

<details>
<summary><b>Answer</b></summary>

**B.**

- **A** is the misconception being tested.
- **C** — insiders are already inside; and "eliminated" is an absolute.
- **D** — any user with access can be one; privilege raises impact, not eligibility.

</details>

**Q4.** An attacker exploits a flaw the vendor didn't know about and has no patch for. What is this?

- **A.** An unpatched vulnerability
- **B.** A zero-day vulnerability
- **C.** A logic bomb
- **D.** A backdoor

<details>
<summary><b>Answer</b></summary>

**B — zero-day.**

- **A** — a fix exists but wasn't applied. The key distractor.
- **C** — malicious code with a trigger.
- **D** — a concealed way in.

</details>

**Q5.** An employee holds a secure door open for someone they think is a colleague, who is actually
unauthorised. What is this?

- **A.** Tailgating
- **B.** Piggybacking
- **C.** Pretexting
- **D.** Baiting

<details>
<summary><b>Answer</b></summary>

**B — piggybacking.** The authorised person consented (even if fooled).

- **A** — same result *without* their knowledge.
- **C** — the invented story that might come before it.
- **D** — leaving infected media around.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Real intrusions are modular:** an access broker sells a phished foothold, a loader pulls modules,
lateral movement uses stolen credentials, ransomware deploys last after data theft. "Worm or
Trojan?" has no clean answer there — the categories survive because they're testable.

**Living off the land.** Attackers use tools already on the box (PowerShell, WMI, PsExec) — no
malicious file for signature antivirus to hash. **EDR** instead watches action chains ("Word
spawned PowerShell, which connected out") described with **MITRE ATT&CK** IDs such as `T1059.001`.

**Rootkits lie to everything above them** — once suspected, rebuild from known-good media. Secure
Boot and measured boot make them harder.

**Insider controls are mostly procedural** (SoD, vacations, dual control) because nothing purely
technical tells a valid action from a valid action with bad intent.

**Attribution is hard** — infrastructure, tooling and language artefacts can all be faked.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Malware is classified by HOW IT SPREADS.** Virus = file + user · **Worm = by itself** · Trojan = disguised, user installs.
- **Rootkit HIDES, backdoor OPENS. Logic bomb = triggered by a condition.**
- **Zero-day = NO patch exists** (≠ unpatched).
- **Most insider incidents are NEGLIGENT.** APT = persistent, well-resourced, usually state-linked.
- **Phishing → spear → whaling (execs); vishing = voice; smishing = SMS. Piggybacking has Permission.**
- **Defence against social engineering = awareness training.**

---

<div align="center">
<sub><a href="../README.md">← back to 04 · Networking and Cloud Security Concepts</a> &nbsp;·&nbsp; <a href="../common-attacks/">next: Common attacks →</a></sub>
</div>
