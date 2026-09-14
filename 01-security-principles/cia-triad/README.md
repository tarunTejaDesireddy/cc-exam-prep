<div align="center">

<img src="assets/cia-banner.svg" alt="The CIA Triad — three rules for keeping the berry map safe" width="100%">

# 🔺 The CIA Triad

### *The three big rules of keeping information secure*

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=for-the-badge&labelColor=07171c)](../README.md)
[![Domain](https://img.shields.io/badge/Domain_1-24%25-12B5A5?style=for-the-badge&labelColor=0f3038)](../README.md)

[![Confidentiality](https://img.shields.io/badge/C-Keep_it_Secret-5C7CFA?style=flat-square&labelColor=12243f)](#-1--confidentiality-keep-it-secret)
[![Integrity](https://img.shields.io/badge/I-Keep_it_True-2F9E44?style=flat-square&labelColor=1d3a2a)](#-2--integrity-keep-it-true)
[![Availability](https://img.shields.io/badge/A-Keep_it_Reachable-F08C00?style=flat-square&labelColor=3a2c12)](#-3--availability-keep-it-reachable)

</div>

---

Imagine you just found the best patch of sweet berries in the entire forest. You paint a map to
the berries on a special, flat rock. Because the winter is coming, this map is the most valuable
thing you own.

To keep your map safe, you need the CIA Triad — the three big rules of keeping information secure.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    MAP["🗺️ The berry map rock<br/>the most valuable thing<br/>you own"]
    MAP --> C["🔒 CONFIDENTIALITY<br/>Keep it Secret<br/>hidden under the bed"]
    MAP --> I["✅ INTEGRITY<br/>Keep it True<br/>no fake rivers on it"]
    MAP --> A["⚡ AVAILABILITY<br/>Keep it Reachable<br/>not under a boulder"]
    C --> SAFE["🛡️ A map still worth<br/>having when winter comes"]
    I --> SAFE
    A --> SAFE

    style MAP fill:#0f3038,stroke:#12B5A5,color:#fff
    style C fill:#12243f,stroke:#5C7CFA,color:#fff
    style I fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style A fill:#3a2c12,stroke:#F08C00,color:#fff
    style SAFE fill:#0f3038,stroke:#12B5A5,color:#fff
```

---

## 🔒 1 · Confidentiality (Keep it Secret)

You don't want the rival tribe to find your berries. So, you hide your map rock deep under your
mammoth-skin bed. You only tell your hunting partner where it is.

> [!NOTE]
> **The Rule:** Only the right people are allowed to look at the secret information. Bad guys
> stay out.

---

## ✅ 2 · Integrity (Keep it True)

While you are out hunting, you want to make sure nobody sneaks into your cave and scratches a
fake river onto your map to trick you into walking off a cliff. When you look at the rock again,
it needs to be exactly how you painted it.

> [!TIP]
> **The Rule:** The information must be accurate and unchanged. Nobody is allowed to mess with it
> or alter it behind your back.

---

## ⚡ 3 · Availability (Keep it Reachable)

You wake up starving. You need the map now. If you buried the rock under a giant boulder that you
can't lift, the map is perfectly safe, but it's completely useless to you. You need to be able to
grab the rock whenever you are hungry.

> [!WARNING]
> **The Rule:** When the good guys need the information, they must be able to actually get to it
> and use it without things breaking or being blocked.

---

## 💥 Each rule breaks a different way

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    T1["🕵️ Rival tribe finds the<br/>rock and reads it"] --> F1["❌ Confidentiality broken<br/>they saw the secret"]
    T2["✏️ Someone scratches a<br/>fake river onto it"] --> F2["❌ Integrity broken<br/>the map now lies"]
    T3["🪨 Rock buried under a<br/>boulder you cannot lift"] --> F3["❌ Availability broken<br/>safe but useless"]

    style T1 fill:#26292e,stroke:#868E96,color:#fff
    style T2 fill:#26292e,stroke:#868E96,color:#fff
    style T3 fill:#26292e,stroke:#868E96,color:#fff
    style F1 fill:#3a1a20,stroke:#E03131,color:#fff
    style F2 fill:#3a1a20,stroke:#E03131,color:#fff
    style F3 fill:#3a1a20,stroke:#E03131,color:#fff
```

Same rock, three completely different disasters. Ask yourself which promise about the map got
broken, and the rule names itself.

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontFamily':'Segoe UI, Helvetica Neue, Arial, sans-serif','fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart TD
    Q{"Something went wrong<br/>with the map.<br/>What happened?"}
    Q -->|"someone saw it"| C["🔒 Confidentiality"]
    Q -->|"someone changed it"| I["✅ Integrity"]
    Q -->|"you cannot reach it"| A["⚡ Availability"]

    style Q fill:#0f3038,stroke:#12B5A5,color:#fff
    style C fill:#12243f,stroke:#5C7CFA,color:#fff
    style I fill:#1d3a2a,stroke:#2F9E44,color:#fff
    style A fill:#3a2c12,stroke:#F08C00,color:#fff
```

---

## 🧔 The Caveman Explains it Back

> *"Me understand! CIA like protecting berry map!*
>
> - ***C** is for **C**over map (Confidentiality). Ogg no see my map. Only me see.*
> - ***I** is for **I**ntact map (Integrity). Ogg no draw fake river on my map. Map stay true.*
> - ***A** is for **A**lways get map (Availability). Map no stuck under big heavy rock. Me get map
>   when me hungry."*

---

<div align="center">
<sub><a href="../README.md">← Back to 01 · Security Principles</a></sub>
</div>
