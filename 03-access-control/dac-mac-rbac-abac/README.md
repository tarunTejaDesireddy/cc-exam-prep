<div align="center">

<img src="../assets/module-03-banner.svg" alt="03 · Access Control Concepts" width="100%">

# 🎟️ DAC vs MAC vs RBAC vs ABAC

### *The four access control models — and the two whose names mislead you*

[![Module](https://img.shields.io/badge/Module-03_Access_Control-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-3%20·%2020%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~15%20min-57606A?style=flat-square)](#)

📌 *The single highest-value page in Domain 3. Expect several questions that describe a scenario and ask which model it is.*

</div>

---

These are **four access-control models**. The exam will give you a scenario and expect you to recognize which model is being used.

The key is to look at **WHO/WHAT determines access**.

> **DAC = Owner decides**<br>
> **MAC = Classification/clearance decides**<br>
> **RBAC = Job role decides**<br>
> **ABAC = Attributes decide**

<p align="center"><img src="diagrams/1.svg" alt="diagram" width="500"></p>

---

# 1. 👑 DAC — Discretionary Access Control

### The magic word: **OWNER**

In **DAC**, the **owner of the resource** has discretion over who gets access.

Think:

> 🪨 **Grog owns the food cave → Grog decides who can enter.**

For example, Alice owns a file.

Alice decides:

> "Bob can read my file."

Alice can also change that permission.

### Scenario

> Alice creates a document and gives Bob read access.

➡️ **DAC**

Why?

> **The resource owner controls access.**

### 🧠 Memory

> **DAC = Discretion of the owner**

---

# 2. 🏛️ MAC — Mandatory Access Control

### The magic words: **CLASSIFICATION + CLEARANCE**

In **MAC**, users don't simply decide their own permissions.

Access is determined by **centrally enforced security labels/classifications**.

Think military/security clearance:

📄 Document:

> **SECRET**

👤 Grog:

> **SECRET clearance**

The system checks the classification and clearance.

If the required security rules aren't satisfied:

> ❌ Access denied.

### Scenario

> A military system labels documents **Confidential, Secret, and Top Secret**. Users receive security clearances, and the system enforces access based on those labels.

➡️ **MAC**

---

# 🚨 DAC vs MAC — DON'T HESITATE

This is the one you specifically need to master.

## DAC

> 👑 **OWNER decides**

Alice owns the file.

Alice says:

> "Bob can access it."

➡️ **DAC**

---

## MAC

> 🏛️ **CENTRAL SECURITY POLICY decides**

The file is classified **SECRET**.

Bob has **CONFIDENTIAL** clearance.

The system says:

> ❌ "Bob cannot access SECRET information."

Bob can't simply ask the owner to give him permission.

➡️ **MAC**

<p align="center"><img src="diagrams/2.svg" alt="diagram" width="500"></p>

---

# 🪨 The Caveman Test

Ask:

> **"Can the owner decide who gets access?"**

### YES

👑 → **DAC**

### NO, because mandatory security labels/policy control it

🏛️ → **MAC**

That's the distinction.

---

# 3. 👨‍💼 RBAC — Role-Based Access Control

### The magic word: **ROLE**

Access is based on someone's **job role**.

Think:

> 🪨 **Hunter gets hunter permissions.**

> 🪨 **Doctor gets doctor permissions.**

> 🪨 **Guard gets guard permissions.**

The organization doesn't necessarily configure every permission individually for every person.

Instead:

> **Role → Permissions**

For example:

```
Doctor     → Patient records
Nurse      → Patient records
Accountant → Financial records
```

Alice becomes a **Doctor**.

Therefore she gets the permissions assigned to the Doctor role.

<p align="center"><img src="diagrams/3.svg" alt="diagram" width="500"></p>

### Scenario

> Employees in the HR role can access employee records. Employees in the Sales role cannot.

➡️ **RBAC**

### 🧠 Memory

> **RBAC = ROLE decides**

---

# 4. 🧬 ABAC — Attribute-Based Access Control

### The magic word: **ATTRIBUTES**

ABAC makes access decisions using **attributes** about things such as:

- 👤 User
- 📄 Resource
- 💻 Device
- 📍 Location
- 🕐 Time
- 🌐 Environment

Think:

> **"WHO are you + WHAT are you accessing + WHERE are you + WHEN is it?"**

---

# 🪨 ABAC Example

Suppose Grog can access the food store only if:

> 👤 Grog is a tribe member

AND

> 🕐 It is daytime

AND

> 📍 Grog is inside the village

AND

> 📄 The food is not marked restricted

That's **attribute-based** access.

---

# 💻 Real Example

A company says:

> "Employees may access sensitive files only when they are using a company-managed laptop, from the corporate network, during working hours."

The decision uses several attributes:

- User = employee
- Device = company-managed
- Network = corporate
- Time = working hours
- Resource = sensitive

➡️ **ABAC**

<p align="center"><img src="diagrams/4.svg" alt="diagram" width="500"></p>

---

# 🎯 Four Models Side-by-Side

| Model | Main question | Caveman rule |
| --- | --- | --- |
| 👑 **DAC** | Who owns it? | **Owner decides** |
| 🏛️ **MAC** | What are the classification/clearance rules? | **Labels + clearance decide** |
| 👨‍💼 **RBAC** | What is your job role? | **Role decides** |
| 🧬 **ABAC** | What attributes apply? | **Attributes decide** |

---

# 🧠 Scenario Recognition

## Scenario 1

> "The file owner decides which users can read or modify the file."

**Answer: DAC**

🔑 **Owner**

---

## Scenario 2

> "Users with Secret clearance can access Secret documents."

**Answer: MAC**

🔑 **Classification + clearance**

---

## Scenario 3

> "Only members of the Finance role can access the accounting system."

**Answer: RBAC**

🔑 **Role**

---

## Scenario 4

> "Employees can access the application only from managed devices while connected to the corporate network."

**Answer: ABAC**

🔑 **Attributes**

---

# ⚠️ DAC vs MAC — The Big Trap

Consider these two scenarios.

### Scenario A

> "The owner of a document gives Bob permission to read it."

**DAC** ✅

Because:

> 👑 **Owner chooses**

---

### Scenario B

> "A document is classified Secret, and only users with the required clearance can access it."

**MAC** ✅

Because:

> 🏛️ **Mandatory security policy chooses**

---

# 🧠 What if the owner tries to give Bob access in MAC?

Suppose:

> The owner says: "Bob can read my Top Secret file."

But Bob doesn't have the required clearance.

Under MAC:

> ❌ **The owner cannot override the mandatory policy.**

That's why it's called **Mandatory**.

---

# 🔥 Fast Recognition Trick

When you read the scenario, search for these words:

<p align="center"><img src="diagrams/5.svg" alt="diagram" width="500"></p>

### 👑 DAC

> **Owner**
>
> "Owner grants permission"

---

### 🏛️ MAC

> **Classification**
>
> **Clearance**
>
> **Secret**
>
> **Top Secret**
>
> **Mandatory policy**

---

### 👨‍💼 RBAC

> **Role**
>
> **Job**
>
> **Department role**
>
> "Administrators can..."
>
> "Managers can..."

---

### 🧬 ABAC

> **Attributes**
>
> **Location**
>
> **Time**
>
> **Device**
>
> **User characteristics**
>
> **Resource characteristics**
>
> **Context**

---

# 🪨 Ultimate Caveman Memory

Imagine Grog wants to enter a cave.

### DAC 👑

> **"Grog owns cave. Grog decides."**

### MAC 🏛️

> **"Cave has SECRET label. Grog needs SECRET clearance."**

### RBAC 👨‍💼

> **"Grog is a HUNTER. Hunters get this access."**

### ABAC 🧬

> **"Grog is a hunter + daytime + inside village + approved device."**

---

# 🎯 The 4-Word Cheat Code

Memorize this:

> **DAC = OWNER** 👑<br>
> **MAC = CLEARANCE** 🏛️<br>
> **RBAC = ROLE** 👨‍💼<br>
> **ABAC = ATTRIBUTES** 🧬

And for the exam:

> **If the OWNER chooses → DAC.**<br>
> **If CLASSIFICATION/CLEARANCE is mandatory → MAC.**<br>
> **If JOB ROLE determines access → RBAC.**<br>
> **If multiple ATTRIBUTES/context determine access → ABAC.**

---

# ✅ Check You Actually Got It

Answer all eight before expanding anything.

**Q1.** A user creates a spreadsheet on a shared drive and grants two colleagues edit rights. Which model is this?

- **A.** MAC
- **B.** DAC
- **C.** RBAC
- **D.** ABAC

<details>
<summary><b>Answer</b></summary>

**B — DAC.** The owner of the resource chose who gets access. That's discretion of the owner.

</details>

**Q2.** A government system labels files Confidential, Secret and Top Secret, and only users with a matching clearance can open them. Which model is this?

- **A.** DAC
- **B.** RBAC
- **C.** MAC
- **D.** ABAC

<details>
<summary><b>Answer</b></summary>

**C — MAC.** Classification labels plus clearances, enforced centrally by the system.

</details>

**Q3.** Under MAC, the owner of a Top Secret file tries to grant access to a user who holds only Secret clearance. What happens?

- **A.** Access is granted because the owner approved it
- **B.** Access is granted if a manager also approves
- **C.** Access is denied because the owner cannot override the mandatory policy
- **D.** Access is granted read-only

<details>
<summary><b>Answer</b></summary>

**C — denied.** In MAC the policy is *mandatory*: owners have no discretion to override labels and clearances.

- **A** describes DAC — the trap this question targets.
- **B** and **D** invent exceptions that MAC does not allow.

</details>

**Q4.** A new hire joins the Finance department and automatically receives access to the accounting system, the same as every other Finance analyst. Which model is this?

- **A.** RBAC
- **B.** DAC
- **C.** MAC
- **D.** ABAC

<details>
<summary><b>Answer</b></summary>

**A — RBAC.** Access comes from the job role, not from an owner, a label or context.

</details>

**Q5.** A policy allows staff to open payroll data only from a company-managed device, on the corporate network, between 08:00 and 18:00. Which model is this?

- **A.** RBAC
- **B.** MAC
- **C.** DAC
- **D.** ABAC

<details>
<summary><b>Answer</b></summary>

**D — ABAC.** The decision combines multiple attributes — device, network and time.

- **A** — if the only condition were "staff" or "Payroll team", it would be RBAC. Context conditions push it to ABAC.

</details>

**Q6.** What is the main feature that distinguishes DAC from MAC?

- **A.** DAC uses passwords; MAC uses biometrics
- **B.** In DAC the owner decides; in MAC a central mandatory policy decides
- **C.** DAC is for networks; MAC is for files
- **D.** DAC uses roles; MAC uses attributes

<details>
<summary><b>Answer</b></summary>

**B.** Owner discretion versus centrally enforced labels and clearances.

- **D** mixes in the other two models — roles are RBAC, attributes are ABAC.

</details>

**Q7.** Which model is generally the **most restrictive** and suited to military environments?

- **A.** DAC
- **B.** RBAC
- **C.** MAC
- **D.** ABAC

<details>
<summary><b>Answer</b></summary>

**C — MAC.** Users and owners can't change access; the system enforces classification and clearance. DAC is the most flexible (and least restrictive).

</details>

**Q8.** A hospital gives every nurse access to patient charts, every pharmacist access to the drug system, and changes a person's access simply by moving them to a different job. Which model is this?

- **A.** DAC
- **B.** RBAC
- **C.** ABAC
- **D.** MAC

<details>
<summary><b>Answer</b></summary>

**B — RBAC.** Permissions are attached to roles (nurse, pharmacist), and people get access by being assigned to a role.

</details>
