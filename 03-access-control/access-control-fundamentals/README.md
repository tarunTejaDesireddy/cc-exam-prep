# 🎟️ Access Control Fundamentals — Caveman Style

Access control is basically:

> **"Who is allowed to do what to which thing?"**

The exam wants you to correctly identify **three things**:

1. 👤 **Subject**
2. 📄 **Object**
3. 📜 **Rule**

---

# 👤 1. Subject — "WHO?"

The **subject** is the person, process, or entity **requesting access**.

Think:

> 🪨 **Who wants to enter the cave?**

Examples:

- 👤 User
- 👨‍💼 Employee
- 🤖 Application/process
- 🖥️ Computer account
- 🔐 Service account

### Example

Alice wants to open a file.

> **Alice = Subject**

---

# 📄 2. Object — "WHAT?"

The **object** is the resource being accessed.

Think:

> 🪨 **What does Grog want to touch?**

Examples:

- 📄 File
- 🗄️ Database
- 📁 Folder
- 💻 Computer
- 🌐 Website
- 🖨️ Printer
- 🏦 Bank account

### Example

Alice wants to open:

> `Payroll.xlsx`

Then:

> **Payroll.xlsx = Object**

---

# 📜 3. Rule — "WHAT IS ALLOWED?"

The **rule** determines what the subject is allowed to do with the object.

Think:

> 🪨 **"Is Grog allowed to touch the food?"**

Possible permissions:

- 👀 Read
- ✏️ Write
- 🗑️ Delete
- ▶️ Execute
- 🔄 Modify
- 🚫 No access

---

# 🎯 Put the Three Together

Suppose:

> Alice wants to read the company's payroll file.

Break it down:

### 👤 Subject

**Alice**

> Who is requesting access?

### 📄 Object

**Payroll file**

> What is she trying to access?

### 📖 Rule

**Alice is allowed to read the payroll file.**

> What does the access-control policy allow?

Therefore:

> **Subject → Object → Allowed action**

**Alice → Payroll.xlsx → Read = ALLOW ✅**

---

# 🚫 Another Example

Bob wants to delete the payroll file.

The organization's rule says:

> Bob can read payroll information but cannot delete it.

So:

👤 **Subject:** Bob

📄 **Object:** Payroll file

🗑️ **Requested action:** Delete

📜 **Rule:** Bob cannot delete payroll files

### Decision:

> ❌ **DENY**

---

# 🧠 The Access Decision Formula

When you see an access-control scenario, ask:

> **WHO → WANTS TO DO WHAT → TO WHICH RESOURCE → WHAT DOES THE RULE SAY?**

More formally:

> **Subject + Action + Object + Rule → Access Decision**

For example:

> **Alice + Read + Payroll.xlsx + Rule allows read → ALLOW ✅**

or:

> **Bob + Delete + Payroll.xlsx + Rule denies delete → DENY ❌**

---

# 🪨 Caveman Example

Grog wants to take meat from the food cave.

### 👤 Subject

> **Grog**

Who wants access?

### 📦 Object

> **Food**

What is he trying to access?

### 🖐️ Action

> **Take/read/use**

What does he want to do?

### 📜 Rule

> **Only hunters may take food.**

If Grog is a hunter:

> ✅ **ALLOW**

If Grog isn't a hunter:

> ❌ **DENY**

---

# ⚠️ Don't Confuse Subject and Object

This is a common exam trap.

### ❌ Wrong

> "The file is the subject."

No.

The file is normally the **object**.

### ✅ Correct

> **User/process = Subject**

> **Resource being accessed = Object**

Think:

> 👤 **Subject acts on Object**

---

# 🎯 More Examples

| Scenario | Subject | Object | Action | Decision |
| --- | --- | --- | --- | --- |
| Alice reads HR file | Alice | HR file | Read | Allow |
| Bob deletes database | Bob | Database | Delete | Deny |
| Backup service writes backup | Backup service | Backup storage | Write | Allow |
| Guest accesses admin panel | Guest | Admin panel | Access | Deny |
| Web app reads customer DB | Web app | Customer database | Read | Allow |

---

# 🔐 Authentication vs Authorization

This connects directly to what you learned earlier.

### 🔑 Authentication

> **"WHO are you?"**

Example:

> "I am Alice."

The system verifies Alice's identity.

### 🎟️ Authorization

> **"WHAT are you allowed to do?"**

Example:

> "Alice is allowed to read this file."

So:

> **Authentication identifies the subject.**

> **Authorization applies rules to decide what that subject can do.**

---

# 🧠 The Exam Trick

If the question gives you a scenario, **don't start by looking for "allow" or "deny."**

First identify:

### 1️⃣ WHO?

→ **Subject**

### 2️⃣ WHAT RESOURCE?

→ **Object**

### 3️⃣ WHAT ACTION?

→ Read / Write / Delete / Execute / etc.

### 4️⃣ WHAT RULE?

→ What permission does the policy give that subject?

### 5️⃣ RESULT?

→ **Allow or Deny**

---

# 🪨 Ultimate Caveman Memory

Imagine Grog standing at a cave door:

> 👤 **GROG** → **SUBJECT**

> 🥩 **FOOD** → **OBJECT**

> ✋ **TAKE FOOD** → **ACTION**

> 📜 **ONLY HUNTERS MAY TAKE FOOD** → **RULE**

> ✅/❌ **ALLOW OR DENY** → **ACCESS DECISION**

### One sentence to memorize:

> **A subject requests an action on an object, and the applicable rule determines whether access is allowed or denied.**
