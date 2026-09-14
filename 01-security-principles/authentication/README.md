<div align="center">

<img src="assets/authentication-banner.svg" alt="Authentication — prove you are who you say you are" width="100%">

# 🔐 Authentication — Caveman Style

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_1-24%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![Know](https://img.shields.io/badge/1-Something_You_Know-5C7CFA?style=flat-square&labelColor=12243f)](#1--something-you-know)
[![Have](https://img.shields.io/badge/2-Something_You_Have-2F9E44?style=flat-square&labelColor=1d3a2a)](#2--something-you-have)
[![Are](https://img.shields.io/badge/3-Something_You_Are-F08C00?style=flat-square&labelColor=3a2c12)](#3--something-you-are)
[![MFA](https://img.shields.io/badge/MFA-Two%2B_Factors-12B5A5?style=flat-square&labelColor=0f3038)](#-multi-factor-authentication-mfa)

</div>

---

Let's continue with our caveman Grog.

Imagine Grog has a secret cave. He doesn't want random cavemen walking inside.

A caveman comes to the entrance and says:

> "I am Grog."

Grog's guard asks:

> "Prove it."

That process of proving who you are is called **authentication**.

## 🧠 Simple definition

**Authentication = Verifying someone's identity.**

In very simple words:

> "Are you really who you say you are?"

## 🪨 Caveman example

Grog has a cave protected by a stone door.

Another caveman walks up:

> 🧑 "I am Grog. Open the door."

The guard doesn't just believe him. The guard asks for proof.

Maybe Grog knows a secret password:

> 🗣️ "Fire burns."

The guard says:

> "Correct! You are Grog."

🚪 Door opens.

That's authentication.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
sequenceDiagram
    participant G as 🧑 Caveman<br/>claiming to be Grog
    participant D as 🪨 Stone door<br/>guard
    G->>D: "I am Grog"
    D->>G: "Prove it"
    G->>D: "Fire burns" 🗣️
    D->>G: "Correct! You are Grog"
    Note over D: 🚪 Door opens
```

---

## 💻 Authentication in computers

When you log into your Gmail, Instagram, bank account, or computer, the system needs to determine:

> "Who are you?"

You provide some evidence. For example:

### 1 · 🔑 Something You Know

Something that you know. Examples:

- Password
- PIN
- Security question

**Caveman version:** "Tell me the secret word."

### 2 · 📱 Something You Have

Something that you possess. Examples:

- Phone
- Security token
- Smart card
- Authentication app

For example, you enter your password and then receive a code on your phone. The system thinks:

> "You know the password AND you have this phone."

That's stronger authentication.

### 3 · 👆 Something You Are

Something based on your physical characteristics. Examples:

- Fingerprint
- Face
- Iris
- Voice

For example: 👆 Fingerprint scanner → "Yep, that's Grog."

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    ID["❓ Who are you?"]
    ID --> K["🔑 Something You Know<br/>password · PIN<br/>security question"]
    ID --> H["📱 Something You Have<br/>phone · token<br/>smart card"]
    ID --> A["👆 Something You Are<br/>fingerprint · face<br/>iris · voice"]
    K --> PROOF["✅ Evidence of<br/>your identity"]
    H --> PROOF
    A --> PROOF

    style ID fill:#0f3038,stroke:#12B5A5,color:#fff
    style K fill:#12243f,stroke:#5C7CFA,color:#fff
    style H fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style A fill:#3a2c12,stroke:#F08C00,color:#fff
    style PROOF fill:#0f3038,stroke:#12B5A5,color:#fff
```

---

## 🔐 Multi-Factor Authentication (MFA)

Now let's make Grog's cave even safer.

Instead of asking for just one proof, the guard asks for two or more **different types** of proof.

For example:

- Step 1: Enter password 🔑
- Step 2: Enter code from your phone 📱

The attacker might know your password, but they may not have your phone. So getting inside becomes
much harder.

That's **Multi-Factor Authentication (MFA)**.

### Caveman version

> **Guard:** "Tell me the secret word."
> **Grog:** "ROCK."
> **Guard:** "Good. Now show me your magic stone."
> **Grog:** 🪨 "Here."
> **Guard:** "Okay, you are probably Grog."
>
> 🚪 OPEN!

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    W1["🗣️ Secret word:<br/>ROCK"] --> F1{"Correct?"}
    F1 -->|yes| S1["🪨 Show magic stone"]
    F1 -->|no| CLUB["🚫 Rejected"]
    S1 --> F2{"Has it?"}
    F2 -->|yes| OPEN["🚪 Door opens<br/>2 factors matched"]
    F2 -->|no| CLUB2["🚫 Rejected<br/>knew word, no stone"]

    style W1 fill:#12243f,stroke:#5C7CFA,color:#fff
    style F1 fill:#0f3038,stroke:#12B5A5,color:#fff
    style S1 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style F2 fill:#0f3038,stroke:#12B5A5,color:#fff
    style OPEN fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style CLUB fill:#3a1a20,stroke:#E03131,color:#fff
    style CLUB2 fill:#3a1a20,stroke:#E03131,color:#fff
```

---

## ⚠️ Authentication vs Authorization

This is very important because students often confuse them.

> [!IMPORTANT]
> **Authentication = WHO ARE YOU?** The system checks your identity. "Are you really Grog?"
>
> **Authorization = WHAT ARE YOU ALLOWED TO DO?** After the system knows you're Grog, it checks
> your permissions. "Okay, you're Grog. But are you allowed to enter the food room?"

So remember:

- 🔐 **Authentication** = Who are you?
- 🛂 **Authorization** = What can you do?

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    GROG["🧑 Grog at<br/>the food room door"] --> AUTHN{"🔐 Authentication<br/>Is this really Grog?"}
    AUTHN -->|no| DENY["🚫 Not Grog<br/>stop here"]
    AUTHN -->|yes| AUTHZ{"🛂 Authorization<br/>Can Grog enter<br/>the food room?"}
    AUTHZ -->|no| DENY2["🚫 It's Grog, but<br/>not allowed in here"]
    AUTHZ -->|yes| IN["✅ Grog enters<br/>the food room"]

    style GROG fill:#26292e,stroke:#868E96,color:#fff
    style AUTHN fill:#12243f,stroke:#5C7CFA,color:#fff
    style AUTHZ fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style DENY fill:#3a1a20,stroke:#E03131,color:#fff
    style DENY2 fill:#3a1a20,stroke:#E03131,color:#fff
    style IN fill:#0f3038,stroke:#12B5A5,color:#fff
```

---

## 🏦 Bank example

You open your banking app. You enter:

- Username: `Grog`
- Password: `******`

The bank verifies your identity. That's:

🔐 **Authentication**

Then the bank checks whether you are allowed to:

- View your balance
- Transfer money
- Change your address
- Add a beneficiary

That's:

🛂 **Authorization**

---

## 🧠 How it connects to the CIA Triad

Authentication helps protect the CIA Triad. For example:

> [!NOTE]
> **🔒 Confidentiality** — Authentication prevents strangers from accessing private information.
> "Only verified users can see the data."

> [!TIP]
> **✏️ Integrity** — Authentication helps ensure only authorized people can modify data. "Only
> verified users can change the information."

> [!WARNING]
> **🟢 Availability** — Strong authentication can help prevent unauthorized users from abusing
> systems, although availability requires additional protections too.

---

## 🎯 Exam-ready definition

If your teacher asks:

> "What is authentication?"

You can answer:

> **Authentication is the process of verifying the identity of a user, device, or system before
> granting access.**

And remember the caveman:

🪨 **Authentication = "PROVE YOU ARE WHO YOU SAY YOU ARE."**

- Password = something you know
- Phone/token = something you have
- Fingerprint/face = something you are
- 2+ different factors = MFA

---

<div align="center">
<sub><a href="../README.md">← Back to 01 · Security Principles</a></sub>
</div>
