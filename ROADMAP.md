<div align="center">

# 🗺️ Roadmap

### *51 topics, 9 modules, one exam sitting on 5 November 2026*

![Written](https://img.shields.io/badge/Written-2%2F51-57606A?style=for-the-badge)
![Target](https://img.shields.io/badge/Target-5%20Nov%202026-12B5A5?style=for-the-badge)

</div>

---

## How to read this

A box is ticked when the topic is **written and pushed** — not when it is planned.

Order of writing follows exam weight, heaviest domain first, so that partial completion
still covers the most marks. Within a module, topics are written in reading order.

---

## 🧱 00 · Foundations — `2 / 6`

Everything about the exam itself. Written first because it changes how you read the rest.

- [x] `how-the-exam-works/` — format, length, pass mark, how the scaled score works
- [x] `how-isc2-thinks/` — the answer-selection logic, and why experience misleads you
- [ ] `answering-technique/` — eliminating distractors, qualifier words, time budgeting
- [ ] `the-five-domains/` — the blueprint, what each domain actually contains
- [ ] `study-schedule/` — the day-by-day plan from today to 5 November
- [ ] `exam-day-logistics/` — booking, ID, Pearson VUE, remote vs test centre, what happens after

---

## 🧭 01 · Security Principles — `0 / 11` · **26%**

The largest domain, and the vocabulary the other four are written in.

- [ ] `cia-triad/` — confidentiality, integrity, availability, and what breaks each
- [ ] `authentication/` — the three factors, MFA, and what counts as which
- [ ] `authorization-and-accounting/` — the rest of AAA, and where each one sits
- [ ] `non-repudiation/` — what it means, what provides it
- [ ] `privacy/` — PII, data subjects, and the regulation names the exam uses
- [ ] `risk-concepts/` — asset, threat, vulnerability, likelihood, impact
- [ ] `risk-assessment/` — qualitative vs quantitative, SLE, ALE, ARO
- [ ] `risk-treatment/` — accept, avoid, mitigate, transfer, and risk tolerance
- [ ] `security-controls/` — technical, administrative, physical; the functional types
- [ ] `governance-documents/` — policy, standard, procedure, guideline, regulation
- [ ] `isc2-code-of-ethics/` — the four canons, in order, and how they are tested

---

## 🌐 04 · Network Security — `0 / 11` · **24%**

Written second. Heavy on terminology you already use — the risk is ISC2's phrasing, not the concepts.

- [ ] `network-fundamentals/` — LAN, WAN, topologies, the devices in between
- [ ] `osi-and-tcpip/` — the seven layers, the four layers, what lives where
- [ ] `ip-addressing/` — IPv4, IPv6, public vs private, subnets, NAT, DHCP, DNS
- [ ] `ports-and-protocols/` — the port numbers the exam expects on sight
- [ ] `network-threats/` — the threat categories and how ISC2 names them
- [ ] `common-attacks/` — DoS/DDoS, on-path, spoofing, side-channel, malware types
- [ ] `network-defence-devices/` — firewalls, IDS/IPS, proxies, and what each cannot do
- [ ] `segmentation-and-dmz/` — VLANs, DMZ, screened subnet, defence in depth
- [ ] `vpn-and-remote-access/` — tunnels, site-to-site vs remote access, VPN concepts
- [ ] `cloud-and-virtualisation/` — IaaS/PaaS/SaaS, deployment models, shared responsibility
- [ ] `zero-trust/` — the model, and the MSP/SLA terms that ride along with it

---

## 🚪 03 · Access Control Concepts — `0 / 8` · **22%**

Definition-dense. The four access control models alone are worth several marks.

- [ ] `access-control-fundamentals/` — subject, object, rule, and the access triple
- [ ] `physical-access-controls/` — barriers, guards, badges, mantraps, CCTV, sensors
- [ ] `logical-access-controls/` — the technical side, and where it overlaps physical
- [ ] `dac-mac-rbac-abac/` — the four models, told apart properly
- [ ] `least-privilege-and-sod/` — need to know, least privilege, segregation of duties
- [ ] `privileged-access/` — privileged accounts, and the controls the exam expects on them
- [ ] `identity-lifecycle/` — provisioning, review, deprovisioning, joiner-mover-leaver
- [ ] `defence-in-depth/` — layered control strategy as ISC2 defines it

---

## ⚙️ 05 · Security Operations — `0 / 9` · **18%**

- [ ] `data-handling/` — the data lifecycle, states of data, retention and destruction
- [ ] `data-classification/` — labelling, handling requirements, ownership roles
- [ ] `encryption-concepts/` — symmetric, asymmetric, keys, what each is actually for
- [ ] `hashing-and-integrity/` — hashing vs encryption, digital signatures
- [ ] `system-hardening/` — baselines, patching, least functionality
- [ ] `configuration-management/` — inventory, baselines, change control
- [ ] `logging-and-monitoring/` — what to log, SIEM, ingress/egress monitoring
- [ ] `security-policies/` — AUP, BYOD, change management, privacy, password policies
- [ ] `security-awareness-training/` — awareness vs training vs education, social engineering

---

## 🚨 02 · BC, DR & Incident Response — `0 / 6` · **10%**

Smallest domain, written last of the five. Short, and mostly definitions plus one ordering question.

- [ ] `incident-terminology/` — event, alert, incident, breach, and the difference
- [ ] `incident-response-plan/` — the phases, in ISC2's order, and who does what
- [ ] `business-impact-analysis/` — what a BIA produces and why it comes first
- [ ] `rto-rpo-mtd/` — the three time metrics, told apart, with a timeline diagram
- [ ] `business-continuity/` — keeping the business running during the disruption
- [ ] `disaster-recovery/` — getting back to normal, site types, testing types

---

## 🎯 Drill material

### 🗂️ 06 · Term Bank — `not started`
- [ ] `domain-01-terms.md` through `domain-05-terms.md`
- [ ] `most-confused-pairs.md` — the term pairs that cost the most marks
- [ ] `flashcards.csv` — importable into Anki or similar

### ❓ 07 · Question Bank — `not started`
- [ ] 60 questions per domain, with full distractor analysis
- [ ] `mixed-drill-01.md` and `mixed-drill-02.md` — cross-domain, exam-order

### 📝 08 · Mock Exams — `not started`
- [ ] `mock-01/` — taken end of week 5, diagnostic
- [ ] `mock-02/` — taken week 7
- [ ] `mock-03/` — taken week 7, final calibration
- [ ] `scoring-guide.md` — converting a raw score to a realistic readiness signal

### Final
- [ ] `EXAM-DAY.md` — the one page read on 3–4 November, and nothing else

---

<div align="center">
<sub>Push one topic per commit. Tick the box in the same commit.</sub>
</div>
