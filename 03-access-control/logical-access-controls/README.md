<div align="center">

<img src="../assets/module-03-banner.svg" alt="03 · IAM Concepts" width="100%">

# 💻 Logical Access Controls

### *Locks keep bodies out of places — logical controls keep identities out of systems*

[![Module](https://img.shields.io/badge/Module-03_IAM_Concepts-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-3%20·%2020%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~11%20min-57606A?style=flat-square)](#)

📌 *Tell logical from physical, lockout from timeout, and know logs and access reviews are detective and a hidden button is not a control.*

</div>

---

## 🧸 The big idea

At the office, the **front door lock and the security guard** stop strangers walking into the
building. That's **physical** access control — it keeps **bodies** out of **places**.

But once you're inside, you still can't open the payroll folder — your **login and folder
permissions** stop you. That's **logical** access control — it keeps **identities** out of
**systems and data**.

Both protect the same information, by completely different means. On this exam, **logical** and
**technical** mean the same thing.

> 🎯 **The test: could you touch it?** A door, a guard, a camera — physical. A password, a
> permission, an encryption key, a log entry — logical.

<p align="center"><img src="diagrams/1.svg" alt="Physical access control keeps bodies out of places with locks, guards, badges, fences and cameras; logical or technical access control keeps identities out of systems and data with passwords, permissions, encryption and logs; the test is whether you could touch it" width="560"></p>

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Logical control** | Implemented in software, hardware or firmware. Same as **technical**. |
| **Physical control** | Tangible protection of places, equipment and people. |
| **Account lockout** | Disable an account after repeated failed logins. **Stops brute force.** |
| **Session timeout** | End an idle, already-authenticated session automatically. |
| **Constrained interface** | A UI that hides or greys out functions the user may not use. |
| **Audit log** | Record of what identities did. **Detective.** |
| **Access review** | Periodic check that existing access is still appropriate. **Detective.** |
| **Time-of-day / location restriction** | Allow access only during set hours or from set places. |

---

## 🔍 The explanation

### Side by side

| Physical | Logical |
|---|---|
| Door lock | Password |
| Security guard | Account permissions |
| Badge reader **hardware** | The **decision** whether that badge opens that door |
| CCTV camera | Audit log |
| Fence | Firewall rule |
| Locked cabinet | Encryption |

> ⚠️ **A badge system is both.** The reader and door are physical; the database deciding whether the
> card may open that door at that hour is logical. Stress on the *barrier* → physical. Stress on the
> *decision* → logical.

### The logical controls to know

| Group | Controls |
|---|---|
| **Account & session** | Password rules · **account lockout** · **session timeout** · concurrent-session limits · time-of-day and location restrictions |
| **Authorisation** | Permissions and ACLs · group membership · constrained interfaces · database views |
| **Detective** | **Audit logging** · **access reviews** · alerting |

Two that get swapped:

<p align="center"><img src="diagrams/3.svg" alt="If someone keeps guessing passwords at the login screen, account lockout stops the brute force; if a logged-in PC is left unattended, session timeout closes the open door" width="760"></p>

### A hidden button is not a control

<p align="center"><img src="diagrams/4.svg" alt="The web page hides the admin button from an ordinary user, but the user calls the API directly, the API has no permission check, and the admin action succeeds" width="760"></p>

> ⚠️ **The check belongs where the access happens** — in the API or the database — not in what's
> drawn on screen.

### Layers — and why encryption matters most when things get physical

<p align="center"><img src="diagrams/2.svg" alt="An attacker must get past physical controls like the building and badge, then logical controls like password and MFA, then permissions and ACLs, then encryption, before reaching the data" width="760"></p>

> [!IMPORTANT]
> **Physical access defeats most logical controls** — a thief holding the laptop can pull the drive.
> **Full-disk encryption** is the logical control that makes theft survivable:

<p align="center"><img src="diagrams/5.svg" alt="A laptop with full-disk encryption stolen while powered off has a sealed key and unreadable data, but one stolen while logged in and awake is already unlocked, so screen lock and session timeout must cover that gap" width="700"></p>

### Most are preventive — except two

Most logical access controls **prevent**. **Audit logs and access reviews are detective** — they find
problems that already exist.

> 🎯 **An access review is detective.** It finds access that shouldn't be there. Removing that access
> afterwards is corrective.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Logical** | Software/firmware. Same as **technical**. | **Physical** — tangible. |
| **Account lockout** | After repeated failures. **Brute force.** | **Session timeout** — idle open session. |
| **Audit log** | **Detective** — records. | A preventive control. |
| **Access review** | **Detective** — finds bad existing access. | **Provisioning**, which grants it. |
| **Constrained interface** | Hides functions. | A real authorisation check at the point of access. |
| **Badge reader** | Physical hardware. | The logical **permission decision** it performs. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** hiding a menu option is a reasonable way to enforce a rule.
>
> **On the exam:** a **constrained interface is not an access control on its own.** The check must be
> at the point of access.

> [!WARNING]
> **In the job:** logging is infrastructure.
>
> **On the exam:** audit logging is a **detective logical control** — the answer to "what did this
> user actually do?"

> [!WARNING]
> **In the job:** an access review *prevents* access creep.
>
> **On the exam:** it's **detective**.

---

## 🧠 How to remember it

**Could you touch it?** Touchable = physical. Configured = logical.

**Lockout stops guessing. Timeout stops loitering.**

**Logs and reviews look backwards** — both detective.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** Which of the following is a logical access control?

- **A.** A mantrap at the data centre entrance
- **B.** An access control list on a file share
- **C.** A security guard checking identification
- **D.** A locked equipment cabinet

<details>
<summary><b>Answer</b></summary>

**B.** Software governing which identities may do what.

- **A**, **C** and **D** are physical — they stop bodies, not identities.

</details>

**Q2.** An organisation wants to stop an unattended workstation being used by a passer-by while
the user is away. Which control addresses this?

- **A.** Account lockout after failed attempts
- **B.** Session timeout after a period of inactivity
- **C.** Password complexity requirements
- **D.** Full-disk encryption

<details>
<summary><b>Answer</b></summary>

**B.** The user is already logged in; the risk is the open session.

- **A** stops guessing at the login prompt — nobody is guessing.
- **C** also targets guessing.
- **D** protects a powered-off stolen device; a running logged-in machine is already unlocked.

</details>

**Q3.** How is a quarterly review of user access rights classified by function?

- **A.** Preventive, because it stops inappropriate access
- **B.** Detective, because it identifies inappropriate access that already exists
- **C.** Corrective, because rights are removed as a result
- **D.** Deterrent, because users know their access is examined

<details>
<summary><b>Answer</b></summary>

**B — detective.**

- **A** is the common misclassification — it looks at access already granted.
- **C** is the *remediation* afterwards.
- **D** is a side effect, not its classification.

</details>

**Q4.** A web app hides an admin button from ordinary users, but the API behind it has no
authorisation check. What is the weakness?

- **A.** None — hiding the function prevents its use
- **B.** The constrained interface is not a substitute for an authorisation check at the point of access
- **C.** The application should use physical access controls instead
- **D.** The button should be greyed out rather than hidden

<details>
<summary><b>Answer</b></summary>

**B.** Anyone can call the API directly.

- **A** confuses display with enforcement.
- **C** — physical controls don't govern API calls.
- **D** changes the look, not the flaw.

</details>

**Q5.** A stolen laptop holds confidential data. Which logical control MOST directly limits the
impact?

- **A.** Account lockout policy
- **B.** Full-disk encryption
- **C.** Audit logging
- **D.** Session timeout

<details>
<summary><b>Answer</b></summary>

**B.** The thief holds unreadable data.

- **A** — the thief removes the drive and reads it elsewhere.
- **C** records activity; protects nothing.
- **D** applies to a running session, not a powered-off device.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Broken access control tops web vulnerability rankings year after year** — the Q4 flaw and its
cousin, insecure direct object references (change an ID in the URL, get someone else's record).
The root error: trusting the client to only send what the interface allows.

**Groups beat individual permissions.** Granting to people creates sprawl nobody can review.
Granting to job-function groups makes the review question "should this person be in this group?"
— one a manager can answer. That's the road to role-based access control.

**How full-disk encryption really works.** BitLocker and FileVault keep the key in a **TPM** chip
that only releases it if the boot looks untampered — so a pulled drive is unreadable in another
machine. Once the user logs in, the key is unsealed for the session.

**Time and location work better as risk signals** than hard rules — an attacker on a compromised
machine inside the permitted window passes a hard rule easily.

**A log nobody reads detects nothing.** Audits check whether anything happens because of the log.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Physical keeps BODIES out of PLACES; logical keeps IDENTITIES out of SYSTEMS.** Could you touch it?
- **Logical = technical.** A badge system is both (hardware physical, decision logical).
- **Lockout stops brute force; session timeout stops an unattended open session.**
- **Audit logs and access reviews are DETECTIVE.**
- **A constrained interface is NOT a control** — check at the point of access.
- **Full-disk encryption makes device theft survivable** (when powered off).

---

<div align="center">
<sub><a href="../README.md">← back to 03 · IAM Concepts</a> &nbsp;·&nbsp; <a href="../dac-mac-rbac-abac/">next: DAC, MAC, RBAC and ABAC →</a></sub>
</div>
