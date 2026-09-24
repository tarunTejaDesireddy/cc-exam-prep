<div align="center">

<img src="../assets/module-05-banner.svg" alt="05 · Security Operations and Incident Response" width="100%">

# 🗄️ Data Handling

### *The life of data, the three states it lives in, and how to destroy it properly*

[![Module](https://img.shields.io/badge/Module-05_Security_Operations-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-5%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~12%20min-57606A?style=flat-square)](#)

📌 *Know the three states (data in use is the hardest to protect), classify at creation, and use the exact disposal terms: delete isn't sanitising, degaussing does nothing to SSDs, and crypto-shredding is the cloud answer.*

</div>

---

## 🧸 The big idea

Think about cash in a bank:

- Overnight in the **vault**, it's easy to protect: lock the vault. That's **data at rest**.
- In an **armoured van** between branches, you protect the journey. That's **data in transit**.
- In the **cashier's hands**, being counted, it can't be locked away at all: to count it, someone
  has to handle it. That's **data in use**, and it's the hardest state to protect.

Data also has a life. It's created, stored, used, shared, archived and finally destroyed, and the
end matters as much as the start. Throwing a bank statement in the bin isn't the same as shredding
it, and **deleting a file isn't the same as destroying the data**.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Data at rest** | Stored data: on a disk, in a database, on a backup. |
| **Data in transit** | Data moving across a network. Also called **data in motion**. |
| **Data in use** | Data loaded in memory and being processed. |
| **Data lifecycle** | Create → store → use → share → archive → destroy. |
| **Retention policy** | The rule setting how long each type of data is kept. |
| **Legal hold** | An order to stop destroying data that may be needed for a court case or investigation. |
| **Sanitisation** | Removing data so it can't be recovered. |
| **Clearing** | Overwriting data so ordinary tools can't recover it. |
| **Purging** | Stronger removal that resists laboratory recovery, such as degaussing. |
| **Destruction** | Physically destroying the media. The most thorough. |
| **Degaussing** | Erasing magnetic media with a strong magnetic field. **Does nothing to SSDs.** |
| **Crypto-shredding** | Destroying the encryption key, so the encrypted data can never be read. |
| **Remanence** | Data left behind on media after an attempt to remove it. |
| **Masking** | Hiding part of a value, such as showing only the last four digits of a card. |

---

## 🔍 The explanation

### The data lifecycle

<p align="center"><img src="diagrams/1.svg" alt="In service, data is created and labelled, stored and encrypted, and used under access control; moving on, it is shared with encryption in transit, archived and still labelled, and finally destroyed by sanitising it" width="580"></p>

> ⚠️ **Classify data when it's created.** Every later decision (how to store it, who can see it,
> how long to keep it) depends on knowing what it is. Classify later, and everything made in the
> meantime was handled at the wrong level.

**Archived data is still classified data.** Moving it to cheaper storage doesn't make it any less
sensitive. That's a common real-world slip, and a fair exam scenario.

### The three states

<p align="center"><img src="diagrams/2.svg" alt="Data at rest sits on a disk or in a database and is protected by encrypting it where it sits; data in transit crosses a network and is protected by TLS or a VPN; data in use is in memory being processed and is the hardest to protect" width="660"></p>

| | Where it is | Threats | Controls |
|---|---|---|---|
| **At rest** | Disks, databases, backups, USB drives, phones | Stolen media, unauthorised file access | Disk and file encryption, access control, physical security |
| **In transit** | Networks, the internet, links between systems | Interception, eavesdropping, on-path attacks | TLS, VPN, IPsec, SFTP instead of FTP |
| **In use** | Memory (RAM), the processor | Memory scraping, malicious processes | Access control, memory protection, secure enclaves |

> [!IMPORTANT]
> **Encryption protects data at rest and in transit. It can't easily protect data in use**, because
> the computer needs the plain data to work on it. That's why a running system with its disks
> unlocked is exposed in a way a switched-off laptop isn't.

### ⏳ Retention

**Keep data only as long as it's needed**, then dispose of it properly. Retention periods come from
three places, and they pull in different directions:

| Driver | Pushes towards |
|---|---|
| **Law and regulation** | Keeping data for at least a set minimum |
| **Business need** | Keeping data while it's useful |
| **Privacy principles** | **Deleting** data once its purpose is fulfilled |

> ⚠️ **Keeping data longer than necessary is a liability, not an asset.** Data you no longer need can
> still be breached, still be requested in legal disclosure, and still carries obligations. "We keep
> everything forever" is a bad answer.

A **legal hold** pauses normal destruction when data may be needed for a court case or an
investigation. It overrides the retention schedule, and destroying data under a legal hold is a
serious matter.

### 🔥 Destruction: the exact terms

**Deleting a file doesn't remove the data.** It removes the pointer to it and marks the space as free
to reuse, like tearing the entry out of a book's index while the page stays in the book. The data
stays until something overwrites it. That leftover is called **remanence**.

<p align="center"><img src="diagrams/3.svg" alt="From weakest to strongest: deleting removes only the pointer and the data is still there; clearing overwrites the data and the media can be reused; purging by degaussing or crypto-erase beats laboratory recovery; destruction shreds, burns or pulverises the media so it is gone" width="860"></p>

From left to right, each method is **more thorough, and leaves the media less reusable**.

| Method | What it does | Does the media survive? |
|---|---|---|
| **Deleting** | Removes the pointer. **Not a sanitisation method** | Yes, and so does the data |
| **Clearing** | Overwrites the data | ✅ Yes: it can be reused inside the organisation |
| **Purging** | Degaussing or cryptographic erase; resists laboratory recovery | Usually not, for degaussing |
| **Destruction** | Shredding, incinerating, pulverising | ❌ No |

> [!CAUTION]
> **Degaussing only works on magnetic media**, such as hard disks and tapes. It does **nothing** to
> solid-state drives (SSDs), which store data in flash memory, not magnetically. This is a favourite
> exam item.

**SSDs are harder to sanitise.** To avoid wearing out, an SSD spreads its writes across all its
memory cells, so overwriting a file doesn't reliably reach every copy of it. The reliable options
are the drive's built-in **secure erase**, **crypto-shredding**, or physical destruction.

**Crypto-shredding** means the data was encrypted, and you destroy the key. The scrambled data is
left behind but can never be read. It's the practical answer for **cloud storage**, where you can't
physically destroy someone else's disks.

<p align="center"><img src="diagrams/4.svg" alt="Choosing a disposal method: clear a drive that will be reused inside the company; destroy sensitive media that is leaving for good; for an SSD use secure erase, crypto-shredding or destruction and never degaussing; for data in the cloud use crypto-shredding by destroying the key" width="640"></p>

> 🎯 **Match the method to the sensitivity, and to whether the media is being reused.** Reused
> internally → clearing. Sensitive data leaving the organisation → destruction.

### 🎭 Masking

**Masking** hides part or all of a value, while keeping the data usable for a job that doesn't need
the real value. Examples: showing `**** **** **** 1234` for a card number on a support screen, or
filling a test database with realistic fake values.

| | Protects by | Reversible? | Typical use |
|---|---|---|---|
| **Masking** | Hiding the real value from view | Sometimes, depending on how it's done | Support screens, test environments |
| **Encryption** | Making the value unreadable without a key | Yes, with the key | Data that must be fully recovered later |
| **Hashing** | A one-way transformation | No, by design | Integrity checks, storing passwords |

> 🎯 **Masking has a different purpose from encryption.** Encryption protects data you'll need back
> in full later. Masking lets someone see *enough* of a value to do their job (confirm it's the
> right account) without seeing all of it.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **At rest** | Stored. | **In transit** (moving) and **in use** (in memory). Three different states. |
| **In use** | In memory, being processed. **Hardest to protect.** | **At rest.** A running system has decrypted its data into memory. |
| **Deleting** | Removes the pointer. The data stays. | **Clearing**, which overwrites it. Deleting isn't sanitisation. |
| **Clearing** | Overwrite; the media can be reused. | **Purging**, which resists laboratory recovery. |
| **Purging** | Degaussing, cryptographic erase. | **Destruction**, which physically destroys the media. |
| **Degaussing** | Magnetic erasure. **Magnetic media only.** | A method that works on everything. It does nothing to SSDs. |
| **Crypto-shredding** | Destroy the key; the encrypted data is useless. | **Deleting**, which leaves the data recoverable. |
| **Retention** | How long to keep data. | **Legal hold**, which pauses destruction for a court case or investigation. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** encryption is the answer to protecting data, full stop.
>
> **On the exam:** encryption covers **at rest and in transit**. **Data in use** has to be decrypted
> to be processed, which is why it's the hardest state to protect.

> [!WARNING]
> **In the job:** more data means more capability, and deleting it feels like losing something.
>
> **On the exam:** **keeping data past its retention period is a liability.** Data you no longer need
> can still be breached and still carries obligations.

> [!WARNING]
> **In the job:** you'd wipe a drive and hand it out again without much thought.
>
> **On the exam:** the method has to match the sensitivity. **Degaussing does nothing to SSDs**, and a
> deleted file is not a sanitised file.

---

## 🧠 How to remember it

**Vault · van · cashier's hands = rest · transit · use.** The cashier's hands are the hard part.

**Delete · clear · purge · destroy:** more thorough each step, less reusable. *Delete isn't
sanitisation at all.*

**Degaussing is magnetic.** No magnets in an SSD, so no effect.

**Crypto-shred = kill the key.** The answer for the cloud.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** Which state of data is MOST difficult to protect?

- **A.** Data at rest, because storage media can be stolen
- **B.** Data in transit, because networks are untrusted
- **C.** Data in use, because it must be decrypted to be processed
- **D.** All three present equal difficulty

<details>
<summary><b>Answer</b></summary>

**C — data in use, because it has to be decrypted to be processed.** Encryption can't protect data
the processor is working on, which leaves memory scraping and malicious processes as live threats.

- **A** is well covered by encryption at rest: a stolen encrypted disk gives away nothing.
- **B** is well covered by TLS and VPNs, and is close to a solved problem in practice.
- **D** is wrong. The three states differ a lot in how well the available controls cover them.

</details>

**Q2.** An organisation degausses a batch of retired solid-state drives before disposal. What is the
problem?

- **A.** Degaussing is too slow for bulk disposal
- **B.** Degaussing has no effect on solid-state drives, so the data remains
- **C.** Degaussing damages the drives, preventing resale
- **D.** There is no problem; this is correct practice

<details>
<summary><b>Answer</b></summary>

**B — degaussing has no effect on solid-state drives.** It erases magnetic media with a magnetic
field. SSDs store data in flash memory cells, so the magnet does nothing at all.

- **A** is about speed, which doesn't matter if the data survives.
- **C** is true of magnetic drives and beside the point here: the problem is that the data survives.
- **D** is exactly the misunderstanding this question exists to correct.

For SSDs, the options are the drive's built-in secure erase, crypto-shredding, or physical
destruction.

</details>

**Q3.** What is the difference between clearing and purging?

- **A.** Clearing physically destroys the media; purging overwrites it
- **B.** Clearing overwrites data so it cannot be recovered by ordinary means; purging resists laboratory recovery
- **C.** Clearing applies to paper; purging applies to digital media
- **D.** They are the same process

<details>
<summary><b>Answer</b></summary>

**B — clearing overwrites against ordinary recovery; purging resists laboratory recovery.** Clearing
usually leaves the media reusable inside the organisation; purging is stronger and often ends the
media's useful life.

- **A** swaps them round and confuses clearing with destruction.
- **C** invents a split by media type that doesn't exist.
- **D** is wrong, and the difference in strength is exactly what's being tested.

</details>

**Q4.** An organisation stores customer data in a cloud service and needs to ensure it is
unrecoverable after the retention period. Which approach is MOST practical?

- **A.** Physically destroying the provider's storage media
- **B.** Degaussing the cloud storage
- **C.** Crypto-shredding — destroying the encryption keys
- **D.** Deleting the files through the provider's interface

<details>
<summary><b>Answer</b></summary>

**C — crypto-shredding.** Destroy the keys and the remaining encrypted data can never be read. It's
the standard answer when you don't control the physical media.

- **A** is impossible: you can't get at a cloud provider's hardware, and it would destroy other
  customers' data too.
- **B** is impossible for the same reason, and degaussing wouldn't work on most modern storage
  anyway.
- **D** removes *your* access to the data. It gives no assurance about copies in backups,
  replicas or snapshots, which is exactly the gap crypto-shredding closes.

</details>

**Q5.** When should data be classified?

- **A.** At creation, so protection decisions can be made from the start
- **B.** When it is first shared outside the organisation
- **C.** At the point of archival
- **D.** Only when a regulator requests it

<details>
<summary><b>Answer</b></summary>

**A — when it's created.** Every later decision (storage, encryption, access, sharing, retention,
disposal) depends on knowing what the data is.

