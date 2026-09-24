<div align="center">

<img src="../assets/module-01-banner.svg" alt="01 · Security Principles" width="100%">

# ⚠️ Risk Concepts

### *Asset, threat, vulnerability, risk — four words the exam never lets you mix up*

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-1%20·%2024%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~13%20min-57606A?style=flat-square)](#)

📌 *Put any phrase from a scenario into the right slot, know residual risk is never zero, and know only senior management accepts risk.*

</div>

---

## 🧸 The big idea

Your **house** is worth protecting — that's the **asset**.

**Burglary** could happen and would hurt you — that's the **threat**. The **burglar** is the
**threat actor** who would do it.

You left a **window open** — that's the **vulnerability**, the weakness the burglar could use.

**Risk** is *how likely* a burglar finds that window, combined with *how bad* it would be if they
did.

Now **lock the window**. The burglar still exists and is exactly as much of a threat — but now
they can't get in. **The risk dropped without the threat changing at all.** That's what a
**control** does.

> **A threat exploits a vulnerability to harm an asset. Risk is how likely that is, combined with
> how bad it would be.**

Every question on this topic is testing whether you can put a phrase from a scenario into the
right one of those slots.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Asset** | Anything of value worth protecting — data, systems, facilities, **people**, reputation. |
| **Threat** | Any circumstance or event with the **potential** to cause harm. |
| **Threat actor** | The entity that carries out a threat — a person, group or organisation. |
| **Threat vector** | The **route** a threat takes to reach the asset (e.g. a phishing email). |
| **Vulnerability** | A **weakness** a threat could exploit. |
| **Exploit** | The act or tool that takes advantage of a vulnerability. |
| **Risk** | The **likelihood** that a threat exploits a vulnerability, combined with the **impact**. |
| **Inherent risk** | Risk **before** any controls. |
| **Residual risk** | Risk left **after** controls. Never zero. |
| **Risk tolerance** | How much risk the organisation will accept. Set by **senior management**. |
| **Control** | A safeguard that reduces risk. |

---

## 🔍 The explanation

### How the pieces fit

<p align="center"><img src="diagrams/1.svg" alt="A threat actor such as a burglar carries out a threat such as a break-in, which exploits a vulnerability such as an open window to harm an asset such as your house; a control such as locking the window closes the vulnerability" width="760"></p>

- **Assets** are broader than people expect: data, hardware, software, facilities, **people**,
  reputation. You don't spend more protecting something than it's worth — so assets get valued
  first.
- **Threats** aren't only attackers:

| Source | Examples |
|---|---|
| Human, deliberate | Attackers, malicious insiders, hacktivists |
| Human, accidental | Mistakes, misconfiguration, accidental deletion |
| Environmental / natural | Fire, flood, earthquake, power or hardware failure |

- **Vulnerabilities** aren't only software bugs: technical (unpatched, default passwords),
  physical (unlocked door), administrative (no policy, no leaver process), human (untrained
  staff).
- **You need both a threat and a vulnerability** for meaningful risk. A flaw in software you
  don't run is not your risk.

### Threat or vulnerability? — the one test

This pair gets swapped in distractors constantly. One question settles it:

<p align="center"><img src="diagrams/2.svg" alt="If the phrase describes something that happens, an event such as a flood or theft, it is a threat; if it describes a state you are in, a condition such as an unpatched server or a data centre on a floodplain, it is a vulnerability" width="620"></p>

"A flood" is a **threat**. "The data centre is on a floodplain" is a **vulnerability**.

### Risk = likelihood × impact

You won't calculate it on CC, but the relationship explains every priority decision:

| Likelihood | Impact | Risk |
|---|---|---|
| High | High | **Critical** — act first |
| High | Low | Moderate — frequent nuisance |
| Low | High | Moderate — rare but severe |
| Low | Low | Low — often accepted |

**Reduce either factor and you reduce the risk.** The exam likes asking which one a control
works on:

<p align="center"><img src="diagrams/3.svg" alt="Risk equals likelihood times impact; firewalls, patching, MFA and training lower likelihood, while backups, insurance, redundancy and a DR plan lower impact" width="640"></p>

Backups don't make ransomware **less likely** — they make it **hurt less**.

### Inherent → residual → a decision

<p align="center"><img src="diagrams/4.svg" alt="Inherent risk before controls becomes residual risk after controls; if residual risk is within tolerance senior management accepts it, otherwise more controls or a different treatment are applied" width="760"></p>

- **Residual risk is never zero.** Any option claiming a control "eliminates all risk" is wrong.
- **Risk tolerance is a business decision** — set and accepted by **senior management**, never
  by the analyst or the IT manager.

### Risk management is a cycle, not a project

<p align="center"><img src="diagrams/5.svg" alt="Identify the risks, assess likelihood and impact, treat by accepting, avoiding, mitigating or transferring, monitor and report, and then start again as things change" width="760"></p>

New assets appear, threats evolve, controls decay — so monitoring feeds straight back into
identifying. A question describing risk management as a one-time exercise is describing it wrong.

---

## ⚖️ Told apart

The table the whole page exists for.

| Phrase in a scenario | It is a… | Why |
|---|---|---|
| "The customer database" | **Asset** | Something of value. |
| "Ransomware" / "Theft" | **Threat** | A potential event. |
| "An organised criminal group" | **Threat actor** | Who would do it. |
| "A phishing email" | **Threat vector** | The route. |
| "Staff have never had security training" | **Vulnerability** | A weakness (condition). |
| "Servers are missing six months of patches" | **Vulnerability** | A weakness. |
| "The door is left unlocked" | **Vulnerability** | A condition, not the event. |
| "A 30% chance of a breach costing $200,000" | **Risk** | Likelihood + impact. |
| "Flooding in the region" | **Threat** | Threats need not be human. |

| | Means | Not to be confused with |
|---|---|---|
| **Vulnerability** | The weakness. | **Exploit** — the act or tool that uses it. |
| **Threat** | The event. | **Threat actor** (who) and **threat vector** (route). |
| **Inherent risk** | Before controls. | **Residual risk** — after controls, never zero. |
| **Likelihood** | How probable. | **Impact** — how bad. High impact alone ≠ high risk. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** a critical CVE is "a risk" and you'd say so in a meeting.
>
> **On the exam:** an unpatched CVE is a **vulnerability**. It becomes a risk only with a threat
> that would exploit it and an impact if it did.

> [!WARNING]
> **In the job:** you decide what's worth fixing and what you'll live with.
>
> **On the exam:** **you never accept risk.** Senior management does. An option where an analyst
> or administrator accepts risk is a distractor, every time.

---

## 🧠 How to remember it

**The one sentence:** a threat exploits a vulnerability to harm an asset; risk is how likely × how
bad.

**Threats happen. Vulnerabilities are states you're in.**

**No threat, or no vulnerability → little risk.** You need both halves.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** A company's web server is missing a critical security patch. How should this be
classified?

- **A.** A threat
- **B.** A vulnerability
- **C.** A risk
- **D.** An exploit

<details>
<summary><b>Answer</b></summary>

**B — a vulnerability.** A missing patch is a condition the organisation is in.

- **A** — a threat is the potential *event*.
- **C** is how people talk at work, but risk needs likelihood and impact combined.
- **D** is the code that *uses* the weakness.

</details>

**Q2.** Which of the following is a threat rather than a vulnerability?

- **A.** Employees have not received security awareness training
- **B.** The data centre is located on a floodplain
- **C.** A hurricane
- **D.** Administrative accounts use default passwords

<details>
<summary><b>Answer</b></summary>

**C — a hurricane.** A potential event — and proof that threats needn't be human or malicious.

- **A** is a condition → vulnerability.
- **B** is the tempting one: the *location* is a condition (vulnerability); the flood would be the
  threat.
- **D** is a technical weakness → vulnerability.

</details>

**Q3.** After implementing controls, an organisation finds that some risk remains. What is this
called?

- **A.** Inherent risk
- **B.** Residual risk
- **C.** Accepted risk
- **D.** Total risk

<details>
<summary><b>Answer</b></summary>

**B — residual risk.**

- **A** is the risk *before* controls.
- **C** is a decision that may be taken *about* residual risk — not its name.
- **D** isn't a standard term here.

</details>

**Q4.** A backup system is implemented to protect against ransomware. Which component of risk
does it PRIMARILY reduce?

- **A.** Likelihood, because attackers are deterred by good backups
- **B.** Impact, because the organisation can recover without paying
- **C.** Both equally
- **D.** Neither — backups are a recovery measure, not a risk control

<details>
<summary><b>Answer</b></summary>

**B — impact.** Backups don't make the attack less likely; they make it hurt less.

- **A** — attackers don't know your backup posture.
- **C** — there's no real likelihood reduction.
- **D** — recovery measures *are* risk controls; they work on impact.

</details>

**Q5.** A risk exceeds the organisation's risk tolerance. Who decides whether to accept it
anyway?

- **A.** The security analyst who identified it
- **B.** The IT manager responsible for the affected system
- **C.** Senior management
- **D.** The external auditor

<details>
<summary><b>Answer</b></summary>

**C — senior management.** They're accountable for the business.

- **A** — identifying a risk gives no authority to accept it.
- **B** — running a system isn't owning its business risk.
- **D** — an auditor accepting risk would destroy their independence.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**How real teams track vulnerabilities.** Each public flaw gets a **CVE** ID and a **CVSS** 0–10
severity score; scanners (Nessus, Qualys, OpenVAS) find which CVEs you actually run. CVSS alone
prioritises badly — **EPSS** estimates the real chance a CVE gets exploited in the next 30 days.
Mature teams patch by severity × exploitation odds × asset value.

**"Likelihood × impact" flattens very different risks.** A 1-in-1000 chance of a $10M loss and a
near-certain $10k yearly loss can score the same, yet only one could end the business. Mature
programmes watch the rare, catastrophic tail.

**Appetite vs tolerance.** *Appetite* is the broad, strategic amount of risk an organisation will
pursue; *tolerance* is the acceptable variation around a specific objective. CC mostly uses
tolerance.

**Secondary risk.** Treating one risk often creates another — outsourcing adds third-party risk;
encrypting everything adds key-management risk.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Threat exploits vulnerability to harm asset. Risk = likelihood × impact.**
- **Threats HAPPEN (events). Vulnerabilities are STATES (conditions).** Floodplain = vulnerability; flood = threat.
- **Unpatched CVE = vulnerability**, not risk.
- **Backups reduce IMPACT, not likelihood.**
- **Residual risk is never zero. Only senior management accepts risk.**

---

<div align="center">
<sub><a href="../README.md">← back to 01 · Security Principles</a> &nbsp;·&nbsp; <a href="../risk-assessment/">next: Risk assessment →</a></sub>
</div>
