<div align="center">

<img src="assets/module-07-banner.svg" alt="07 · Question Bank" width="100%">

# 🚪 Drill · Domain 3 · IAM Concepts

[![Module](https://img.shields.io/badge/Module-07_Question_Bank-0d2b33?style=flat-square)](README.md)
[![Questions](https://img.shields.io/badge/Questions-20-5C7CFA?style=flat-square)](#)
[![Domain](https://img.shields.io/badge/Domain-3%20·%2020%25-12B5A5?style=flat-square)](../03-access-control/README.md)

📌 *Definition-dense. Several questions describe a scenario and ask which access control model it is.*

</div>

---

**Q1.** A researcher creates a document and selects which colleagues may open it. Which access
control model is this?

- **A.** MAC
- **B.** DAC
- **C.** RBAC
- **D.** ABAC

<details><summary><b>Answer</b></summary>

**B — DAC.** The **owner** of the resource is deciding, at their own discretion.

- **A** would have the system decide from labels and clearances, with the owner unable to override.
- **C** would grant access by job function, with no per-document choice.
- **D** would evaluate multiple attributes at request time.
</details>

---

**Q2.** A user with Secret clearance is refused a Top Secret file, and the file's author cannot
override the refusal. Which model?

- **A.** DAC
- **B.** MAC
- **C.** RBAC
- **D.** Rule-based

<details><summary><b>Answer</b></summary>

**B — MAC.** Clearance compared against a label, with **no owner override**, is mandatory access
control. "Cannot override" is the tell.

- **A** is contradicted by the stem — under DAC the author could grant access.
- **C** decides by job function, not clearance level.
- **D** applies system-wide rules independent of clearance.
</details>

---

**Q3.** Access is granted if the requester is in Legal, on a managed device, during office hours,
and the document is Internal or below. Which model?

- **A.** RBAC, because department is a role
- **B.** MAC, because classification is involved
- **C.** ABAC
- **D.** DAC

<details><summary><b>Answer</b></summary>

**C — ABAC.** Four dissimilar attributes combined into one decision at request time. **Multiple
different factors is the tell.**

- **A** notices one attribute and ignores three. Pure RBAC would not care about device or hour.
- **B** over-reads the classification. MAC requires clearance-versus-label as *the* mechanism, not
  classification as one input among several.
- **D** describes no mechanism — "access is restricted" is true of every model.
</details>

---

**Q4.** Electronic door locks release on power failure in an occupied office building. What is
this, and why?

- **A.** Fail-secure, to prevent unauthorised entry
- **B.** Fail-safe, so occupants can evacuate
- **C.** A misconfiguration
- **D.** Fail-secure, because assets come first

<details><summary><b>Answer</b></summary>

**B — fail-safe, so occupants can evacuate.** "Safe" means **safe for people**.

- **A** and **D** describe the opposite configuration, which locks on failure.
- **C** treats a deliberate and correct choice for occupied space as an error.
</details>

---

**Q5.** An employee moves from procurement to finance. Their procurement access is not removed.
What are the TWO concerns?

- **A.** Privilege creep and a possible segregation of duties conflict
- **B.** Privilege escalation and account lockout
- **C.** Orphaned account and dormant account
- **D.** Role explosion and least functionality

<details><summary><b>Answer</b></summary>

**A — privilege creep and a possible SoD conflict.** Access has accumulated across roles, and the
combination may let them raise and approve a purchase alone.

- **B** is wrong on both: escalation is an **attack**, and lockout is unrelated.
- **C** both require the account to be unowned or unused; this one is actively used.
- **D** are unrelated concepts from role design and system hardening.
</details>

---

**Q6.** Which is attached to the **object** rather than the subject?

- **A.** Capability list
- **B.** Access control list
- **C.** Entitlement
- **D.** Clearance

<details><summary><b>Answer</b></summary>

**B — an access control list.** It hangs off the object and answers "who may access me".

- **A** hangs off the **subject** — "what may I access". Same information, opposite end.
- **C** is the total set of rights a **subject** holds.
- **D** is a property of a **subject** under MAC.
</details>

---

**Q7.** An accounts clerk can create suppliers and approve payments to them. Which principle is
violated?

- **A.** Least privilege
- **B.** Segregation of duties
- **C.** Need to know
- **D.** Defence in depth

<details><summary><b>Answer</b></summary>

**B — segregation of duties.** One person can complete a fraudulent payment end to end.

- **A** is the strongest distractor, and the clerk may indeed hold excessive access. The specific
  failure named is that **two conflicting steps of one process** sit with the same person.
- **C** concerns restricting access to specific information.
- **D** concerns layering independent controls.
</details>

---

**Q8.** Staff repeatedly hold a badge-controlled door for colleagues. Which control BEST prevents
this?

- **A.** More CCTV coverage
- **B.** A mantrap or access control vestibule
- **C.** Stronger badge encryption
- **D.** Signage prohibiting the practice

<details><summary><b>Answer</b></summary>

**B — a mantrap.** Two interlocking doors physically admit one person per authorisation.

- **A** records it happening — detective, not preventive.
- **C** addresses credential cloning, a different attack. The badges are working correctly.
- **D** is a deterrent relying on compliance. A mantrap does not ask for cooperation.
</details>

---

**Q9.** How is a quarterly access review classified by function?

- **A.** Preventive
- **B.** Detective
- **C.** Corrective
- **D.** Deterrent

<details><summary><b>Answer</b></summary>

**B — detective.** It finds inappropriate access that **already exists**.

- **A** is the common misclassification. The review does not stop access being granted.
- **C** describes the **removal** that follows a finding.
- **D** has a grain of truth as a side effect and is not the classification.
</details>

---

**Q10.** A web application hides an admin button from ordinary users, but the API performs no
authorisation check. What is the flaw?

- **A.** None — hiding the function is sufficient
- **B.** A constrained interface is not a substitute for an authorisation check at the point of access
- **C.** The button should be disabled rather than hidden
- **D.** The application needs a stronger session timeout

<details><summary><b>Answer</b></summary>

**B — a constrained interface is not a substitute for an authorisation check at the point of
access.** Anyone calling the API directly bypasses the interface, and doing so requires no special
skill.

- **A** confuses what is displayed with what is enforced.
- **C** changes presentation and leaves the flaw untouched.
- **D** is unrelated to the missing check.
</details>

---

**Q11.** Which describes the correct relationship between subject and object?

- **A.** Subjects are passive; objects are active
- **B.** Subjects are active; objects are passive
- **C.** Only humans can be subjects
- **D.** An entity is permanently one or the other

<details><summary><b>Answer</b></summary>

**B — subjects are active; objects are passive.**

- **A** is reversed.
- **C** is wrong: processes, services and devices are subjects when they request access.
- **D** is wrong — an application is a **subject** when it reads a config file and an **object**
  when a user launches it. The role depends on which end of *this* request it is on.
</details>

---

**Q12.** Which is the BEST approach to privileged administrative access?

- **A.** Permanent admin rights for a small trusted group
- **B.** Just-in-time elevation with approval and logging
- **C.** One shared admin account with a long password
- **D.** Monthly password rotation on admin accounts

<details><summary><b>Answer</b></summary>

**B — just-in-time elevation with approval and logging.** Privilege exists only while in use, so
there is no permanently available target, and each elevation is auditable.

- **A** reduces the number of holders and leaves **standing privilege**, which is the core weakness.
- **C** destroys individual accountability, whatever the password's strength.
- **D** is minor hygiene that does not address standing privilege.
</details>

---

**Q13.** Five administrators share one `root` account. What is MOST directly lost?

- **A.** Confidentiality
- **B.** Availability
- **C.** Accountability
- **D.** Authentication

<details><summary><b>Answer</b></summary>

**C — accountability.** Logs record the account, not the person, so no action traces to a named
individual.

- **A** is affected indirectly, in that more people hold a powerful credential.
- **B** is unaffected; the systems remain accessible.
- **D** is **not** undermined — the account authenticates correctly every time, which is precisely
  the problem.
</details>

---

**Q14.** What is the PRIMARY security weakness of DAC?

- **A.** It is too rigid for commercial use
- **B.** Access decisions are delegated to individual resource owners
- **C.** It requires expensive labelling infrastructure
- **D.** It cannot be audited

<details><summary><b>Answer</b></summary>

**B — access decisions are delegated to individual owners.** Every user becomes a security
decision-maker, one careless share spreads access, and nothing centrally records it.

- **A** describes **MAC**'s usability cost.
- **C** describes MAC's administrative burden.
- **D** is too absolute; DAC permissions can be enumerated and reviewed, just laboriously.
</details>

---

**Q15.** A new starter is provisioned by copying a ten-year employee's access. What is the concern?

- **A.** Nothing — this is efficient onboarding
- **B.** It propagates whatever privilege creep that account accumulated
- **C.** It violates segregation of duties
- **D.** It creates an orphaned account

<details><summary><b>Answer</b></summary>

**B — it propagates accumulated privilege creep.** A long-serving employee has gathered access from
previous roles and one-off projects, and cloning copies all of it.

- **A** states the convenience that makes this so common while ignoring the over-provisioning.
- **C** is not what is described — no single process is being completed alone.
- **D** requires an account with no valid owner.
</details>

---

**Q16.** What is the correct order of the physical security rings, outside in?

- **A.** Room → Building → Perimeter → Cabinet
- **B.** Perimeter → Building → Zone → Room → Cabinet
- **C.** Cabinet → Room → Building → Perimeter
- **D.** Building → Perimeter → Room → Zone

<details><summary><b>Answer</b></summary>

**B — Perimeter → Building → Zone → Room → Cabinet.** Concentric layers, each requiring more
authorisation.

- **A** and **D** scramble the sequence.
- **C** is correct in reverse, which would be inside out rather than outside in.
</details>

---

**Q17.** Three security controls all authenticate against the same directory service. What is the
weakness?

- **A.** None — three layers is defence in depth
- **B.** A common mode failure: compromising the directory defeats all three
- **C.** Directory authentication is inherently insecure
- **D.** Three controls is insufficient

<details><summary><b>Answer</b></summary>

**B — a common mode failure.** Three controls, one shared dependency, one event that opens all of
them. That is one control counted three times.

- **A** counts controls instead of testing their independence — the error this topic exists to
  correct.
- **C** is wrong; centralised authentication is good practice. The issue is the absence of a layer
  **not** relying on it.
- **D** fixates on quantity. **More controls is not more depth.**
</details>

---

**Q18.** What distinguishes segregation of duties from dual control?

- **A.** SoD applies to physical access; dual control to logical
- **B.** SoD splits a process into steps held by different people; dual control requires two people for the same action
- **C.** They are the same principle
- **D.** Dual control applies only to privileged accounts

<details><summary><b>Answer</b></summary>

**B — SoD splits a process into different steps; dual control needs two people for the **same**
action.** Requester and approver being different people is SoD; two keys turned together is dual
control.

- **A** invents a physical/logical split.
- **C** is wrong, and this distinction is what the question tests.
- **D** is too narrow.
</details>

---

**Q19.** Which control is physical by type and deterrent by function?

- **A.** A mantrap
- **B.** Exterior lighting and warning signage
- **C.** A biometric reader
- **D.** A fire suppression system

<details><summary><b>Answer</b></summary>

**B — exterior lighting and warning signage.** Neither physically stops anyone; both discourage the
attempt and support observation.

- **A** physically restricts passage — preventive.
- **C** physically denies entry to non-matching biometrics — preventive.
- **D** limits damage after ignition — **corrective**.
</details>

---

**Q20.** Which pairing correctly matches term to meaning?

- **A.** Least privilege limits what information you can see; need to know limits what you can do
- **B.** Least privilege limits what you can do; need to know limits what information you can see
- **C.** Both terms mean the same thing
- **D.** Need to know applies only under DAC

<details><summary><b>Answer</b></summary>

**B — least privilege limits what you can **do**; need to know limits what **information** you can
see.**

- **A** reverses them.
- **C** loses a distinction that is tested, and they are applied together.
- **D** is wrong: need to know is most strongly associated with **MAC**, where clearance alone is
  never sufficient.
</details>

---

## 📊 Score yourself

| Score | Reading |
|---|---|
| **18–20** | Domain 3 is solid |
| **15–17** | Good. Re-read the topics behind your misses |
| **12–14** | Drill `dac-mac-rbac-abac/` until the four models are automatic |
| **Below 12** | Re-read the domain, starting with the four models |

> 🎯 **If your misses were concentrated on DAC/MAC/RBAC/ABAC**, that one page is worth more than
> the rest of the domain combined. Go back to it.

---

<div align="center">
<sub><a href="README.md">← back to 07 · Question Bank</a> &nbsp;·&nbsp; <a href="drill-domain-05.md">Domain 5 drill →</a></sub>
</div>
