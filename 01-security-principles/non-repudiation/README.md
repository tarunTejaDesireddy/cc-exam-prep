<div align="center">

<img src="../assets/module-01-banner.svg" alt="01 · Security Principles" width="100%">

# ✍️ Non-repudiation

### *Evidence strong enough that "that wasn't me" stops working*

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-1%20·%2024%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~10%20min-57606A?style=flat-square)](#)

📌 *Know that digital signatures provide it, which key signs, and that it is NOT part of the CIA triad.*

</div>

---

## 🧸 The big idea

You sign a courier's delivery screen when a parcel arrives. Later you claim it never came. The
courier shows your signature — and you're stuck. You **can't credibly deny it**.

- **Repudiation** = denying you did something. *"I never sent that email." "I never approved that
  payment."*
- **Non-repudiation** = having evidence so strong that the denial fails — **in front of a third
  party** (a manager, an auditor, a court).

That last part matters. It's not about *you* being sure who did it. It's about **proving it to
someone who wasn't there**.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Repudiation** | Denying having performed an action. |
| **Non-repudiation** | Assurance that someone **cannot successfully deny** an action they performed. |
| **Digital signature** | A value made with the signer's **private key**. Proves **origin** and **integrity**. The classic non-repudiation mechanism. |
| **Private key** | Held by **exactly one** party, never shared. Its uniqueness is what makes a signature binding. |
| **Public key** | The matching key, shared freely, used to **verify** a signature. |
| **Certificate** | Binds a public key to a verified identity; issued by a certificate authority. |
| **Audit trail** | A record of actions. **Supports** non-repudiation but doesn't guarantee it. |

---

## 🔍 The explanation

### The three ingredients

Take any one away and the denial becomes believable again:

<p align="center"><img src="diagrams/1.svg" alt="Unique identity, something only that person could produce such as their private key, and a tamper-evident record together give non-repudiation, so 'that wasn't me' no longer works" width="560"></p>

### ✍️ Digital signatures — the expected answer

If a question asks **what provides non-repudiation**, the answer is the **digital signature**.

<p align="center"><img src="diagrams/2.svg" alt="A message signed with the sender's private key can be verified by anyone with the sender's public key, proving who sent it (non-repudiation) and that it was not changed (integrity)" width="760"></p>

The whole guarantee rests on the private key staying **private**. If it's shared, stolen or kept
where others can reach it, the signer can truthfully say *"someone else could have signed"*.

### Which key does what

This key-direction pair is a reliable exam item. Learn it once:

<p align="center"><img src="diagrams/3.svg" alt="Signing: the sender's private key signs and the sender's public key verifies. Encrypting: the recipient's public key encrypts and the recipient's private key decrypts" width="560"></p>

### Logs help — but signatures win

Audit logs **support** non-repudiation, but they're weaker evidence: accounts get shared or
hijacked, and administrators can edit logs. Ranked by strength:

<p align="center"><img src="diagrams/4.svg" alt="Weakest is a shared account plus audit log, better is individual accounts plus audit log, strongest is individual accounts plus digital signatures" width="720"></p>

Other contributors: biometric authentication (a fingerprint can't be lent like a password),
video of a physical action, witnessed or notarised signatures, append-only ledgers.

### What non-repudiation is NOT

> [!IMPORTANT]
> **It is not part of the CIA triad.** The triad is exactly three. Non-repudiation sits beside it
> — and is a favourite distractor on "which CIA property" questions.

- **Not integrity.** Integrity = the content didn't change. Non-repudiation = *who* sent it. A
  message can be perfectly intact and still anonymous. (A signature gives you both, which is why
  they get confused.)
- **Not authentication.** Authentication convinces **the system**, right now. Non-repudiation
  convinces **a third party**, later. One is a gate; the other is evidence.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Non-repudiation** | Can't credibly deny it to a third party. | **Authentication** — proving identity to the system at login. |
| **Non-repudiation** | Proof of **who** acted. | **Integrity** — proof the content didn't change. |
| **Digital signature** | Sender's **private** key signs. | **Encryption** — recipient's **public** key encrypts. Opposite keys, opposite purposes. |
| **Digital signature** | Cryptographic proof of origin. | **Electronic signature** — a typed name or scanned image, no cryptographic proof. |
| **Audit log** | A record of what happened. | **Non-repudiation itself**, which needs evidence only the actor could produce. |
| **Accountability** | Tracing an action to a person, internally. | **Non-repudiation** — the stronger form that survives the person's own denial. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** your SIEM logs are your evidence, and you'd present them in an investigation.
>
> **On the exam:** logs *support* non-repudiation but don't guarantee it. When a cryptographic
> option (digital signature) is on offer, take it.

> [!WARNING]
> **In the job:** a shared symmetric key between two systems feels like secure, signed traffic.
>
> **On the exam:** a **shared** key **destroys** non-repudiation — either party could have
> produced anything made with it. Non-repudiation needs something only **one** party can do.

---

## 🧠 How to remember it

**"You can't say it wasn't you."** That's the whole definition.

**Non-repudiation = signature.** Proving *who* did something → look for the digital signature.

**Private signs, public verifies. Public encrypts, private decrypts.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** Which mechanism BEST provides non-repudiation for an electronic transaction?

- **A.** Encrypting the transaction with a symmetric key shared by both parties
- **B.** Digitally signing the transaction with the sender's private key
- **C.** Recording the transaction in the application's audit log
- **D.** Requiring multi-factor authentication before the transaction is submitted

<details>
<summary><b>Answer</b></summary>

**B.** Only the sender holds that private key, so only the sender could have made the signature.

- **A** gives confidentiality — and a *shared* key actively destroys non-repudiation.
- **C** supports it but is weaker: logs can be edited and accounts shared.
- **D** strengthens login, but leaves no artefact a third party can verify later.

</details>

**Q2.** A user denies sending an email that was digitally signed with their private key. Which
statement is correct?

- **A.** The denial is credible, because private keys are routinely shared
- **B.** The signature provides non-repudiation, assuming the private key was properly protected
- **C.** The signature only proves the message was not modified, not who sent it
- **D.** Non-repudiation cannot apply to email under any circumstances

<details>
<summary><b>Answer</b></summary>

**B.** The caveat — *properly protected* — is exactly what the guarantee rests on.

- **A** — private keys are *not* meant to be shared; that's the whole point.
- **C** — a signature proves integrity **and** origin; origin is the non-repudiation part.
- **D** — signed email (S/MIME, PGP) does exactly this.

</details>

**Q3.** Which element of the CIA triad does non-repudiation belong to?

- **A.** Integrity
- **B.** Confidentiality
- **C.** Availability
- **D.** None — non-repudiation is not part of the CIA triad

<details>
<summary><b>Answer</b></summary>

**D.** The triad is exactly three properties.

- **A** is the tempting one because signatures also deliver integrity — related, not the same.
- **B** — nothing to do with who may *see* information.
- **C** — nothing to do with access or uptime.

</details>

**Q4.** An organisation wants expense approvals to be provably attributable to the approver.
Which combination BEST achieves this?

- **A.** A shared departmental approval account with detailed logging
- **B.** Individual accounts with password authentication and audit logging
- **C.** Individual accounts with digital signatures applied to each approval
- **D.** Email confirmations sent to the approver's manager

<details>
<summary><b>Answer</b></summary>

**C.** Unique identity + a cryptographic artefact only that person could produce.

- **A** — a shared account destroys attribution, however good the logging.
- **B** — good, but passwords can be shared or phished. The qualifier is BEST.
- **D** — a notification, not evidence.

</details>

**Q5.** Which statement correctly describes key usage?

- **A.** A message is signed with the recipient's public key and verified with their private key
- **B.** A message is signed with the sender's private key and verified with the sender's public key
- **C.** A message is signed with a shared symmetric key held by both parties
- **D.** A message is signed with the sender's public key and verified with the recipient's private key

<details>
<summary><b>Answer</b></summary>

**B.** Only the sender can sign; anyone can verify.

- **A** describes *encryption* direction, not signing.
- **C** — symmetric keys can't provide non-repudiation; both sides hold the same key.
- **D** — a public key never signs.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**A signature signs a hash, not the whole message.** The signer hashes the message (e.g.
SHA-256) and signs that fixed-size value with RSA or ECDSA. The verifier hashes the received
message independently and compares. Change one byte and the hashes no longer match.

**Serious private keys never sit on a laptop's disk.** They live in a Hardware Security Module or
a smart card chip — hardware that can *use* the key to sign but never lets it be *copied out*.
That's the real-world answer to "someone copied my key".

**It's ultimately a legal claim.** Cryptography proves a particular key made the signature; it
can't prove the named human was at the keyboard. Disputes turn on how the key was stored and who
could reach the device.

**Signatures don't prove *when*.** A signer can set their own clock. Trusted timestamping
services (RFC 3161) counter-sign with an authoritative time for anything where the date matters.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Non-repudiation = "you can't say it wasn't you"** — proof to a *third party*.
- **Digital signature is the mechanism.** Private key SIGNS, public key VERIFIES.
- **NOT part of the CIA triad.** Not the same as integrity.
- **Logs support it but don't guarantee it.** A shared symmetric key destroys it.

---

<div align="center">
<sub><a href="../README.md">← back to 01 · Security Principles</a> &nbsp;·&nbsp; <a href="../privacy/">next: Privacy →</a></sub>
</div>