- **B** leaves everything unlabelled until it goes outside, by which time it has already been stored
  and handled without the right protection.
- **C** is far too late. Data is used most heavily long before it's archived.
- **D** treats classification as paperwork for a regulator rather than the foundation everything else
  rests on.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Protecting data in use is still an active field.** **Trusted execution environments** carve out a
hardware-protected region of memory, an **enclave** (Intel SGX, AMD SEV), where code works on real,
decrypted data, but the processor encrypts everything the moment it leaves that region. This holds
even against an attacker who controls the operating system or hypervisor. Cloud providers sell this
as **confidential computing**: your workload runs on their hardware while even their own
administrators can't see the data being processed. Enclaves have suffered side-channel attacks,
though. **Homomorphic encryption** lets you compute directly on encrypted data, but it's still far
too slow for general use. None of these is mature enough to be the general answer, which is why
"in use" is still the hard state.

**Why overwriting an SSD is unreliable, and how secure erase works.** Flash cells wear out after a
limited number of writes, so the drive's controller spreads writes across the whole device (wear
levelling). When you overwrite a file, the controller often writes to fresh cells and simply marks
the old ones invalid, so the original data physically remains for a while. Most modern SSDs are
also **self-encrypting**: everything written is encrypted with a key the drive keeps to itself. The
built-in secure erase command doesn't overwrite anything. It tells the drive to throw away that key
and make a new one, so every old block instantly becomes unreadable. It's crypto-shredding,
performed inside the drive.

