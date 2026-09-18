<div align="center">

<img src="../assets/module-05-banner.svg" alt="05 · Security Operations and Incident Response" width="100%">

# 📦 Asset lifecycle and end-of-life

### *Every asset is born, works, ages, and eventually becomes a liability if nobody notices*

[![Module](https://img.shields.io/badge/Module-05_Security_Operations-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-5%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~8%20min-57606A?style=flat-square)](#)

📌 *Asset protection means knowing what you have, tracking it through its life, and retiring it before it becomes unsupported and unpatchable.*

</div>

---

## 🧸 The big idea

Every spear the tribe owns is carved, used, and kept sharp by the toolmaker for as long as he's
around to mend it. But the day the toolmaker who knows that spear's craft dies, or moves on to
another camp, nobody left can fix a new crack in it — ever again.

The spear might still throw true tomorrow. That's not the point. From that day on, every fresh
crack just stays a crack, forever, and the spear gets a little more dangerous to carry every
season it's still in use. An old spear the toolmaker still tends is fine. A spear nobody left can
mend is the actual danger — no matter how new or old it happens to be.

You cannot protect an asset you don't know exists. **Asset protection** starts with an
accurate **inventory** and follows each asset through a **lifecycle** — acquisition,
deployment, maintenance, and eventually retirement. The stage that gets tested hardest is the
end: what happens when a vendor stops supporting a piece of hardware or software, known as
**end-of-life (EOL)**.

An EOL asset isn't just old — it's a growing risk that gets worse every day it stays in
service, because new vulnerabilities discovered after EOL will **never** be patched.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Asset inventory** | An accurate, maintained record of hardware, software and data assets the organisation owns or manages. |
| **Asset lifecycle** | The stages an asset passes through: acquisition, deployment/use, maintenance, retirement/disposal. |
| **End-of-life (EOL)** | The point at which a vendor stops selling/supporting a product. |
| **End-of-support (EOS)** | The point at which a vendor stops providing updates and patches — sometimes distinguished from EOL, sometimes used interchangeably; either way, **no more security patches** is the key fact. |
| **Configuration item (CI)** | An individual component tracked as part of the asset/configuration management process. |
| **Decommissioning** | Formally retiring an asset, including data sanitisation before disposal. |

---

## 🔍 The lifecycle, and where EOL risk builds

<p align="center"><img src="diagrams/1.svg" alt="diagram"></p>

**Why EOL is the highest-risk stage:** every stage before it has an active vendor fixing newly
discovered vulnerabilities. Past EOL, **new vulnerabilities are never patched** — the asset's
risk only ever increases from that point on, and it increases indefinitely if the asset stays
in service. The toolmaker has left camp; every crack from here on is permanent.

**What good asset lifecycle management does about it:**

- **Track EOL/EOS dates** in the asset inventory itself, so retirement is planned rather than
  discovered during an incident.
- **Plan replacement or migration well before the EOL date**, not after.
- **When an EOL asset genuinely can't be retired on time** (a common real-world constraint),
  apply compensating controls — isolation/segmentation, tighter monitoring, restricted access
  — the same pattern used for unpatchable ICS/embedded devices.
- **Decommission with proper data sanitisation** — an EOL asset being disposed of is exactly
  the scenario the data-handling destruction methods (clearing, purging, destruction) exist
  for. A retired tally-scroll listing which family lives in which hut gets burned, not tossed
  in the woods where any passing stranger could pick it up and read it.

---

## 🔬 How EOL dates get tracked, and the components you can't see

"Track EOL dates in the inventory" sounds like a spreadsheet column somebody updates. In
practice it is fed automatically.

<p align="center"><img src="diagrams/2.svg" alt="diagram"></p>

**An SBOM (Software Bill of Materials) is the real artefact that solves the embedded-EOL
problem.** It is a machine-readable manifest — in a standard format such as **CycloneDX** or
**SPDX** — listing every library, framework and dependency inside a piece of software, with
version numbers. Without one, an organisation genuinely cannot answer "are we running anything
unsupported?", because the vulnerable component is three layers deep inside a vendor product
that itself looks perfectly current. With one, that question becomes a query: cross-reference
every listed component against published end-of-life dates and the answer falls out
automatically.

**Certificates are the lifecycle everyone forgets.** A TLS certificate has a hard expiry date
baked into it, and when it passes, the service simply stops working — browsers refuse the
connection outright. This is an *availability* incident caused purely by a lifecycle date nobody
tracked, which is why certificate inventory and automated renewal (ACME/Let's Encrypt-style
protocols that reissue automatically before expiry) are treated as an operational necessity
rather than a nicety.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **EOL / EOS asset** | No longer receives vendor security patches. | An asset that is simply **old but still supported** — age alone isn't the risk; loss of patching is. |
| **Asset inventory** | Knowing what you have. | **Configuration management**, which tracks the approved *state* of what you have — the two work together but answer different questions. |
| **Decommissioning** | Formally retiring an asset, including sanitisation. | Simply **turning a device off**, which leaves data on it and the asset untracked rather than properly retired. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** "it still works fine" is often treated as sufficient justification to keep
> using an old system.
>
> **On the exam:** whether it *works* is irrelevant once it's past EOL — the textbook concern
> is entirely about **patchability**. A perfectly functional EOL system is still treated as a
> growing, unmitigated risk.

---

## 🧠 How to remember it

🧠 **"EOL means nobody's fixing it anymore."** Not "it's old" — specifically, "new
vulnerabilities in it will never be patched."

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** A server's operating system has reached end-of-life, meaning the vendor no longer
issues security patches. The server continues to function normally. What is the MOST accurate
characterisation of its risk?

- **A.** Low risk, since it is functioning normally
- **B.** Increasing risk over time, since newly discovered vulnerabilities will never be patched
- **C.** No risk, since EOL only affects vendor support contracts
- **D.** Risk only if the server is internet-facing

<details>
<summary><b>Answer</b></summary>

**B — increasing risk over time.** Functioning normally is irrelevant to the security concern;
the risk grows because future vulnerabilities will never be remediated by the vendor.

- **A** confuses functional status with security posture.
- **C** understates the practical consequence of losing patch support.
- **D** is too narrow — an EOL internal system is still a foothold risk if compromised via any
  path, not only direct internet exposure.

</details>

**Q2.** What should an organisation do when a critical asset cannot be retired before its
EOL date due to business constraints?

- **A.** Ignore the risk since retirement isn't possible
- **B.** Apply compensating controls such as isolation and enhanced monitoring
- **C.** Immediately shut down the asset regardless of business impact
- **D.** Wait for the vendor to resume support

<details>
<summary><b>Answer</b></summary>

**B — apply compensating controls.** Isolation, segmentation and enhanced monitoring reduce
risk when the ideal control (replacement) isn't immediately achievable — the same principle
used for unpatchable ICS/embedded systems.

- **A** abandons risk management entirely.
- **C** may cause unacceptable business disruption without considering interim controls.
- **D** relies on something vendors do not do once a product has reached EOL.

</details>

**Q3.** Why is an accurate asset inventory a prerequisite for effective asset protection?

- **A.** It is required for marketing purposes
- **B.** An organisation cannot protect, patch, or retire assets it does not know it has
- **C.** It replaces the need for configuration management
- **D.** It is only relevant to physical hardware, not software

<details>
<summary><b>Answer</b></summary>

**B — you can't protect what you don't know you have.** This is the foundational reason asset
inventory precedes every other asset protection activity.

- **A** is not a security rationale.
- **C** wrongly conflates two related but distinct disciplines.
- **D** is factually wrong — software assets need inventory tracking just as much as hardware.

</details>

**Q4.** What is the correct FIRST step when formally retiring a storage device that held
sensitive data?

- **A.** Immediately discard the device in general waste
- **B.** Resell the device without further action
- **C.** Sanitise the data using an appropriate method (clearing, purging, or destruction) before disposal
- **D.** Remove it from the network with no further action

<details>
<summary><b>Answer</b></summary>

**C — sanitise the data first.** Proper decommissioning of an asset that held sensitive data
requires data sanitisation appropriate to sensitivity before disposal.

- **A** and **B** both risk exposing sensitive data to whoever obtains the device next.
- **D** leaves the data intact and recoverable on the device.

</details>

**Q5.** Which best distinguishes end-of-life/end-of-support from simply "an old asset"?

- **A.** They are the same thing — age alone defines the risk
- **B.** EOL/EOS specifically means the vendor no longer issues security patches, regardless of the asset's age
- **C.** EOL only applies to software, never hardware
- **D.** EOL assets are always immediately destroyed

<details>
<summary><b>Answer</b></summary>

**B — EOL/EOS means no more vendor patches**, which is the actual security-relevant fact, not
the asset's age by itself.

- **A** conflates two different concepts the exam tests as distinct.
- **C** is factually wrong — hardware reaches EOL too.
- **D** overstates the required response; compensating controls are often used when immediate
  destruction/replacement isn't feasible.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Shadow IT and inventory gaps.** In practice, the hardest part of asset inventory isn't
tracking known assets — it's finding the ones nobody registered: a department's own cloud
subscription, a forgotten test server, an employee's personal device processing company data.
Asset discovery tooling (network scanning, cloud API inventory, endpoint agents) exists
specifically to close this gap, because an unknown asset can't be patched, monitored, or
retired on schedule.

**EOL as a supply-chain risk multiplier.** An EOL component embedded inside a larger product
(a library, a chip, an OS inside an appliance) can leave an organisation running unsupported
software without realising it, because the *visible* product is still supported even though
one of its ingredients is not. This is part of why software bill of materials (SBOM) practices
have become more prominent — they make embedded EOL risk visible.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Asset lifecycle: Acquire → Deploy → Maintain → EOL → Retire/decommission.**
- **EOL/EOS = no more vendor security patches.** Risk increases indefinitely from that point.
- **"Still works fine" is irrelevant** — patchability is the concern, not function.
- Can't retire on time? **Compensating controls**: isolate, segment, monitor closely.
- **Decommissioning includes data sanitisation** — clearing, purging, or destruction.

---

<div align="center">
<sub><a href="../README.md">← back to 05 · Security Operations and Incident Response</a> &nbsp;·&nbsp; <a href="../security-testing-methods/">next: Security testing methods →</a></sub>
</div>
</content>
