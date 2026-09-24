<div align="center">

<img src="../assets/module-05-banner.svg" alt="05 · Security Operations and Incident Response" width="100%">

# 🔮 Quantum-Resistant Cryptography

### *Why encryption that's safe today may not stay that way*

[![Module](https://img.shields.io/badge/Module-05_Security_Operations-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-5%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~6%20min-57606A?style=flat-square)](#)

📌 *One idea: today's public-key encryption has a known future weakness, and the industry is already replacing it. "Harvest now, decrypt later" is why the change starts before quantum computers can break anything.*

</div>

---

## 🧸 The big idea

A modern lock is safe because picking it would take a thief a lifetime. Now imagine a machine, not
built yet, that could pick that exact lock in seconds. The lock isn't broken today, but you can
already see the day coming.

That's the situation with **public-key (asymmetric) encryption**, such as RSA and elliptic-curve
cryptography. It relies on maths that's extremely hard for ordinary computers to undo. A powerful
enough **quantum computer** works in a fundamentally different way and is expected to undo that same
maths quickly, breaking the encryption.

**Quantum-resistant cryptography** (also called post-quantum cryptography) means new algorithms
designed to stay safe even against a quantum computer. At CC depth, you need to know **why this
matters now**, not the maths behind any particular algorithm.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Quantum computer** | A fundamentally different kind of computer that can, in theory, solve certain maths problems far faster than an ordinary computer. |
| **Quantum-resistant / post-quantum cryptography** | Encryption designed to stay safe even against a quantum computer. |
| **Harvest now, decrypt later** | Capturing encrypted data today and storing it until a future quantum computer can decrypt it. |
| **Cryptographic agility** | Being able to swap one cryptographic algorithm for another without rebuilding whole systems. |

---

## 🔍 The explanation

### Why it's a "now" problem, not a "later" one

A big enough quantum computer doesn't exist yet. So why does the exam treat this as current?

<p align="center"><img src="diagrams/1.svg" alt="An attacker captures your encrypted data today and stores it away unable to read it yet, then waits years until a quantum computer matures and decrypts it" width="640"></p>

That's **"harvest now, decrypt later"**. An attacker can grab and store encrypted data **today** and
simply wait until quantum computing matures enough to open it. For data that has to stay secret for
many years (government secrets, long-lived personal records), today's encryption may already be
inadequate against a *future* attacker, even though it's completely safe against every attacker that
exists right now.

That's why standards bodies are already publishing quantum-resistant algorithms, and why
organisations with long-lived sensitive data are starting to migrate. The migration itself takes
years, and the data being protected now has to survive the switch.

### What's at risk, and what isn't

<p align="center"><img src="diagrams/2.svg" alt="A quantum computer breaks public-key algorithms such as RSA and elliptic curve, which must be replaced; it barely dents symmetric encryption such as AES, which stays fine with a longer key" width="500"></p>

The danger is concentrated in **public-key (asymmetric)** cryptography. **Symmetric** encryption like
AES is much less affected, and mostly just needs a longer key rather than a whole new algorithm.

> 🎯 **The exam's point is the timing:** because of harvest-now-decrypt-later, and because migrating
> cryptography takes years, long-lived sensitive data needs quantum-resistant protection **well
> before** quantum computers can actually do the attack.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Quantum-resistant cryptography** | Algorithms built to withstand a *future* quantum attacker. | **Today's strong encryption** (AES, RSA at good key lengths), safe against today's computers but not assumed safe against a mature quantum attacker. |
| **Harvest now, decrypt later** | Capturing ciphertext today to decrypt once quantum power exists. | An ordinary brute-force attack, which is limited by *today's* computing power, not a future capability. |
| **Cryptographic agility** | Being able to swap algorithms easily. | A specific quantum-resistant algorithm. Agility is the property that makes the swap possible. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** "we'll deal with quantum computing when it's actually a threat" sounds like sensible
> prioritisation.
>
> **On the exam:** the tested reasoning is the opposite. Because of harvest-now-decrypt-later and the
> years a migration takes, **long-lived sensitive data needs quantum-resistant protection before
> quantum computers can carry out the attack.**

---

## 🧠 How to remember it

**"Harvest now, decrypt later."** The four words that explain why this is tested as a current
concern, not a distant one.

**Public-key is at risk; symmetric barely dents.** RSA and elliptic curve need replacing; AES just
needs a longer key.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** What is the PRIMARY reason organisations are adopting quantum-resistant cryptography before
large-scale quantum computers exist?

- **A.** Quantum computers are already breaking encryption in production environments
- **B.** Attackers can capture encrypted data now and decrypt it once quantum computing matures ("harvest now, decrypt later")
- **C.** Quantum-resistant algorithms are cheaper to implement than current encryption
- **D.** Regulatory bodies have banned current encryption standards

<details>
<summary><b>Answer</b></summary>

**B — harvest now, decrypt later.** Long-lived confidential data captured today could be decrypted by
a future quantum attacker, which is why migration starts before that capability exists.

- **A** overstates today's quantum capability, which isn't yet at the scale needed to break standard
  encryption.
- **C** isn't the stated reason and isn't necessarily true.
- **D** invents a regulatory action that hasn't happened.

</details>

**Q2.** Which of the following data would be MOST urgent to protect with quantum-resistant
cryptography?

- **A.** A promotional email newsletter
- **B.** Data that must remain confidential for many decades
- **C.** A publicly available press release
- **D.** Data already deleted from all systems

<details>
<summary><b>Answer</b></summary>

**B — data that must stay confidential for decades.** The harvest-now-decrypt-later risk is highest
for data with a long required secrecy lifespan.

- **A** and **C** aren't confidential, so future decryption poses little risk.
- **D** can't be harvested if it no longer exists anywhere to capture.

</details>

**Q3.** What does "cryptographic agility" refer to?

- **A.** The speed at which an encryption algorithm processes data
- **B.** An organisation's ability to swap cryptographic algorithms without redesigning entire systems
- **C.** A specific quantum-resistant algorithm
- **D.** The physical size of a quantum computer

<details>
<summary><b>Answer</b></summary>

**B — the ability to swap algorithms without a full redesign.** That's what makes a future migration
to quantum-resistant algorithms practical rather than a ground-up rebuild.

- **A** describes performance, unrelated to agility.
- **C** invents a named algorithm the concept doesn't refer to.
- **D** is irrelevant to the term.

</details>

**Q4.** Which statement about quantum computing and encryption is MOST accurate?

- **A.** Quantum computers currently break all forms of encryption in everyday use
- **B.** A sufficiently powerful quantum computer is expected to be able to break widely-used public-key encryption
- **C.** Quantum computing has no relevance to cryptography
- **D.** Symmetric and asymmetric encryption are equally at risk from quantum computing

<details>
<summary><b>Answer</b></summary>

**B — a powerful enough quantum computer is expected to break widely-used public-key encryption.**
That's the concern driving quantum-resistant cryptography.

- **A** overstates today's capability. This is an expected future risk, not a present reality at
  scale.
- **C** contradicts the whole premise of the topic.
- **D** overgeneralises. The main concern is **public-key (asymmetric)** algorithms; symmetric
  encryption is far less affected.

</details>

**Q5.** Why does migrating an organisation's cryptography to quantum-resistant algorithms typically
take significant time?

- **A.** Because quantum computers must be purchased first
- **B.** Because cryptographic systems are deeply embedded across infrastructure, software and standards, and require careful, coordinated replacement
- **C.** Because it requires shutting down all systems permanently
- **D.** Because quantum-resistant algorithms do not yet exist

<details>
<summary><b>Answer</b></summary>

**B — cryptography is deeply embedded and needs coordinated replacement.** That's why cryptographic
agility matters and why migration starts well ahead of the threat.

- **A** confuses the defender's migration with the attacker acquiring a future capability.
- **C** describes an unnecessary and extreme approach.
- **D** is factually wrong: standards bodies have already published post-quantum algorithms.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Why public-key cryptography specifically is at risk.** RSA and elliptic-curve cryptography rely on
problems (factoring large numbers, discrete logarithms) for which an efficient quantum algorithm is
already known in theory: **Shor's algorithm**. It's a matter of building a quantum computer big and
stable enough to run it, not of whether the approach works. Symmetric algorithms like AES are far
less urgent: the best quantum approach (**Grover's algorithm**) gives only a modest speed-up, handled
by using longer keys rather than replacing the algorithm.

**The named algorithms already arriving.** NIST finalised its choices in 2024: **CRYSTALS-Kyber**
(standardised as **ML-KEM**) for key exchange, and **CRYSTALS-Dilithium** (**ML-DSA**) for signatures.
Both are built on **lattice-based** maths, a different family of hard problem, which is exactly why
Shor's algorithm doesn't help against them.

**It's already running in production.** Chrome and Cloudflare, among others, now run TLS handshakes
that combine a classical key exchange (ECDHE) *and* a post-quantum one (ML-KEM) at the same time,
deriving the session key from both. An attacker would have to break both to recover the key. That's
cryptographic agility in its most concrete form, and it's deliberately cautious in case a weakness is
found in the newer post-quantum algorithms before a quantum computer ever breaks the classical ones.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **"Harvest now, decrypt later"** — why quantum-resistant crypto matters before quantum computers can actually break encryption.
- Quantum-resistant cryptography mainly concerns **public-key (asymmetric)** algorithms. Symmetric (AES) is far less affected.
- **Cryptographic agility** = the ability to swap algorithms without a full system redesign.
- Prioritise migration for data with a **long required confidentiality lifespan**.

---

<div align="center">
<sub><a href="../README.md">← back to 05 · Security Operations and Incident Response</a> &nbsp;·&nbsp; <a href="../logging-and-monitoring/">next: Logging and monitoring →</a></sub>
</div>