**One overwrite pass is enough on modern hard drives.** The multi-pass patterns that became folklore
were designed for much older, less dense magnetic media. Current guidance accepts a single overwrite
for clearing modern hard drives. The exam doesn't test pass counts, but it explains why the old
advice lingers.

**The best way to survive a breach of a dataset is not to hold it.** Organisations that delete data
once its retention period ends reduce both the damage from a breach and the cost of answering
regulators' access requests. It's one of the rare security measures that also saves money.

**Backups are where retention policies go to die.** Deleting a record from the live database
doesn't remove it from last month's backups, and honouring a deletion request across every backup
is genuinely hard. It's usually handled by documenting that any restored backup gets the deletion
re-applied, rather than editing old backups one record at a time.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Three states: AT REST (stored) · IN TRANSIT (moving) · IN USE (in memory).** In use is the **hardest** to protect: it must be decrypted to be processed.
- **Encryption covers at rest and in transit, NOT in use.**
- **Lifecycle: create → store → use → share → archive → destroy. Classify at CREATION.** Archived data is still classified.
- **Delete ≠ sanitise.** Deleting removes the pointer; the data remains (**remanence**).
- **Clearing** = overwrite, media reusable. **Purging** = degauss / crypto-erase, resists lab recovery. **Destruction** = shred / incinerate.
- **DEGAUSSING DOES NOTHING TO SSDs** (magnetic media only).
- **Crypto-shredding = destroy the key.** The answer for cloud storage.
- **Masking hides a value for viewing; encryption protects a value you'll need back.**
- **Keeping data past its retention period is a LIABILITY.** A **legal hold** pauses destruction.

---

<div align="center">
<sub><a href="../README.md">← back to 05 · Security Operations and Incident Response</a> &nbsp;·&nbsp; <a href="../data-classification/">next: Data classification →</a></sub>
</div>
