<div align="center">

<img src="../assets/module-01-banner.svg" alt="01 · Security Principles" width="100%">

# 🎫 Authorisation and Accounting

### *What you are allowed to do once you're proven — and the record that you did it*

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-1%20·%2024%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~11%20min-57606A?style=flat-square)](#)

📌 *Put any control into the right one of the three AAA stages, and know why shared accounts are almost always wrong.*

</div>

---

## 🧸 The big idea

Think of checking into a hotel:

1. The front desk checks your passport — **who are you?** That's **authentication**.
2. Your key card opens **your** room and the gym, but not other guests' rooms or the manager's
   office — **what may you do?** That's **authorisation**.
3. Every door lock quietly records *which card opened it, and when* — **what did you do?** That's
   **accounting**.

Together they're **AAA**, and they always happen in that order. The exam's favourite move is to
describe one control and offer all three stages as answers. Ask which question the control
answers — *who*, *what may*, or *what did* — and you have it.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Authorisation** | Granting or denying a **proven** identity the right to access a resource or perform an action. |
| **Accounting** | Recording what an authenticated identity actually did. Also called **auditing**. |
| **Accountability** | Being able to trace an action to **one specific person** and hold them responsible. |
| **Permission** | A right over a specific resource — read, write, execute, delete. |
| **Privilege** | A system-level right — install software, change configuration. |
| **Audit trail** | The chronological record that accounting produces. |
| **ACL** | Access control list — attached to a resource, saying who may do what to it. |
| **Least privilege** | Grant only the access a role needs, and nothing more. |
| **Subject / Object** | The **subject** asks for access (user, process). The **object** is what's accessed (file, room). |

---

## 🔍 The explanation

### Three stages, fixed order

<p align="center"><img src="diagrams/1.svg" alt="Authentication asks who are you, authorisation asks what may you do, accounting asks what did you do, and together they produce accountability, tracing the action to one person" width="700"></p>

You can't authorise someone whose identity isn't proven, and you can't meaningfully record
actions you can't pin to an identity. So the order never changes.

### 🎫 Authorisation — what may you do?

Authorisation happens **after** a successful login. Two people can both log in perfectly and be
allowed completely different things — a clerk and a finance director use the same login page but
see different systems.

**Where it lives:** file permissions, ACLs, role and group membership, database grants, firewall
rules.

> [!NOTE]
> **"Logged in successfully but got 'access denied'"** is authorisation working correctly — not
> an authentication failure. The exam uses this exact scenario.

### 📋 Accounting — what did you do?

Accounting writes down **who did what, to what, and when**: logs, audit trails, session records,
change histories.

- It's a **detective** control. It **prevents nothing** — it records.
- It still deters: people behave differently when they know they're logged.

### Accountability — the result, not a stage

**Accounting** is the *activity* (recording). **Accountability** is the *outcome* (a named person
can be held responsible). It needs the whole chain to work — and one shared account breaks it:

<p align="center"><img src="diagrams/2.svg" alt="A unique ID per person flows through authentication, authorisation and accounting to accountability; a shared admin account breaks it because the logs say admin rather than a person's name" width="760"></p>

The shared account still logs in fine every time. That's the problem — authentication succeeds
while telling you nothing about **who** is behind it.

### Creep vs escalation

Two terms that sound alike and mean very different things:

<p align="center"><img src="diagrams/3.svg" alt="Privilege creep is an admin failure where old rights are never removed after a role change; privilege escalation is an attack where someone gains rights nobody granted" width="620"></p>

---

## ⚖️ Told apart

| | Answers | Not to be confused with |
|---|---|---|
| **Authentication** | "Can you prove who you are?" | **Authorisation** — what you may do once proven. |
| **Authorisation** | "What are you allowed to do?" | **Authentication.** Logged in + denied the file = authorisation. |
| **Accounting** | "What did you do?" | **Accountability** — the *result*: a named person is responsible. |
| **Permission** | A right over one resource. | **Privilege** — a system-level right. |
| **Least privilege** | Only the **access** the role needs. | **Need to know** — only the **information** the task needs. Narrower, often paired. |
| **Privilege creep** | Legitimate rights piling up over job changes. | **Privilege escalation** — an attacker gaining rights never granted. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** logging is plumbing — you switch it on and move to detection content.
>
> **On the exam:** accounting is one third of the model. It's the **detective** leg of AAA and
> the answer to any question about *proving what a user did*.

> [!WARNING]
> **In the job:** a well-vaulted shared service account is normal.
>
> **On the exam:** shared accounts are almost always wrong, because they destroy
> **accountability**. An option recommending individual accounts is very likely correct.

---

## 🧠 How to remember it

**Who? · What may? · What did?** — Authentication · Authorisation · Accounting.

**The order is alphabetical:** Au**then** → Au**thor** → **Acc**ount.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** A user successfully signs in to a file server but receives "access denied" when opening a
folder. Which process denied the request?

- **A.** Authentication, because the credentials were insufficient
- **B.** Authorisation, because the user lacks permission to that folder
- **C.** Accounting, because the attempt was logged and blocked
- **D.** Identification, because the user's identity was not established

<details>
<summary><b>Answer</b></summary>

**B — authorisation.** The sign-in worked, so authentication already passed. What failed is the
check on what this proven identity may do.

- **A** — the stem says the user *successfully signed in*.
- **C** — accounting records; it can't block anything.
- **D** — identification completed at sign-in, like authentication.

</details>

**Q2.** Five administrators share a single `admin` account. Which security property is MOST
directly undermined?

- **A.** Confidentiality
- **B.** Authentication
- **C.** Accountability
- **D.** Availability

<details>
<summary><b>Answer</b></summary>

**C — accountability.** Logs show the account, not the person, so no action traces to a named
individual.

- **A** — affected only indirectly.
- **B** — the account authenticates correctly every time; that's exactly the problem.
- **D** — systems stay fully accessible.

</details>

**Q3.** An employee moves from finance to marketing. Their finance access is never removed, so
they now hold rights in both. What is this called?

- **A.** Privilege escalation
- **B.** Privilege creep
- **C.** Separation of duties failure
- **D.** Unauthorised access

<details>
<summary><b>Answer</b></summary>

**B — privilege creep.** Every grant was legitimate; none were revoked.

- **A** is an attack — gaining rights never granted.
- **C** names a possible *consequence*, not the accumulation itself.
- **D** — the access was formally authorised. It's unnecessary, not unauthorised.

</details>

**Q4.** Which control PRIMARILY supports accounting?

- **A.** Requiring multi-factor authentication at login
- **B.** Assigning permissions through role-based groups
- **C.** Enabling detailed audit logging of file access
- **D.** Encrypting data at rest on the file server

<details>
<summary><b>Answer</b></summary>

**C — audit logging.** Recording what identities did *is* accounting.

- **A** is authentication.
- **B** is authorisation.
- **D** is a confidentiality control, outside AAA.

</details>

**Q5.** Which statement about AAA is correct?

- **A.** Authorisation may precede authentication where a resource is public
- **B.** Accounting can substitute for authorisation in low-risk systems
- **C.** Accountability requires unique identification for each individual
- **D.** Authentication and authorisation are two names for the same process

<details>
<summary><b>Answer</b></summary>

**C.** Without a distinct identity per person, log entries can't be tied to anyone.

- **A** inverts the fixed order.
- **B** — recording a bad action is not a substitute for stopping it.
- **D** — proving identity and granting access are separate stages.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**AAA started as real network protocols.** RADIUS and TACACS+ still run when a VPN or Wi-Fi
controller checks a login: the server authenticates the credential, replies with authorisation
attributes (which VLAN, what timeout), and receives usage records back. Those records were
originally for **billing** by the minute — which is why the third A is "accounting", not
"auditing". Some material says "auditing"; treat them as the same thing.

**Authorisation looks different everywhere.** Linux permission bits (owner/group/other), Windows
NTFS DACLs made of allow/deny entries, web apps passing a signed JWT carrying `role: clerk` — all
are step two of AAA.

**Logs must survive the people they watch.** A log an admin can quietly edit isn't evidence.
Real systems ship logs to write-once (WORM) storage, or hash-chain the entries so altering one
breaks every hash after it.

**Service accounts, honestly.** The mature real-world answer isn't "no shared service accounts"
but "no standing human access to them": credentials in a vault, checked out with individual
login, every checkout logged — accountability preserved at the checkout. On the exam, shared
still means lost accountability.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **AAA = Authentication → Authorisation → Accounting.** Who? · What may? · What did?
- **Logged in but denied the file = authorisation.**
- **Accounting is DETECTIVE** — it records, never blocks. **Accountability** is the outcome.
- **Shared accounts destroy accountability.** Almost always the wrong answer.
- **Privilege creep** = admin failure. **Privilege escalation** = an attack.

---

<div align="center">
<sub><a href="../README.md">← back to 01 · Security Principles</a> &nbsp;·&nbsp; <a href="../non-repudiation/">next: Non-repudiation →</a></sub>
</div>
