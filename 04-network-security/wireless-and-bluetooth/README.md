<div align="center">

<img src="../assets/module-04-banner.svg" alt="04 · Networking and Cloud Security Concepts" width="100%">

# 📶 Wireless and Bluetooth

### *The two short-range technologies the live outline names by name*

[![Module](https://img.shields.io/badge/Module-04_Network_Security-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-4%20·%2021.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~8%20min-57606A?style=flat-square)](#)

📌 *Wi-Fi security basics, and Bluetooth's own short list of named attacks — new, explicit content on the live outline.*

</div>

---

## 🧸 The big idea

Wired networking assumes a cable defines who can listen. **Wireless removes that assumption** —
anyone within range can receive the signal, whether or not they were meant to. Wireless
security is therefore built around **encrypting the air**, not the cable, and Bluetooth adds
its own short list of named attacks worth recognising by name.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **SSID** | The broadcast name of a Wi-Fi network. |
| **WPA2 / WPA3** | Wi-Fi Protected Access — the current encryption/authentication standards for Wi-Fi. WPA3 is the newer, stronger standard. |
| **WEP** | Wired Equivalent Privacy — an old, broken Wi-Fi encryption standard. If a question treats WEP as acceptable, the question is wrong. |
| **Rogue access point** | An unauthorised Wi-Fi access point connected to the network, often installed without IT's knowledge. |
| **Evil twin** | A malicious access point impersonating a legitimate one's SSID to intercept traffic. |
| **Bluejacking** | Sending unsolicited messages to a Bluetooth device. |
| **Bluesnarfing** | Unauthorised **access to data** on a Bluetooth device. |
| **Bluebugging** | Unauthorised **control** of a Bluetooth device's functions. |

---

## 🔍 Wi-Fi: what the exam actually wants

- **Use WPA2 or WPA3, never WEP or open networks** for anything sensitive. WEP's encryption is
  broken and considered obsolete.
- **A rogue access point** is an availability and confidentiality risk introduced from
  *inside* — an employee plugging in an unauthorised AP for convenience, bypassing every
  perimeter control.
- **An evil twin** is the same idea from *outside* — an attacker's AP broadcasting a familiar
  SSID so victims connect to it instead of the real network, exposing their traffic.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    R["🔓 Rogue AP<br/>installed from INSIDE<br/>bypasses the perimeter"] --> Risk1["⚠️ Unmonitored<br/>entry point"]
    E["🎭 Evil twin<br/>impersonates SSID<br/>from OUTSIDE"] --> Risk2["⚠️ Victims connect<br/>to the attacker"]

    style R fill:#3a1a20,stroke:#E03131,color:#fff
    style E fill:#3a1a20,stroke:#E03131,color:#fff
    style Risk1 fill:#3a2c12,stroke:#F08C00,color:#fff
    style Risk2 fill:#3a2c12,stroke:#F08C00,color:#fff
```

## 🔍 Bluetooth: three named attacks, told apart by severity

| Attack | Does what | Severity |
|---|---|---|
| **Bluejacking** | Sends unsolicited messages | Nuisance — no data access, no control |
| **Bluesnarfing** | Steals data from the device | Confidentiality breach |
| **Bluebugging** | Takes control of device functions (calls, data) | Most severe — full device control |

> 🎯 **Order of severity: Bluejacking < Bluesnarfing < Bluebugging.** The exam expects you to
> rank these, not just define them.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Rogue access point** | Unauthorised AP added from inside the organisation. | **Evil twin**, an attacker's AP impersonating a legitimate SSID from outside. |
| **Bluesnarfing** | Stealing data from a Bluetooth device. | **Bluebugging**, taking control of the device's functions — a more severe outcome than data theft alone. |
| **WPA2/WPA3** | Current, acceptable Wi-Fi security standards. | **WEP**, an obsolete standard whose encryption is broken and should never be presented as adequate. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** you'd flag a rogue AP as a rule-breaking employee problem and an evil twin as
> an attacker problem, and treat them very differently in tone.
>
> **On the exam:** both are tested as the same *category* of risk — an unauthorised wireless
> entry point bypassing intended controls — with the origin (inside vs. outside) as the
> distinguishing detail, not the severity.

---

## 🧠 How to remember it

🧠 **"Jack, snarf, bug — in that order."** Bluejacking annoys, bluesnarfing steals, bluebugging
controls. Alphabetical order happens to match severity order here.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** An attacker sets up a wireless access point broadcasting the same SSID as a coffee
shop's legitimate network, hoping customers connect to it instead. What is this called?

- **A.** Rogue access point
- **B.** Evil twin
- **C.** Bluejacking
- **D.** Bluesnarfing

<details>
<summary><b>Answer</b></summary>

**B — evil twin.** An attacker impersonates a legitimate SSID from outside the organisation to
intercept victim traffic.

- **A** describes an unauthorised AP added from *inside* the organisation, not an
  outsider's impersonation.
- **C** and **D** are Bluetooth attacks, unrelated to Wi-Fi SSID impersonation.

</details>

**Q2.** An employee connects an unauthorised access point to the corporate network for
personal convenience, without informing IT. What is this called?

- **A.** Evil twin
- **B.** Rogue access point
- **C.** Bluebugging
- **D.** WPA3 misconfiguration

<details>
<summary><b>Answer</b></summary>

**B — rogue access point.** An unauthorised AP connected from inside the organisation.

- **A** describes an outsider's impersonation of a legitimate SSID, not an insider's own
  unauthorised device.
- **C** is a Bluetooth attack.
- **D** invents a specific misconfiguration not described in the scenario.

</details>

**Q3.** Which of the following BEST describes bluebugging?

- **A.** Sending unsolicited messages to a nearby Bluetooth device
- **B.** Reading contact and message data from a Bluetooth device without authorisation
- **C.** Gaining unauthorised control over a Bluetooth device's functions
- **D.** Broadcasting a fake Wi-Fi SSID

<details>
<summary><b>Answer</b></summary>

**C — gaining unauthorised control over device functions.** This is the most severe of the
three named Bluetooth attacks.

- **A** describes bluejacking, a nuisance-level attack with no data or control access.
- **B** describes bluesnarfing, data theft rather than device control.
- **D** describes an evil twin, a Wi-Fi attack, not a Bluetooth one.

</details>

**Q4.** Which Wi-Fi security standard should be treated as obsolete and inadequate for any
sensitive network?

- **A.** WPA2
- **B.** WPA3
- **C.** WEP
- **D.** 802.1X

<details>
<summary><b>Answer</b></summary>

**C — WEP.** Its encryption is broken and it should never be presented as adequate protection.

- **A** and **B** are the current acceptable standards.
- **D** is a port-based authentication standard, not a Wi-Fi encryption protocol, and is not
  obsolete.

</details>

**Q5.** Ranking the three named Bluetooth attacks from least to most severe, which order is
correct?

- **A.** Bluesnarfing, bluejacking, bluebugging
- **B.** Bluejacking, bluesnarfing, bluebugging
- **C.** Bluebugging, bluesnarfing, bluejacking
- **D.** All three are equally severe

<details>
<summary><b>Answer</b></summary>

**B — bluejacking, bluesnarfing, bluebugging.** Nuisance messaging, then data theft, then full
device control.

- **A** and **C** both misorder the sequence.
- **D** ignores a clear and frequently tested severity distinction between the three.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Why WEP failed.** WEP's flaw was in its use of the RC4 stream cipher with a short,
frequently-reused initialisation vector, which let attackers statistically recover the key from
captured traffic within minutes on a busy network. WPA and WPA2 addressed this with TKIP and
then AES-based CCMP; WPA3 further strengthens the handshake against offline password-guessing
attacks.

**Bluetooth's attack surface has shrunk with the protocol's own evolution.** Modern Bluetooth
Low Energy implementations with proper pairing (not "Just Works" mode on sensitive devices)
are considerably harder to bluesnarf or bluebug than older Bluetooth Classic devices, which is
why these attacks are now more associated with older or poorly configured hardware than with
current flagship devices — though the vocabulary remains exam-relevant regardless.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Rogue AP = unauthorised, from inside.** **Evil twin = impersonation, from outside.**
- **Bluejacking (messages) < Bluesnarfing (data) < Bluebugging (control).**
- **WEP is obsolete. WPA2/WPA3 are current.**

---

<div align="center">
<sub><a href="../README.md">← back to 04 · Networking and Cloud Security Concepts</a> &nbsp;·&nbsp; <a href="../iot-and-ics/">next: IoT and ICS →</a></sub>
</div>
</content>
