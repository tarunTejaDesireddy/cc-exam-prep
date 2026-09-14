<div align="center">

<img src="assets/non-repudiation-banner.svg" alt="Non-Repudiation — you can't deny that you did it" width="100%">

# 🧾 Non-Repudiation — Caveman Style

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_1-24%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![Digital Signature](https://img.shields.io/badge/🔏-Digital_Signature-5C7CFA?style=flat-square&labelColor=12243f)](#-how-does-it-work)
[![vs Integrity](https://img.shields.io/badge/✏️-vs_Integrity-2F9E44?style=flat-square&labelColor=1d3a2a)](#%EF%B8%8F-non-repudiation-vs-integrity)
[![vs Authentication](https://img.shields.io/badge/🔐-vs_Authentication-F08C00?style=flat-square&labelColor=3a2c12)](#-non-repudiation-vs-authentication)

</div>

---

Let's continue with Grog. 🪨

You already know:

- 🔐 **Authentication** = "Who are you?"
- 🎫 **Authorization** = "What are you allowed to do?"
- 📋 **Accounting** = "What did you do?"

Now we have another important security concept:

> 🧾 **Non-repudiation = "You can't deny that you did it."**

## 🪨 Caveman example

Imagine Grog wants to trade 10 pieces of meat for another caveman's special stone axe.

They make a written agreement on a cave wall:

> Grog gives 10 meat → Grog receives 1 axe

Grog puts his special symbol next to the agreement. 🖐️

Later, Grog says:

> "I never agreed to that!"

But the tribe can look at the agreement and verify that Grog created/approved it.

Grog can't reasonably deny that he made the transaction.

That's the basic idea of non-repudiation.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
sequenceDiagram
    participant G as 🧑 Grog
    participant W as 🪨 Cave wall<br/>agreement
    participant T as 🧑‍🤝‍🧑 The tribe
    G->>W: 10 meat for 1 axe
    G->>W: 🖐️ places his mark
    Note over G: later...
    G->>T: "I never agreed to that!"
    T->>W: checks the mark
    W->>T: mark matches Grog
    T->>G: "You can't deny it"
```

## 💻 Computer example

Imagine you send someone a digitally signed document.

For example:

> "I agree to buy this company for $1 million."

You use a digital signature to sign the document.

Later, you say:

> "I never signed that!"

A properly implemented digital-signature system can provide evidence that:

1. The document was signed using your private key.
2. The document has not been altered since it was signed.
3. The signature can be verified using your public key.

Therefore, you have much less ability to falsely deny having signed it.

That's non-repudiation.

## 🔏 How does it work?

One major technology used for non-repudiation is a digital signature.

Think of it like Grog's special unforgeable cave mark.

Grog writes a message:

> "Give 10 meat to Bob."

Grog digitally signs it.

The recipient can verify the signature.

If the signature is valid, they have evidence that the message was signed by the holder of the
corresponding private key and that the signed data wasn't altered.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    MSG["📝 'Give 10 meat<br/>to Bob'"] --> SIGN["🔑 Signed with<br/>Grog's private key"]
    SIGN --> SEND["📨 Sent to Bob"]
    SEND --> VER["🔓 Bob verifies with<br/>Grog's public key"]
    VER --> OK["✅ Valid: signed by<br/>Grog, unaltered"]

    style MSG fill:#26292e,stroke:#868E96,color:#fff
    style SIGN fill:#12243f,stroke:#5C7CFA,color:#fff
    style SEND fill:#0f3038,stroke:#12B5A5,color:#fff
    style VER fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style OK fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

## 🔑 Private key and public key

Digital signatures commonly use public-key cryptography.

Think of it this way:

> [!IMPORTANT]
> **🔑 Private key** — Grog keeps this secret. "Only Grog should have this."
>
> **🔓 Public key** — Grog can give this to everyone. "Anyone can use this to verify my signature."

So:

> Private key → creates signature
> Public key → verifies signature

## ✏️ Non-repudiation vs Integrity

These two are easy to confuse.

### ✏️ Integrity

Asks:

> "Was the information changed?"

Example:

Grog signs:

> "Give Bob 10 meat."

Someone changes it to:

> "Give Bob 100 meat."

The signature verification should fail.

That's an integrity issue.

### 🧾 Non-repudiation

Asks:

> "Can Grog credibly deny that he signed/approved this?"

The digital signature provides evidence associated with Grog's signing key.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    Q{"What's the<br/>question?"}
    Q -->|"was it changed?"| I["✏️ Integrity<br/>signature verification<br/>fails if altered"]
    Q -->|"can they deny<br/>signing it?"| N["🧾 Non-repudiation<br/>evidence ties the<br/>signature to Grog"]

    style Q fill:#0f3038,stroke:#12B5A5,color:#fff
    style I fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style N fill:#12243f,stroke:#5C7CFA,color:#fff
```

## 🔐 Non-repudiation vs Authentication

Also important:

**Authentication** — "Who are you?"

**Non-repudiation** — "Can you later deny performing this action?"

For example:

Grog logs into the system with his password.

That's authentication.

Grog digitally signs a contract.

That can provide non-repudiation evidence.

## 🏦 Real-world example

Imagine you make an online banking transaction.

You digitally authorize a payment.

The system records and cryptographically protects evidence of the authorization.

Later, you say:

> "I didn't authorize this payment."

Depending on the system and applicable rules, digital signatures, authentication records,
timestamps, and audit logs may help establish what happened.

This is why non-repudiation is useful in:

- 🏦 Banking
- 📄 Digital contracts
- 💼 Business transactions
- 📧 Secure communications
- 🏛️ Government systems
- 🛒 Online transactions

## 🧠 Caveman memory trick

Imagine Grog signs a stone agreement. 🪨

> [!NOTE]
> **Authentication:** "Are you Grog?"
>
> **Authorization:** "Is Grog allowed to make this agreement?"
>
> **Accounting:** "What did Grog do?"
>
> **Non-repudiation:** "Grog, you can't simply say you never signed it — the system has verifiable
> evidence of the signature."

## 🎯 One sentence for your exam

**Non-repudiation is a security property that provides evidence so that a party cannot credibly
deny performing or authorizing a particular action or transaction.**

Easy version:

🧾 **Non-repudiation = "You did it, and there's evidence you did it."**

---

<div align="center">
<sub><a href="../README.md">← Back to 01 · Security Principles</a></sub>
</div>
