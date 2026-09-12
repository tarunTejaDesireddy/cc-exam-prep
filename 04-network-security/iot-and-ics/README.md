<div align="center">

<img src="../assets/module-04-banner.svg" alt="04 · Networking and Cloud Security Concepts" width="100%">

# 🏭 Embedded systems, ICS and IoT

### *When the "computer" is a thermostat, a PLC, or a doorbell*

[![Module](https://img.shields.io/badge/Module-04_Network_Security-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2021.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~8%20min-57606A?style=flat-square)](#)

📌 *Why embedded devices, industrial control systems, and consumer IoT get their own line on the live outline — they break the usual security assumptions.*

</div>

---

## 🧸 The big idea

Most security guidance assumes a device that can run modern software, receive patches
regularly, and be rebooted without real-world consequences. **Embedded systems, ICS and IoT
devices routinely violate every one of those assumptions.** A programmable logic controller
(PLC) on a factory floor may run for a decade without a reboot, cannot always be patched
without a scheduled outage, and controlling it incorrectly can cause physical harm — not just a
data breach.

This is why the exam names them separately from "network security" in general: **the same
threats apply, but the usual fixes often do not.**

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Embedded system** | A computer built into a larger device for a dedicated purpose (a router, a medical pump, a car's engine controller) rather than general-purpose computing. |
| **ICS (Industrial Control System)** | Systems that monitor and control physical industrial processes — power grids, water treatment, manufacturing lines. |
| **SCADA** | A common type of ICS, coordinating control across geographically distributed sites. |
| **PLC (Programmable Logic Controller)** | A ruggedised industrial computer running control logic for machinery. |
| **IoT (Internet of Things)** | Everyday consumer or commercial devices with network connectivity added — cameras, thermostats, smart locks. |
| **Air gap** | Physically isolating a network from other networks, including the internet, so there is no direct connection to attack. |

---

## 🔍 Why these need different handling

| Assumption in normal IT | What breaks in ICS/embedded/IoT |
|---|---|
| Patch regularly | Patching may require a scheduled outage of a live physical process, or the vendor may no longer support the device |
| Reboot to remediate | A reboot can halt a physical process — sometimes unsafely |
| Long device lifespan is unusual | ICS/embedded hardware routinely runs **10–20+ years** — far past normal IT refresh cycles |
| A compromise is a data problem | ICS compromise can cause **physical, safety-relevant consequences**, not just data loss |
| Devices run modern, updatable software | Many IoT/embedded devices ship with minimal, outdated, or unpatchable firmware |

**Common mitigations, at CC depth:**

- **Segmentation / air-gapping** ICS and IoT networks away from general corporate IT, so a
  compromise on one side does not directly reach the other.
- **Compensating controls** where patching isn't possible — network-level filtering,
  monitoring, and strict access control around the device rather than fixing the device
  itself.
- **Vendor support lifecycle awareness** — knowing when a device reaches end-of-life and can no
  longer receive security updates at all (see asset lifecycle and EOL, Domain 5).

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **ICS / SCADA** | Systems controlling physical industrial processes. | **IoT**, which is typically consumer or commercial connected devices, not industrial process control. |
| **Air gap** | Physical isolation — no network path exists at all. | **Segmentation**, which restricts traffic between connected network zones but does not eliminate the connection entirely. |
| **Embedded system** | A dedicated-purpose computer built into a larger device. | A general-purpose **endpoint** (laptop, server), which runs varied software and is patched on a normal IT cadence. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** "just patch it" is the default response to a known vulnerability.
>
> **On the exam:** for ICS and embedded systems, the textbook-correct answer is often
> **segmentation, monitoring, or a compensating control** — not "apply the patch immediately" —
> because immediate patching can be operationally unsafe or simply unsupported by the vendor.

---

## 🧠 How to remember it

🧠 **"Old, unpatchable, and dangerous to touch."** The three-word summary of why ICS/embedded
devices get different treatment than a normal laptop or server.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** A known vulnerability is found in the firmware of a PLC controlling a manufacturing
line that cannot be taken offline. What is the MOST appropriate immediate response?

- **A.** Apply the patch immediately regardless of the production schedule
- **B.** Apply network segmentation and monitoring as compensating controls until a safe
  patch window exists
- **C.** Ignore the vulnerability since ICS devices are not real security concerns
- **D.** Replace the PLC immediately

<details>
<summary><b>Answer</b></summary>

**B — segmentation and monitoring as compensating controls.** This addresses risk without
forcing an unsafe, unscheduled interruption to a live physical process.

- **A** risks an unsafe or costly unplanned outage of a physical process.
- **C** dismisses a real risk category the exam specifically tests.
- **D** is disproportionate and impractical as an "immediate" response, and ignores that
  interim controls exist.

</details>

**Q2.** Which of the following BEST distinguishes ICS/SCADA systems from typical IoT devices?

- **A.** ICS/SCADA control physical industrial processes; IoT is typically consumer or
  commercial connected devices
- **B.** IoT devices are always more secure than ICS
- **C.** ICS systems never connect to any network
- **D.** There is no meaningful distinction between the two categories

<details>
<summary><b>Answer</b></summary>

**A — ICS/SCADA control physical industrial processes; IoT is broader consumer/commercial
connectivity.** This is the core distinction the exam draws.

- **B** is an unsupported generalisation in either direction.
- **C** is wrong — many ICS environments are networked, which is exactly why segmentation and
  air-gapping matter as controls.
- **D** ignores a distinction the outline specifically separates.

</details>

**Q3.** Why is "reboot to remediate" often not a safe default for ICS environments?

- **A.** Because ICS devices reboot faster than normal computers
- **B.** Because a reboot can halt a live physical process, sometimes unsafely
- **C.** Because ICS devices cannot be rebooted under any circumstances
- **D.** Because rebooting always destroys forensic evidence

<details>
<summary><b>Answer</b></summary>

**B — a reboot can unsafely halt a live physical process.** This is the operational reason ICS
remediation differs from typical IT remediation.

- **A** is not a security consideration.
- **C** overstates the case — some ICS devices can be rebooted, but only within a scheduled,
  safe maintenance window.
- **D** describes a forensic concern unrelated to why ICS reboots are handled cautiously.

</details>

**Q4.** An organisation isolates its ICS network with no physical network connection to any
other network, including the internet. What is this control called?

- **A.** Segmentation
- **B.** Air gap
- **C.** Zero Trust
- **D.** Micro-segmentation

<details>
<summary><b>Answer</b></summary>

**B — air gap.** Complete physical isolation, with no network path at all.

- **A** and **D** both describe restricting traffic between *connected* zones, not eliminating
  the connection entirely.
- **C** is an access philosophy ("never trust, always verify") applied to connected systems,
  not a description of physical isolation.

</details>

**Q5.** What is the PRIMARY reason embedded, ICS, and IoT devices are treated as a distinct
security category from standard IT endpoints?

- **A.** They are always more expensive
- **B.** They routinely violate normal assumptions about patching, rebooting and lifespan, and
  compromise can have physical consequences
- **C.** They are never connected to a network
- **D.** They are outside the scope of any security framework

<details>
<summary><b>Answer</b></summary>

**B — they break normal IT assumptions and compromise can be physically consequential.** This
is exactly why the live outline names them separately.

- **A** is not a security consideration.
- **C** is factually wrong for most IoT and many ICS deployments.
- **D** is wrong — they are explicitly in scope on this exam's own outline.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Purdue Model.** Industrial environments commonly reference a layered reference architecture
(often called the Purdue Model) separating the physical process, control systems, and
enterprise IT into distinct levels with controlled gateways between them. CC does not require
naming this model, but the underlying idea — the enterprise network and the process-control
network should not be flatly connected — is exactly the segmentation principle tested here.

**Why IoT firmware quality varies so widely.** Consumer IoT is frequently built by hardware
manufacturers without dedicated security engineering, competing primarily on price and features
rather than patchability — which is why unpatched, internet-facing IoT devices are a
recurring source of large-scale botnets in the wild.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **ICS/SCADA control physical processes. IoT is broader consumer/commercial connectivity.**
- ICS/embedded devices break normal assumptions: **long lifespan, hard to patch, reboot can be unsafe.**
- Compromise can be **physical, safety-relevant** — not just a data problem.
- **Segmentation / air-gapping** is the go-to control when patching isn't practical.

---

<div align="center">
<sub><a href="../README.md">← back to 04 · Networking and Cloud Security Concepts</a> &nbsp;·&nbsp; <a href="../../03-access-control/README.md">next domain: 03 · IAM Concepts →</a></sub>
</div>
</content>
