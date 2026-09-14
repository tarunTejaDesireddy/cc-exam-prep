<div align="center">

<img src="assets/cia-banner.svg" alt="The CIA Triad — the three big rules of the secret cave" width="100%">

# 🔺 The C.I.A. Triad

### *The Three Big Rules of the Secret Cave*

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_1-24%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![Confidentiality](https://img.shields.io/badge/C-The_Secret_Keep-5C7CFA?style=flat-square&labelColor=12243f)](#-c--confidentiality-the-secret-keep)
[![Integrity](https://img.shields.io/badge/I-Truth_Stays_Truth-2F9E44?style=flat-square&labelColor=1d3a2a)](#-i--integrity-the-truth-stays-truth)
[![Availability](https://img.shields.io/badge/A-The_Always_There-F08C00?style=flat-square&labelColor=3a2c12)](#-a--availability-the-always-there)

</div>

---

Listen close, Thag. The world is dangerous. Saber-tooth tigers want to eat us. Rival tribes want to
steal our fire. To keep our tribe safe and strong, we must protect what we know.

We do this using the C.I.A. Triad.

No, it is not a new type of spear. It is the Three Big Rules of the Secret Cave. If you want to be
the Chief of Information, you must understand all three.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    T["🔥 What the tribe knows<br/>berries, bear map, fire"]
    T --> C["🔒 CONFIDENTIALITY<br/>The Secret Keep<br/>only right cavemen see"]
    T --> I["✅ INTEGRITY<br/>The Truth Stays Truth<br/>nobody changed it"]
    T --> A["⚡ AVAILABILITY<br/>The Always There<br/>we can reach it now"]
    C --> S["🌱 The tribe lives to<br/>see the next spring"]
    I --> S
    A --> S

    style T fill:#0f3038,stroke:#12B5A5,color:#fff
    style C fill:#12243f,stroke:#5C7CFA,color:#fff
    style I fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style A fill:#3a2c12,stroke:#F08C00,color:#fff
    style S fill:#0f3038,stroke:#12B5A5,color:#fff
```

---

## 🔒 C · Confidentiality (The Secret Keep)

**What it means:** Only the right cavemen get to see the secret stuff.

Imagine you find a bush with the sweetest, fattest purple berries. If you yell about it, the whole
valley comes. The berries get eaten by strangers. Bad!

To practice Confidentiality, you only tell the hunters in your tribe.

> [!NOTE]
> **How we do it:**
>
> - **Secret Grunts (Passwords):** Before someone comes into the berry cave, they must make the
>   special owl noise. Wrong noise? Hit with club.
> - **Scrambled Cave Paintings (Encryption):** Instead of drawing a map to the berries, you draw
>   weird squiggles. Only our tribe knows that a squiggle of a snake actually means "go left at the
>   big rock." If a rival tribe looks at the wall, they just see snake squiggles and get confused.

---

## ✅ I · Integrity (The Truth Stays Truth)

**What it means:** Nobody changed the information. It is exactly how we left it.

Imagine the Chief draws a picture on the wall: "Big angry bear sleeps in the north cave. Do not go."
But in the night, a sneaky rival caveman sneaks in and rubs mud over "north" and draws "south." Now,
our hunters go north thinking it is safe, and they get eaten by the bear! The information was
tampered with. It lost its Integrity.

> [!TIP]
> **How we do it:**
>
> - **Counting the Mammoth Bones (Checksums/Hashing):** If you leave 10 mammoth bones in a pile to
>   build a tent, you count them. "One, two... many... ten!" When you come back, you count again. If
>   there are 9 bones, you know someone messed with your pile. The pile cannot be trusted anymore.
> - **Guarding the Wall (Access Controls):** We put a big heavy rock in front of the cave wall so
>   nobody can sneak in at night to change the bear drawing.

---

## ⚡ A · Availability (The Always There)

**What it means:** When we need the information, we can actually get it. Right now.

Imagine it is freezing cold. The snow is falling. We need to know how to rub the special sticks
together to make fire. The instructions are painted on a rock... but a giant mammoth sat on the rock
and went to sleep. You cannot read the rock. You freeze.

Even if the instructions are a secret (Confidentiality) and they are correct (Integrity), it does
not matter because you cannot reach them (Availability)!

> [!WARNING]
> **How we do it:**
>
> - **Two Caves (Backups):** Do not keep all the shiny rocks in one cave. If a river floods the
>   cave, you lose everything. Put half the shiny rocks in a cave up on the hill.
> - **Big Log Removal (DDoS Protection):** Sometimes rival tribes throw hundreds of useless rocks at
>   our cave entrance so we cannot get out to hunt. We must have strong guards to sweep the useless
>   rocks away so the hunters can always walk through the door.

---

## 💥 Each rule breaks a different way

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    F1["📢 You yell about the<br/>berry bush"] --> B1["❌ Confidentiality lost<br/>strangers eat the berries"]
    F2["🪵 Mud rubs out north<br/>and draws south"] --> B2["❌ Integrity lost<br/>hunters meet the bear"]
    F3["🦣 Mammoth sits on the<br/>fire instructions"] --> B3["❌ Availability lost<br/>the tribe freezes"]

    style F1 fill:#26292e,stroke:#868E96,color:#fff
    style F2 fill:#26292e,stroke:#868E96,color:#fff
    style F3 fill:#26292e,stroke:#868E96,color:#fff
    style B1 fill:#3a1a20,stroke:#E03131,color:#fff
    style B2 fill:#3a1a20,stroke:#E03131,color:#fff
    style B3 fill:#3a1a20,stroke:#E03131,color:#fff
```

---

## 🛠️ What the tribe does about it

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    C["🔒 Confidentiality"] --> C1["🦉 Secret grunts<br/>= passwords"]
    C --> C2["🌀 Scrambled paintings<br/>= encryption"]
    I["✅ Integrity"] --> I1["🦴 Counting bones<br/>= checksums, hashing"]
    I --> I2["🪨 Heavy rock on wall<br/>= access controls"]
    A["⚡ Availability"] --> A1["🏔️ Two caves<br/>= backups"]
    A --> A2["🧹 Sweeping useless rocks<br/>= DDoS protection"]

    style C fill:#12243f,stroke:#5C7CFA,color:#fff
    style C1 fill:#12243f,stroke:#5C7CFA,color:#fff
    style C2 fill:#12243f,stroke:#5C7CFA,color:#fff
    style I fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style I1 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style I2 fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style A fill:#3a2c12,stroke:#F08C00,color:#fff
    style A1 fill:#3a2c12,stroke:#F08C00,color:#fff
    style A2 fill:#3a2c12,stroke:#F08C00,color:#fff
```

---

## 🧔 Remember the Triad, Thag

1. Keep the berries a secret **(C)**.
2. Make sure nobody changes the bear map **(I)**.
3. Do not let the mammoth sit on the fire instructions **(A)**.

If you do these three things, your tribe's information will live to see the next spring!

---

<div align="center">
<sub><a href="../README.md">← Back to 01 · Security Principles</a></sub>
</div>
