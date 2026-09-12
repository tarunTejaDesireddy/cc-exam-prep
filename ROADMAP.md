<div align="center">

# 🗺️ Roadmap

### *50 topics, 9 modules, one exam sitting on 5 November 2026*

![Written](https://img.shields.io/badge/Written-50%2F50-57606A?style=for-the-badge)
![Target](https://img.shields.io/badge/Target-5%20Nov%202026-12B5A5?style=for-the-badge)

</div>

---

## How to read this

A box is ticked when the topic is **written and pushed** — not when it is planned.

Order of writing follows exam weight, heaviest domain first, so that partial completion
still covers the most marks. Within a module, topics are written in reading order.

---

## 🧱 00 · Foundations — `5 / 5` ✅

Everything about the exam itself. Written first because it changes how you read the rest.

- [x] `how-the-exam-works/` — format, length, pass mark, how the scaled score works
- [x] `how-isc2-thinks/` — the answer-selection logic, and why experience misleads you
- [x] `answering-technique/` — eliminating distractors, qualifier words, time budgeting
- [x] `the-five-domains/` — the blueprint, what each domain actually contains
- [x] `study-schedule/` — the day-by-day plan from today to 5 November
<!-- dropped: logistics, not learning content. Booking/ID notes live in EXAM-DAY.md -->

---

## 🧭 01 · Security Principles — `11 / 11` ✅ · **26%**

The largest domain, and the vocabulary the other four are written in.

- [x] `cia-triad/` — confidentiality, integrity, availability, and what breaks each
- [x] `authentication/` — the three factors, MFA, and what counts as which
- [x] `authorization-and-accounting/` — the rest of AAA, and where each one sits
- [x] `non-repudiation/` — what it means, what provides it
- [x] `privacy/` — PII, data subjects, and the regulation names the exam uses
- [x] `risk-concepts/` — asset, threat, vulnerability, likelihood, impact
- [x] `risk-assessment/` — qualitative vs quantitative, SLE, ALE, ARO
- [x] `risk-treatment/` — accept, avoid, mitigate, transfer, and risk tolerance
- [x] `security-controls/` — technical, administrative, physical; the functional types
- [x] `governance-documents/` — policy, standard, procedure, guideline, regulation
- [x] `isc2-code-of-ethics/` — the four canons, in order, and how they are tested

---

## 🌐 04 · Network Security — `11 / 11` ✅ · **24%**

Written second. Heavy on terminology you already use — the risk is ISC2's phrasing, not the concepts.

- [x] `network-fundamentals/` — LAN, WAN, topologies, the devices in between
- [x] `osi-and-tcpip/` — the seven layers, the four layers, what lives where
- [x] `ip-addressing/` — IPv4, IPv6, public vs private, subnets, NAT, DHCP, DNS
- [x] `ports-and-protocols/` — the port numbers the exam expects on sight
- [x] `network-threats/` — the threat categories and how ISC2 names them
- [x] `common-attacks/` — DoS/DDoS, on-path, spoofing, side-channel, malware types
- [x] `network-defence-devices/` — firewalls, IDS/IPS, proxies, and what each cannot do
- [x] `segmentation-and-dmz/` — VLANs, DMZ, screened subnet, defence in depth
- [x] `vpn-and-remote-access/` — tunnels, site-to-site vs remote access, VPN concepts
- [x] `cloud-and-virtualisation/` — IaaS/PaaS/SaaS, deployment models, shared responsibility
- [x] `zero-trust/` — the model, and the MSP/SLA terms that ride along with it

---

## 🚪 03 · Access Control Concepts — `8 / 8` ✅ · **22%**

Definition-dense. The four access control models alone are worth several marks.

- [x] `access-control-fundamentals/` — subject, object, rule, and the access triple
- [x] `physical-access-controls/` — barriers, guards, badges, mantraps, CCTV, sensors
- [x] `logical-access-controls/` — the technical side, and where it overlaps physical
- [x] `dac-mac-rbac-abac/` — the four models, told apart properly
- [x] `least-privilege-and-sod/` — need to know, least privilege, segregation of duties
- [x] `privileged-access/` — privileged accounts, and the controls the exam expects on them
- [x] `identity-lifecycle/` — provisioning, review, deprovisioning, joiner-mover-leaver
- [x] `defence-in-depth/` — layered control strategy as ISC2 defines it

---

## ⚙️ 05 · Security Operations — `9 / 9` ✅ · **18%**

- [x] `data-handling/` — the data lifecycle, states of data, retention and destruction
- [x] `data-classification/` — labelling, handling requirements, ownership roles
- [x] `encryption-concepts/` — symmetric, asymmetric, keys, what each is actually for
- [x] `hashing-and-integrity/` — hashing vs encryption, digital signatures
- [x] `system-hardening/` — baselines, patching, least functionality
- [x] `configuration-management/` — inventory, baselines, change control
- [x] `logging-and-monitoring/` — what to log, SIEM, ingress/egress monitoring
- [x] `security-policies/` — AUP, BYOD, change management, privacy, password policies
- [x] `security-awareness-training/` — awareness vs training vs education, social engineering

---

## 🚨 02 · BC, DR & Incident Response — `6 / 6` ✅ · **10%**

Smallest domain, written last of the five. Short, and mostly definitions plus one ordering question.

- [x] `incident-terminology/` — event, alert, incident, breach, and the difference
- [x] `incident-response-plan/` — the phases, in ISC2's order, and who does what
- [x] `business-impact-analysis/` — what a BIA produces and why it comes first
- [x] `rto-rpo-mtd/` — the three time metrics, told apart, with a timeline diagram
- [x] `business-continuity/` — keeping the business running during the disruption
- [x] `disaster-recovery/` — getting back to normal, site types, testing types

---

## 🎯 Drill material

### 🗂️ 06 · Term Bank — `COMPLETE` ✅
- [x] `domain-01-terms.md` through `domain-05-terms.md`
- [x] `most-confused-pairs.md` — 45 pairs, the highest-value drill in the repo
- [x] `flashcards.csv` — 591 cards, generated by `ci/make-flashcards.sh`

### ❓ 07 · Question Bank — `COMPLETE` ✅ · 160 questions
- [x] 20 questions per domain drill, with full distractor analysis
- [x] `mixed-drill-01.md` and `mixed-drill-02.md` — 30 each, cross-domain, exam-order

### 📝 08 · Mock Exams — `COMPLETE` ✅ · 300 questions
- [x] `mock-01.md` — 100 questions, diagnostic, end of week 5
- [x] `mock-02.md` — 100 questions, harder, week 7 - the real signal
- [x] `mock-03.md` — 100 questions, final calibration, week 8
- [x] `scoring-guide.md` — the four miss types, domain breakdown, go/no-go

### Final
- [ ] `EXAM-DAY.md` — the one page read on 3–4 November, and nothing else

---

<div align="center">
<sub>Push one topic per commit. Tick the box in the same commit.</sub>
</div>
