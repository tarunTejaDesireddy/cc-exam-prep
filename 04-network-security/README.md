<div align="center">

<img src="assets/module-04-banner.svg" alt="04 · Network Security" width="100%">

# 🌐&nbsp; 04 · Network Security

### *How networks are built, attacked and defended.*

[![Topics](https://img.shields.io/badge/Topics-11-0d2b33?style=for-the-badge)](#-02--the-11-topics)
[![Weight](https://img.shields.io/badge/Exam%20weight-24%25-12B5A5?style=for-the-badge)](#-03--the-trap-in-this-domain)

![domain](https://img.shields.io/badge/ISC2%20Domain-4-5C7CFA?style=flat-square)
![questions](https://img.shields.io/badge/≈%20Questions-24-57606A?style=flat-square)
![type](https://img.shields.io/badge/Mostly-recall%20%26%20placement-57606A?style=flat-square)

</div>

---

## 👋 01 · Read this first

The second-heaviest domain at **24%**, and the one most likely to be familiar territory.

That familiarity is the problem, and it is worth being blunt about it before you start.

This domain is largely **straight recall**: which layer a device operates at, which port a
protocol uses, what an IDS does that an IPS does not. Where Domain 1 tested whether you could
tell two definitions apart, this one tests whether you can produce a fact on demand. The
material is not hard. The failure mode is different.

**If you work with networks, you will lose marks by knowing too much.** ISC2 teaches a
simplified model, and the exam grades against the simplification. An IPS blocks — full stop,
regardless of how many you have seen deployed in monitor-only mode. A firewall operates at
layer 3 and 4 in the basic model, regardless of what a next-generation appliance actually
inspects. Answering from deployment experience leads you to distractors built out of exactly
that nuance.

So read this domain for **phrasing**, not for concepts. You are learning how ISC2 words things
you already understand.

Two things to work hardest on:

- **The port numbers.** They are pure memorisation and they are free marks. Make them
  automatic.
- **The OSI layers.** Knowing which layer a device, protocol or attack belongs to answers a
  large share of this domain's questions.

---

## 📂 02 · The 11 topics

Work top to bottom. The early topics build the vocabulary the attack and defence topics use.

| | Topic | What you will be able to do afterwards |
|:--:|---|---|
| <sub>&#9745;</sub> | 🕸️ [`network-fundamentals/`](network-fundamentals/) | Name the network types and topologies, and say what each device on a network actually does. |
| <sub>&#9745;</sub> | 🪜 [`osi-and-tcpip/`](osi-and-tcpip/) | Place any protocol, device or attack at the right layer, in both models. |
| <sub>&#9745;</sub> | 🔢 [`ip-addressing/`](ip-addressing/) | Tell public from private, IPv4 from IPv6, and say what NAT, DHCP and DNS each do. |
| <sub>&#9745;</sub> | 🚪 [`ports-and-protocols/`](ports-and-protocols/) | Recognise the port numbers the exam expects on sight, and their secure equivalents. |
| <sub>&#9744;</sub> | ☠️ [`network-threats/`](network-threats/) | Name the threat categories and the actor types in ISC2's own terms. |
| <sub>&#9744;</sub> | 💥 [`common-attacks/`](common-attacks/) | Identify an attack from its description, and tell the near-identical ones apart. |
| <sub>&#9744;</sub> | 🔥 [`network-defence-devices/`](network-defence-devices/) | Say what a firewall, IDS, IPS and proxy each do — and what each cannot do. |
| <sub>&#9744;</sub> | 🧱 [`segmentation-and-dmz/`](segmentation-and-dmz/) | Explain VLANs, DMZ and screened subnets, and why segmentation limits damage. |
| <sub>&#9744;</sub> | 🔐 [`vpn-and-remote-access/`](vpn-and-remote-access/) | Distinguish site-to-site from remote access, and say what a tunnel actually protects. |
| <sub>&#9744;</sub> | ☁️ [`cloud-and-virtualisation/`](cloud-and-virtualisation/) | Place responsibility correctly across IaaS, PaaS and SaaS, and name the deployment models. |
| <sub>&#9744;</sub> | 🚦 [`zero-trust/`](zero-trust/) | State the model's core assumption, and recognise the service-agreement terms beside it. |

---

## 🎯 03 · The trap in this domain

```mermaid
%%{init: {'theme':'base','themeVariables':{'fontSize':'14px','lineColor':'#4d6f6e','textColor':'#dbe7e6'}}}%%
flowchart LR
    Q["❓ A network<br/>question"] --> D{"Answer from<br/>what?"}
    D -->|"how it really deploys"| W["❌ A distractor built<br/>from exactly that nuance"]
    D -->|"the simplified model"| R["✅ The mark"]

    style Q fill:#12243f,stroke:#5C7CFA,color:#fff
    style D fill:#3a2c12,stroke:#F08C00,color:#fff
    style W fill:#3a1a20,stroke:#E03131,color:#fff
    style R fill:#1d3a2a,stroke:#2F9E44,color:#fff
```

Three examples of the simplification you are being graded against:

| The exam's model | What you know in practice |
|---|---|
| IDS detects and alerts; IPS detects and blocks | Most IPS deployments run in detect-only mode for months |
| A firewall filters on addresses and ports | Next-generation firewalls do application and TLS inspection |
| A VPN encrypts traffic between two points | What a VPN protects depends entirely on where it terminates |

In each case, **answer the left-hand column.**

---

## ⏭️ 04 · Where to go next

When all eleven boxes are ticked, go to [`03-access-control/`](../03-access-control/README.md)
— 22%, and the most definition-dense domain on the paper.

---

<div align="center">
<sub><a href="../README.md">← back to the repo index</a></sub>
</div>
