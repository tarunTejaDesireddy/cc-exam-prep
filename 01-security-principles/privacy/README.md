<div align="center">

<img src="assets/privacy-banner.svg" alt="Privacy — my personal information belongs to me" width="100%">

# 🕵️ Privacy — Caveman Style

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_1-24%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![vs Confidentiality](https://img.shields.io/badge/🔒-vs_Confidentiality-5C7CFA?style=flat-square&labelColor=12243f)](#-privacy-vs-confidentiality)
[![Cybersecurity](https://img.shields.io/badge/🎯-vs_Cybersecurity-2F9E44?style=flat-square&labelColor=1d3a2a)](#-privacy-and-cybersecurity)

</div>

---

Let's continue with Grog. 🪨

You already know:

- 🔐 **Authentication** = "Who are you?"
- 🎫 **Authorization** = "What are you allowed to do?"
- 📋 **Accounting** = "What did you do?"
- 🧾 **Non-repudiation** = "You can't deny that you did it."

Now:

> 🕵️ **Privacy = "Who is allowed to know my personal stuff, and how is it used?"**

## 🪨 Caveman example

Imagine Grog has a private cave.

Inside he has:

- ❤️ A diary about his family
- 🗺️ His personal hunting routes
- 🏠 Information about where he lives
- 💰 How much food he owns
- 🧑‍🤝‍🧑 Information about his family

Grog tells the tribe leader:

> "You can know where I live, but don't tell everyone."

The tribe leader shouldn't take that information and announce it to the entire tribe.

That's privacy.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
sequenceDiagram
    participant G as 🧑 Grog
    participant L as 🏛️ Tribe leader
    participant T as 🧑‍🤝‍🧑 The whole tribe
    G->>L: "You can know where I live"
    G->>L: "but don't tell everyone"
    Note over L: 🕵️ Leader must respect<br/>Grog's stated purpose
    L--xT: does NOT announce it
```

## 💻 Privacy in the real world

Privacy is about personal information and how it is:

- Collected
- Used
- Stored
- Shared
- Protected
- Deleted

Examples of personal information include:

- 👤 Name
- 🏠 Address
- 📱 Phone number
- 📧 Email
- 📍 Location
- 💳 Financial information
- 🩺 Health information
- 🖼️ Photos
- 🌐 Browsing/activity information

Privacy asks questions like:

> "Why is this information being collected?"
> "Who can use it?"
> "Who can it be shared with?"
> "How long will it be kept?"

## 🔒 Privacy vs Confidentiality

This is very important. They sound similar, but they're not the same.

### 🔒 Confidentiality

Confidentiality is about:

> **Preventing unauthorized people from seeing information.**

Example: Grog's secret information is stored in a locked cave. Only authorized people can enter.
That's confidentiality.

### 🕵️ Privacy

Privacy is about:

> **Giving people appropriate control over their personal information and ensuring it is handled
> appropriately.**

Example: Grog gives the tribe leader his location for a specific reason. The leader shouldn't use
that information for an unrelated purpose or share it without appropriate permission. That's
privacy.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    Q{"What's the<br/>concern?"}
    Q -->|"can the wrong<br/>person see it?"| C["🔒 Confidentiality<br/>locked cave,<br/>keep strangers out"]
    Q -->|"is MY info used<br/>the right way?"| P["🕵️ Privacy<br/>my location, only<br/>for the stated reason"]

    style Q fill:#0f3038,stroke:#12B5A5,color:#fff
    style C fill:#12243f,stroke:#5C7CFA,color:#fff
    style P fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

## 🧠 Simple example

Imagine you download a phone app.

The app asks:

> "Can I access your location?"

You say: Yes.

That's not the end of the privacy question. You might also ask:

> "Why does the app need my location?"
> "Does it store my location?"
> "Does it share my location with another company?"
> "How long does it keep my location?"

Those are privacy questions.

## 🏦 Example: Bank

Your bank has information about you. For example:

> **Grog**
> 💰 Balance: $5,000
> 🏠 Address: Cave #7
> 📱 Phone: 123456

**Confidentiality** — A random hacker shouldn't be able to access this information. 🔒 Keep
unauthorized people out.

**Privacy** — The bank should handle your personal information according to applicable laws,
policies, and the purposes for which it was collected. 🕵️ Use personal information appropriately.

## 🎯 Privacy and cybersecurity

Privacy is closely connected to cybersecurity.

Suppose a company collects your personal information. If hackers steal it:

> 🕵️ Your privacy may be harmed.

Cybersecurity controls such as:

- 🔐 Encryption
- 🔑 Access controls
- 🛡️ Authentication
- 💾 Secure storage
- 📋 Auditing

can help protect personal information.

But cybersecurity alone doesn't automatically guarantee privacy. A company could have excellent
security but still use personal information in an inappropriate way.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    CO["🏢 Company holds your<br/>personal information"]
    CO --> SEC["🛡️ Strong cybersecurity<br/>encryption, access control,<br/>auditing"]
    SEC --> KEPT["✅ Hackers kept out<br/>confidentiality holds"]
    CO --> USE["🕵️ How the data<br/>is actually used"]
    USE -.->|"used properly"| GOOD["✅ Privacy respected"]
    USE -.->|"misused, even<br/>if never breached"| BAD["❌ Privacy harmed<br/>despite good security"]

    style CO fill:#0f3038,stroke:#12B5A5,color:#fff
    style SEC fill:#12243f,stroke:#5C7CFA,color:#fff
    style KEPT fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style USE fill:#3a2c12,stroke:#F08C00,color:#fff
    style GOOD fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style BAD fill:#3a1a20,stroke:#E03131,color:#fff
```

## 🧠 Caveman memory trick

Imagine Grog gives the tribe leader a secret piece of information. 🪨

> [!NOTE]
> **🔒 Confidentiality:** "Don't let unauthorized cavemen see it."
>
> **🕵️ Privacy:** "It's MY information. Use it appropriately and respect my choices."

## 🎯 Exam-ready definition

**Privacy is the protection and appropriate handling of an individual's personal information,
including how it is collected, used, stored, and shared.**

Super-simple version:

🕵️ **Privacy = "My personal information belongs to me, so handle it properly."**

---

<div align="center">
<sub><a href="../README.md">← Back to 01 · Security Principles</a></sub>
</div>
