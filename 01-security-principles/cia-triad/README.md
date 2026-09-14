<div align="center">

<img src="assets/cia-banner.svg" alt="The CIA Triad — the three big rules of the secret cave" width="100%">

# 🔺 The C.I.A. Triad

### *The Three Big Rules of the Secret Cave*

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_1-24%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![Confidentiality](https://img.shields.io/badge/C-Keep_Secret-5C7CFA?style=flat-square&labelColor=12243f)](#-c--confidentiality-keep-secret)
[![Integrity](https://img.shields.io/badge/I-No_Messing_With_Stuff-2F9E44?style=flat-square&labelColor=1d3a2a)](#-i--integrity-no-messing-with-stuff)
[![Availability](https://img.shields.io/badge/A-Can_Use_Now-F08C00?style=flat-square&labelColor=3a2c12)](#-a--availability-can-use-now)

</div>

---

Listen closely. You have a cave. Inside, you have shiny rocks, good berries, and a very nice spear.
You want to keep them safe from other tribes and saber-tooth tigers.

To keep your cave safe, you must follow three big rules. The wise shamans of information security
call this the CIA Triad.

Here is how it works:

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    CAVE["🏔️ Your cave<br/>shiny rocks, berries,<br/>your best spear"]
    CAVE --> C["🔒 CONFIDENTIALITY<br/>Keep Secret<br/>Grog never sees it"]
    CAVE --> I["✅ INTEGRITY<br/>No Messing With Stuff<br/>stays how you left it"]
    CAVE --> A["⚡ AVAILABILITY<br/>Can Use Now<br/>grab it when you need it"]
    C --> SAFE["🛡️ Your cave stays<br/>safe and strong"]
    I --> SAFE
    A --> SAFE

    style CAVE fill:#0f3038,stroke:#12B5A5,color:#fff
    style C fill:#12243f,stroke:#5C7CFA,color:#fff
    style I fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style A fill:#3a2c12,stroke:#F08C00,color:#fff
    style SAFE fill:#0f3038,stroke:#12B5A5,color:#fff
```

---

## 🔒 C · Confidentiality (Keep Secret)

**What it means:** Only the right cavemen are allowed to see your things.

> [!NOTE]
> **Caveman Example:** You find a really shiny rock and hide it under a pile of furs. If Grog from
> the river tribe sneaks in and looks at your rock, your secret is broken! Confidentiality means
> making sure Grog never sees the rock.

---

## ✅ I · Integrity (No Messing With Stuff)

**What it means:** Your things stay exactly how you left them. Nobody changes or breaks them.

> [!TIP]
> **Caveman Example:** You paint four mammoths on the cave wall to remember how many you saw on
> the hunt. While you sleep, Grog sneaks in and rubs mud over one mammoth so it looks like three.
> The painting is wrong now! Integrity means making sure nobody messes with your mammoth painting.
> It must stay true.

---

## ⚡ A · Availability (Can Use Now)

**What it means:** When you need your things, you can get them right away.

> [!WARNING]
> **Caveman Example:** A saber-tooth tiger is attacking! You run to grab your best spear. But
> wait... you buried it under a massive boulder so Grog couldn't find it. Now it takes you ten
> minutes to dig it out, and the tiger eats you. Availability means your spear is ready to grab
> exactly when you need it.

---

## 💥 Each rule breaks a different way

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    F1["👀 Grog looks under<br/>the pile of furs"] --> B1["❌ Confidentiality broken<br/>the rock's not a secret"]
    F2["🪨 Mud rubs out one<br/>of the mammoths"] --> B2["❌ Integrity broken<br/>the painting now lies"]
    F3["🦣 Spear buried under<br/>a massive boulder"] --> B3["❌ Availability broken<br/>the tiger gets you"]

    style F1 fill:#26292e,stroke:#868E96,color:#fff
    style F2 fill:#26292e,stroke:#868E96,color:#fff
    style F3 fill:#26292e,stroke:#868E96,color:#fff
    style B1 fill:#3a1a20,stroke:#E03131,color:#fff
    style B2 fill:#3a1a20,stroke:#E03131,color:#fff
    style B3 fill:#3a1a20,stroke:#E03131,color:#fff
```

---

## ⚖️ The Big Tribe Balance

The hardest part of protecting the cave is balancing the three rules. If you bury your spear too
deep (too much Confidentiality), you can't use it fast (low Availability). Good security means
finding the perfect balance so your stuff is secret, unchanged, and ready to use!

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    DEEP["⛰️ Bury spear too deep<br/>high Confidentiality"] --> SLOW["🐌 Too slow to dig out<br/>low Availability"]
    OPEN["📢 Leave spear out<br/>in the open"] --> FAST["⚡ Grab it instantly<br/>high Availability"]
    OPEN --> SEEN["👀 Grog sees it too<br/>low Confidentiality"]
    BAL["⚖️ Find the balance"] --> GOOD["🛡️ Secret, unchanged,<br/>ready to use"]

    style DEEP fill:#12243f,stroke:#5C7CFA,color:#fff
    style SLOW fill:#3a1a20,stroke:#E03131,color:#fff
    style OPEN fill:#3a2c12,stroke:#F08C00,color:#fff
    style FAST fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style SEEN fill:#3a1a20,stroke:#E03131,color:#fff
    style BAL fill:#0f3038,stroke:#12B5A5,color:#fff
    style GOOD fill:#0f3038,stroke:#12B5A5,color:#fff
```

---

<div align="center">
<sub><a href="../README.md">← Back to 01 · Security Principles</a></sub>
</div>
