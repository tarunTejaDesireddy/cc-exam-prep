<div align="center">

<img src="../assets/module-05-banner.svg" alt="05 · Security Operations and Incident Response" width="100%">

# 🧪 Security testing methods

### *Red, blue, purple, and the four ways to find a bug in an application before an attacker does*

[![Module](https://img.shields.io/badge/Module-05_Security_Operations-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-5%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~10%20min-57606A?style=flat-square)](#)

📌 *Two of the outline's three security testing clusters: readiness testing (team colours) and application testing (scanning and analysis techniques). The third, physical testing, has its own page.*

</div>

---

## 🧸 The big idea

Security testing means **deliberately trying to find weaknesses before someone hostile does.**
The live outline groups this into three clusters: **readiness testing** (people and process,
organised by team colour), **application testing** (finding bugs in software), and **physical
penetration testing** (covered on its own page). This page covers the first two.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Red team** | Authorised attackers simulating real adversaries against the organisation's defences. |
| **Blue team** | The defenders — the team detecting and responding to the red team's activity. |
| **Purple team** | A collaborative exercise where red and blue actively share findings **during** the exercise, to improve detection faster than a purely adversarial exercise would. |
| **Vulnerability scanning** | Automated scanning of systems/applications against a database of known vulnerabilities. |
| **SAST (Static Application Security Testing)** | Analysing an application's **source code** for security flaws, without running it. |
| **DAST (Dynamic Application Security Testing)** | Testing a **running** application from the outside, the way an attacker would interact with it. |
| **Threat modeling** | Systematically identifying what could go wrong in a system's design, **before or during development** — a design-time activity, not a scan. |

---

## 🔍 Readiness testing: red, blue, purple

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    R["🔴 RED TEAM<br/>simulates the attacker"] -.->|"adversarial, sequential"| B["🔵 BLUE TEAM<br/>detects & responds"]
    R2["🔴 Red"] <-->|"collaborative, real-time"| P["🟣 PURPLE<br/>shared findings<br/>during the exercise"]
    P <--> B2["🔵 Blue"]

    style R fill:#3a1a20,stroke:#E03131,color:#fff
    style B fill:#12243f,stroke:#5C7CFA,color:#fff
    style R2 fill:#3a1a20,stroke:#E03131,color:#fff
    style P fill:#26292e,stroke:#868E96,color:#fff
    style B2 fill:#12243f,stroke:#5C7CFA,color:#fff
```

| Team | Role | Style |
|---|---|---|
| **Red** | Simulates a real attacker, trying to get in and stay undetected | Adversarial |
| **Blue** | Defends, detects, and responds | Adversarial (from red's perspective) |
| **Purple** | Red and blue collaborate and share findings **as the exercise runs** | Collaborative |

> 🎯 **Purple team's defining feature is the timing of information sharing.** In a traditional
> red-vs-blue exercise, findings are shared in a debrief *after* the exercise ends. In a purple
> team exercise, sharing happens **during**, specifically to accelerate blue team learning.

---

## 🔍 Application testing: four techniques, told apart by *when* and *how*

| Technique | Looks at | When | Finds |
|---|---|---|---|
| **Vulnerability scanning** | Systems/apps against a **known-vulnerability database** | Any time, often scheduled/automated | Known, previously catalogued vulnerabilities |
| **SAST** | **Source code**, without executing it | Early — during development, before the app runs | Coding flaws (injection patterns, insecure functions) directly in the code |
| **DAST** | A **running** application, from the outside | Later — once the app is deployed/running | Flaws only visible from actual runtime behaviour (how it responds to malicious input) |
| **Threat modeling** | The system's **design** | Design/architecture time — often the earliest of all | Structural weaknesses before any code is even written |

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'13px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    T["🧩 Threat modeling<br/>DESIGN"] --> S["📄 SAST<br/>SOURCE CODE"] --> D["🖥️ DAST<br/>RUNNING APP"] --> V["🔍 Vuln scanning<br/>ONGOING, any stage"]

    style T fill:#12243f,stroke:#5C7CFA,color:#fff
    style S fill:#0f3038,stroke:#12B5A5,color:#fff
    style D fill:#3a2c12,stroke:#F08C00,color:#fff
    style V fill:#26292e,stroke:#868E96,color:#fff
```

> 🎯 **SAST reads; DAST attacks.** SAST never runs the application — it reads the code. DAST
> never reads the code — it interacts with the running application the way a user or attacker
> would.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Red vs. blue team exercise** | Adversarial; findings shared in a debrief afterwards. | **Purple team**, where red and blue collaborate and share findings **during** the exercise. |
| **SAST** | Analyses **source code**, app not running. | **DAST**, which tests a **running** application from the outside, without looking at code. |
| **Vulnerability scanning** | Automated check against **known** vulnerabilities. | **Threat modeling**, which reasons about a design's weaknesses that may have no existing catalogue entry at all. |
| **Threat modeling** | A **design-time** activity, often the earliest testing performed. | **Penetration testing** in general, which tests something that already exists (code, a system, a building). |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** "penetration testing" is often used as a catch-all term for any offensive
> security activity.
>
> **On the exam:** you're expected to place a described activity into the **specific** named
> technique — SAST vs. DAST vs. vulnerability scanning vs. threat modeling vs. red/blue/purple
> — rather than answering "penetration testing" generically. The specific mechanism described
> (reading code vs. probing a live app vs. reasoning about a design) determines the answer.

---

## 🧠 How to remember it

🧠 **"SAST reads, DAST attacks."** And: **"Purple shares while it happens; red/blue share when
it's over."**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** A security team analyses an application's source code for insecure coding patterns
before the application is ever executed. What technique is this?

- **A.** DAST
- **B.** SAST
- **C.** Vulnerability scanning
- **D.** Threat modeling

<details>
<summary><b>Answer</b></summary>

**B — SAST.** Analysing source code without running the application is the defining
characteristic of static analysis.

- **A** requires a running application, which this scenario explicitly does not have.
- **C** checks against a database of known vulnerabilities rather than analysing source code
  directly.
- **D** is a design-time activity, not a code-analysis one.

</details>

**Q2.** A tester interacts with a live web application, submitting malicious input to observe
how the running system responds. What technique is this?

- **A.** SAST
- **B.** Threat modeling
- **C.** DAST
- **D.** Vulnerability scanning

<details>
<summary><b>Answer</b></summary>

**C — DAST.** Testing a running application from the outside, the way an attacker would
interact with it, is dynamic analysis.

- **A** would involve reading source code, not interacting with a running system.
- **B** happens at design time, before there's a running system to test.
- **D** checks against known vulnerability signatures rather than actively probing behaviour.

</details>

**Q3.** What distinguishes a purple team exercise from a traditional red-versus-blue exercise?

- **A.** Purple team exercises use no red team component at all
- **B.** Findings are shared between red and blue teams during the exercise, not only afterwards
- **C.** Purple team exercises are always conducted by external vendors
- **D.** Purple team exercises test only physical security

<details>
<summary><b>Answer</b></summary>

**B — real-time information sharing during the exercise.** This collaborative timing is the
defining feature.

- **A** is wrong — purple team still involves both red and blue components.
- **C** invents a sourcing requirement that doesn't exist.
- **D** confuses this with physical penetration testing, a separate testing cluster.

</details>

**Q4.** A team identifies potential design flaws in a new system's architecture before any
code has been written. What activity is this?

- **A.** DAST
- **B.** Vulnerability scanning
- **C.** Threat modeling
- **D.** Red teaming

<details>
<summary><b>Answer</b></summary>

**C — threat modeling.** Identifying weaknesses in a design before code exists is the defining
trait of threat modeling, the earliest testing activity in the sequence.

- **A** requires a running application, which doesn't yet exist.
- **B** requires an actual system or application to scan.
- **D** simulates an attacker against an existing environment, not a design review.

</details>

**Q5.** Which of the following BEST describes vulnerability scanning?

- **A.** Manually reading application source code line by line
- **B.** Automated checking of systems or applications against a database of known vulnerabilities
- **C.** A collaborative red/blue exercise
- **D.** A design-time architectural review

<details>
<summary><b>Answer</b></summary>

**B — automated checking against known vulnerabilities.** This is the defining trait,
distinguishing it from manual code review, team exercises, or design review.

- **A** describes a manual SAST-like activity, not automated scanning.
- **C** describes purple teaming.
- **D** describes threat modeling.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Why SAST and DAST are complementary, not competing.** SAST catches flaws early and cheaply
(before deployment) but can miss issues that only manifest at runtime — configuration errors,
authentication flows, how components interact once actually running. DAST catches those
runtime-only issues but only after the application already exists and only for the paths
actually exercised during testing. Mature programmes run both, plus threat modeling earlier
still, rather than treating any one as sufficient on its own.

**Why purple teaming emerged.** Traditional red-vs-blue exercises can suffer from a long delay
between an attack technique succeeding and the blue team learning about it in the final
debrief — sometimes weeks after the exercise. Purple teaming compresses that feedback loop to
near-real-time, which is particularly valuable when the goal is rapidly improving detection
content (SIEM rules, alerting logic) rather than simply measuring whether red team "won."

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Red = attacks. Blue = defends. Purple = both, sharing findings DURING the exercise.**
- **SAST = source code, app not running. DAST = running app, code not examined.**
- **Vulnerability scanning = automated, checks against KNOWN vulnerabilities.**
- **Threat modeling = design-time**, the earliest of all these activities.
- Three security testing clusters: **readiness (red/blue/purple), application (SAST/DAST/scan/
  threat modeling), physical** (own page).

---

<div align="center">
<sub><a href="../README.md">← back to 05 · Security Operations and Incident Response</a> &nbsp;·&nbsp; <a href="../physical-penetration-testing/">next: Physical penetration testing →</a></sub>
</div>
</content>
