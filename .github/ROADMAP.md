<div align="center">

# 🗺️ Roadmap

### *53 topics, 9 modules, one exam sitting on 5 November 2026*

![Written](https://img.shields.io/badge/Written-53%2F53-2F9E44?style=for-the-badge)
![Target](https://img.shields.io/badge/Target-5%20Nov%202026-12B5A5?style=for-the-badge)
![Outline](https://img.shields.io/badge/Outline-live%2C%20eff.%201%20Sep%202026-F08C00?style=for-the-badge)

</div>

---

## How to read this

A box is ticked when the topic is **written and pushed** — not when it is planned.

Order of writing follows exam weight, heaviest domain first: **1 → 4 → 3 → 2/5 (tied)**. This
repo was rebuilt from the old outline (26/10/22/24/18, with Domain 2 = BC/DR/IR) to the live
outline (24/17.3/20/21.3/17.3, with Domain 2 = Security Governance and IR moved to Domain 5).

---

## 🧱 00 · Foundations — `5 / 5` ✅

Everything about the exam itself. Rewritten for CAT mechanics and the live weights.

- [x] `how-the-exam-works/` — 100–125 items, CAT delivery, MCQ + advanced items, 700/1000
- [x] `how-isc2-thinks/` — the answer-selection logic, and why experience misleads you
- [x] `answering-technique/` — commit-once technique; no flag-and-return on CAT
- [x] `the-five-domains/` — the live blueprint: 24 / 17.3 / 20 / 21.3 / 17.3
- [x] `study-schedule/` — the day-by-day plan, rebalanced to the new weight order

---

## 🧭 01 · Security Principles — `12 / 12` ✅ · **24%**

The largest domain, and the vocabulary the other four are written in.

- [x] `cia-triad/` — confidentiality, integrity, availability, and what breaks each
- [x] `authentication/` — the three factors, MFA, and what counts as which
- [x] `authorization-and-accounting/` — the rest of AAA, and where each one sits
- [x] `non-repudiation/` — what it means, what provides it
- [x] `privacy/` — PII, data subjects, and the regulation names the exam uses
- [x] `risk-concepts/` — asset, threat, vulnerability, likelihood, impact, **+ risk lifecycle**
- [x] `risk-assessment/` — qualitative vs quantitative, SLE, ALE, ARO
- [x] `risk-treatment/` — accept, avoid, mitigate, transfer, and risk tolerance
- [x] `security-controls/` — technical, administrative, physical; the functional types
- [x] `governance-documents/` — policy, standard, procedure, guideline, **+ ISO/CIS named**
- [x] `isc2-code-of-ethics/` — the four canons, in order, and how they are tested
- [x] `due-care-and-due-diligence/` — **new**, promoted from a drill item to its own topic

---

## 🌐 04 · Networking and Cloud Security Concepts — `14 / 14` ✅ · **21.3%**

Written second. Heavy on terminology, plus three genuinely new sub-areas.

- [x] `network-fundamentals/` — LAN, WAN, topologies, the devices in between
- [x] `osi-and-tcpip/` — the seven layers, the four layers, what lives where
- [x] `ip-addressing/` — IPv4, IPv6, public vs private, subnets, NAT, DHCP, DNS
- [x] `ports-and-protocols/` — the port numbers the exam expects on sight
- [x] `network-threats/` — the threat categories and how ISC2 names them
- [x] `common-attacks/` — DoS/DDoS, on-path, spoofing, side-channel, malware types
- [x] `network-defence-devices/` — firewalls, IDS/IPS, proxies, and what each cannot do
- [x] `segmentation-and-dmz/` — VLANs, DMZ, screened subnet, **+ micro-segmentation**
- [x] `vpn-and-remote-access/` — tunnels, site-to-site vs remote access, VPN concepts
- [x] `cloud-and-virtualisation/` — IaaS/PaaS/SaaS, deployment models, **+ 5 cloud characteristics**
- [x] `zero-trust/` — the model, and the MSP/SLA terms that ride along with it
- [x] `defence-in-depth/` — **moved here from old Domain 3**
- [x] `wireless-and-bluetooth/` — **new** — rogue AP/evil twin, bluejacking/snarfing/bugging
- [x] `iot-and-ics/` — **new** — embedded systems, ICS/SCADA, why patching assumptions break

---

## 🚪 03 · IAM Concepts — `6 / 6` ✅ · **20%**

Renamed from Access Control Concepts. Two sub-areas, both deep.

- [x] `access-control-fundamentals/` — subject, object, rule, and the access triple
- [x] `logical-access-controls/` — the technical side, and where it overlaps physical
- [x] `dac-mac-rbac-abac/` — the four models, told apart properly
- [x] `least-privilege-and-sod/` — need to know, least privilege, segregation of duties
- [x] `privileged-access/` — privileged accounts, and the controls the exam expects on them
- [x] `identity-lifecycle/` — provisioning, review, deprovisioning, **+ frameworks/tools (IGA)**

> Moved out: `physical-access-controls/` (no longer a named objective; the physical thread
> survives as `physical-penetration-testing/` in Domain 5) and `defence-in-depth/` (now
> Domain 4).

---

## 🚨 02 · Security Governance — `7 / 7` ✅ · **17.3%**

**New as its own domain.** Renamed from `02-bc-dr-ir`. Incident response moved OUT to Domain 5;
security awareness moved IN from the old Domain 5.

- [x] `grc-fundamentals/` — **new** — governance, risk, compliance as one programme
- [x] `business-impact-analysis/` — what a BIA produces and why it comes first
- [x] `rto-rpo-mtd/` — the three time metrics, told apart, with a timeline diagram
- [x] `business-continuity/` — keeping the business running during the disruption
- [x] `disaster-recovery/` — getting back to normal, site types, testing types
- [x] `security-awareness-training/` — **moved here from old Domain 5**
- [x] `measuring-cybersecurity-effectiveness/` — **new** — KRI vs KPI, dashboards, scorecards

> Moved out: `incident-terminology/` and `incident-response-plan/` — both now live in
> Domain 5, where incident response belongs under the live outline.

---

## ⚙️ 05 · Security Operations and Incident Response — `14 / 14` ✅ · **17.3%**

Broader than the old Security Operations domain — it absorbed incident response and gained
four new sub-areas.

- [x] `data-handling/` — the data lifecycle, states of data, retention, **+ masking**
- [x] `data-classification/` — labelling, handling requirements, ownership roles
- [x] `encryption-concepts/` — symmetric, asymmetric, keys, what each is actually for
- [x] `hashing-and-integrity/` — hashing vs encryption, digital signatures
- [x] `quantum-resistant-cryptography/` — **new** — harvest-now-decrypt-later, crypto agility
- [x] `logging-and-monitoring/` — what to log, SIEM, ingress/egress monitoring
- [x] `event-triage-and-cti/` — **new** — prioritisation/correlation, threat actors, CTI, frameworks
- [x] `incident-terminology/` — **moved here from old Domain 2**
- [x] `incident-response-plan/` — **moved here from old Domain 2**
- [x] `system-hardening/` — baselines, patching, least functionality
- [x] `configuration-management/` — inventory, baselines, change control
- [x] `security-policies/` — AUP, BYOD, change management, privacy, password policies
- [x] `asset-lifecycle-and-eol/` — **new** — lifecycle stages, EOL risk, compensating controls
- [x] `security-testing-methods/` — **new** — red/blue/purple, SAST/DAST/vuln-scan/threat-modeling
- [x] `physical-penetration-testing/` — **rehomed from old Domain 3**, refocused per the live outline

---

## 🎯 Drill material

### 🗂️ 06 · Term Bank — `COMPLETE` ✅
- [x] `domain-01-terms.md` through `domain-05-terms.md` — rebuilt for the new domain groupings
- [x] `most-confused-pairs.md` — added a "new on the live outline" section
- [x] `flashcards.csv` — 651 cards, regenerated by `.github/ci/make-flashcards.sh`

### ❓ 07 · Question Bank — `COMPLETE` ✅ · 173 questions
- [x] Domain drills rebalanced: Domain 2's IR questions moved to Domain 5; new questions
      added for GRC/KRIs, wireless/IoT/cloud characteristics, EOL/testing/physical testing
- [x] `mixed-drill-01.md` and `mixed-drill-02.md` — unchanged, still cross-domain, exam-order

### 📝 08 · Mock Exams — `COMPLETE` ✅ · 300 questions
- [x] `mock-01.md`, `mock-02.md`, `mock-03.md` — blueprint mix updated to 24/17/20/21/18,
      incident-response questions retagged from D2 to D5, framed as fixed-form practice (not CAT)
- [x] `scoring-guide.md` — domain denominators and tracking table updated to the live weights

### Final
- [x] `EXAM-DAY.md` — rewritten for CAT mechanics and the live domain weights

---

<div align="center">
<sub>Push one topic per commit. Tick the box in the same commit.</sub>
</div>
</content>
