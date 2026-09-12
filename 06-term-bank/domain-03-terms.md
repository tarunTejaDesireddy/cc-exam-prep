<div align="center">

<img src="assets/module-06-banner.svg" alt="06 · Term Bank" width="100%">

# 🚪 Domain 3 terms · Access Control Concepts

[![Module](https://img.shields.io/badge/Module-06_Term_Bank-0d2b33?style=flat-square)](README.md)
[![Domain](https://img.shields.io/badge/Domain-3%20·%2022%25-5C7CFA?style=flat-square)](../03-access-control/README.md)
[![Terms](https://img.shields.io/badge/Terms-62-57606A?style=flat-square)](#)

📌 *The most definition-dense domain. The four access control models alone are worth several marks.*

</div>

---

## 🎟️ Fundamentals

| Term | Meaning |
|---|---|
| **Subject** | The **active** entity requesting access — user, process, device |
| **Object** | The **passive** entity being accessed — file, database, room, record |
| **Rule** | The logic deciding whether access is permitted |
| **Access control** | The selective restriction of access to a resource |
| **Permission** | A right over a **specific object** — read, write, execute, delete |
| **Privilege** | A **system-level** right, such as installing software |
| **Entitlement** | The **total set** of access rights a subject holds |
| **ACL** | A list attached to the **object**: "who may access me" |
| **Capability list** | A list attached to the **subject**: "what may I access" |
| **Access control matrix** | A grid of subjects against objects. A row is a capability list; a column is an ACL |
| **Reference monitor** | The component mediating **every** access request |
| **Reference monitor properties** | **Always invoked · tamper-proof · small enough to verify** |
| **Default deny** | Denying anything not explicitly permitted. Nearly always the right answer |
| **Default allow** | Blocking only what is known bad. The weaker model |

---

## 🏢 Physical access controls

| Term | Meaning |
|---|---|
| **Perimeter** | The outermost physical boundary of a site |
| **The rings** | Perimeter → Building → Floor/Zone → Room → Cabinet |
| **Bollard** | A short post preventing **vehicles** reaching a building. Preventive |
| **Mantrap / access control vestibule** | Two interlocking doors, one opens at a time. **The answer to tailgating** |
| **Turnstile** | A barrier permitting one person through at a time |
| **Badge / access card** | A credential presented to a reader. A **possession** factor |
| **Proximity card** | A badge read wirelessly at short range |
| **CCTV** | Camera surveillance. **Detective**, and deterrent if visible. **Prevents nothing** |
| **Motion sensor** | Detects movement in a monitored area. Detective |
| **Lighting / signage** | **Deterrent** only |
| **Security guard** | A human control. Preventive, deterrent and detective — and capable of **judgement** |
| **Fail-safe** | On failure the door **UNLOCKS**. Protects **PEOPLE**. For occupied spaces |
| **Fail-secure** | On failure the door **LOCKS**. Protects **ASSETS**. For unoccupied high-value spaces |
| **Tailgating** | Following an authorised person through a door **without** their knowledge |
| **Piggybacking** | The same, **with** their consent. Piggy**b**acking has **p**ermission |
| **Clean desk policy** | Sensitive material secured when unattended. The physical session timeout |
| **HVAC** | Heating, ventilation, air conditioning. An **availability** control |
| **UPS** | Uninterruptible power supply. Short power interruptions |
| **Fire suppression** | **Corrective.** Data centres use **gas-based**, not water |
| **Faraday cage** | Shielding that blocks electromagnetic emissions |

---

## 💻 Logical access controls

| Term | Meaning |
|---|---|
| **Logical control** | Implemented in software, hardware or firmware. Same as **technical** |
| **The test** | **Could you touch it?** Touchable = physical. Configured = logical |
| **Account lockout** | Disabling an account after repeated failures. **Defeats brute force** |
| **Session timeout** | Ending an idle session. Stops an unattended open session being used |
| **Concurrent session limit** | Preventing one credential being used in several places at once |
| **Time-of-day restriction** | Permitting access only during defined hours |
| **Location restriction** | Permitting access only from approved networks or places |
| **Constrained interface** | Hiding or disabling functions the user may not use. **Not an access control on its own** |
| **Database view** | Showing a user only the rows and columns they may see |
| **Audit logging** | Recording what identities did. **Detective** |
| **Access review** | Periodically confirming held access is still appropriate. **DETECTIVE** |

---

## 🗝️ The four access control models

| Term | Meaning |
|---|---|
| **DAC** — Discretionary | The resource **OWNER** decides, at their discretion. Most flexible, **least secure** |
| **DAC tell** | "The file's owner chose who could see it." Ordinary file permissions |
| **MAC** — Mandatory | The **SYSTEM** decides from labels and clearances. **The owner cannot override.** Most secure |
| **MAC tell** | "Classified" · "clearance" · **"cannot grant an exception"** |
| **RBAC** — Role-Based | Access via the **ROLE** — a job function. **Most common in business** |
| **RBAC tell** | "Because of her job function." Risk: **role explosion** |
| **ABAC** — Attribute-Based | Decided from **multiple ATTRIBUTES** at request time. Most granular, most complex |
| **ABAC tell** | Several **different** conditions together — role AND device AND time AND location |
| **Rule-based access control** | **System-wide rules** regardless of who you are — e.g. firewall rules |
| **Security label** | A classification attached to an object — Confidential, Secret, Top Secret |
| **Clearance** | The level a subject is authorised for. **Not sufficient alone — need to know applies too** |
| **Role explosion** | Roles proliferating until there are nearly as many roles as users |
| **Security ranking** | **MAC highest → DAC lowest.** Flexibility runs the other way |

---

## 🔻 Least privilege and segregation of duties

| Term | Meaning |
|---|---|
| **Least privilege** | Only the access the **role** requires. Limits how much one person can **do** |
| **Need to know** | Only the **information** required for the task. What you can **see** |
| **Segregation of duties (SoD)** | No one person can complete a sensitive process **alone** |
| **The classic split** | Requester ≠ approver ≠ executor ≠ reconciler |
| **Collusion** | Two or more people cooperating to defeat SoD. What SoD **requires** to be beaten |
| **Dual control** | **Two people for the SAME single action** — two keys turned together |
| **Job rotation** | Periodically moving staff between roles. A **security** control |
| **Mandatory vacation** | Requiring leave so **someone else performs the duties**. Exposes concealed fraud |
| **Excessive privilege** | Holding more access than the role requires |
| **Entitlement review** | Confirming held access is still appropriate |

---

## 👑 Privileged access

| Term | Meaning |
|---|---|
| **Privileged account** | Can change the **system itself** — including **disabling the logs** |
| **Standing privilege** | Privileged rights held **permanently**. The weakness |
| **Just-in-time (JIT) access** | Privilege granted **only when needed**, then removed. The expected answer |
| **PAM** | Privileged Access Management — the discipline and tooling |
| **Credential vault** | A secure store from which privileged credentials are checked out, logged |
| **Session recording** | Capturing what was done during a privileged session |
| **Break-glass account** | An emergency high-privilege account. **Use triggers an alert**, documented after |
| **Service account** | A non-human account used by an application. Scope, rotate, deny interactive logon |
| **Separate admin account** | Admins do email and browsing on an **ordinary** account. **Most-examined control here** |
| **Log placement** | Privileged activity logged **where administrators cannot edit it** |
| **Privilege escalation** | An **attacker** gaining rights never granted |

---

## 🔄 Identity lifecycle

| Term | Meaning |
|---|---|
| **Provisioning** | Creating an identity and granting its initial access |
| **Deprovisioning** | Removing access and disabling the identity |
| **Joiner, mover, leaver (JML)** | The three lifecycle stages. **Mover is the one that fails** |
| **The mover failure** | New access granted, **old access never revoked** → privilege creep |
| **Orphaned account** | Active with **no valid owner** — a leaver never disabled |
| **Dormant account** | **Has an owner**, unused for an extended period |
| **Authoritative source** | The system of record for who works here — usually HR |
| **Hostile departure** | Access removed **before or during** notification |
| **Disable vs delete** | **Disable first** — deletion destroys audit trail and data ownership |
| **Access review performer** | The **manager or data owner** — not IT, not the user |

---

## 🛡️ Defence in depth

| Term | Meaning |
|---|---|
| **Defence in depth** | Layering multiple **independent** controls so no single failure is fatal |
| **Layered security** | The same thing, used interchangeably |
| **Independent layers** | Controls that do **not share a common failure cause** |
| **Common mode failure** | One cause defeating several controls at once |
| **Diversity of defence** | **Different kinds** of control, not more of the same |
| **Redundancy** | **Duplicating** a component so failure does not stop the function |
| **The test for independence** | **What single event defeats more than one layer?** |
| **Classic violation** | A strong perimeter with a **flat internal network** |

---

<div align="center">
<sub><a href="README.md">← back to 06 · Term Bank</a> &nbsp;·&nbsp; <a href="domain-04-terms.md">Domain 4 terms →</a></sub>
</div>
