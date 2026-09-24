<div align="center">

<img src="../assets/module-05-banner.svg" alt="05 · Security Operations and Incident Response" width="100%">

# 📊 Logging and Monitoring

### *Recording what happened is not the same as noticing it*

[![Module](https://img.shields.io/badge/Module-05_Security_Operations-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-5%20·%2017.3%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~12%20min-57606A?style=flat-square)](#)

📌 *Logging records, monitoring notices; both are detective. Log every who/what/when/where/outcome including failures, centralise and protect logs, and egress monitoring is what catches data theft.*

</div>

---

## 🧸 The big idea

A shop's **CCTV** records everything that happens overnight, perfectly and honestly. But a camera
nobody watches doesn't stop a single thief, or even notice one. The footage only matters if someone
sits down and watches it. Left unwatched, a burglar could stroll through every night for a month,
and the tapes would prove it, long after the shop had been cleaned out.

That's the whole distinction. **Logging** records what happened (the footage). **Monitoring** is
someone watching and reacting (a person at the screen).

They're not the same thing, and the gap between them is where organisations fail. A system with
thorough logging that nobody reviews gives you evidence after the fact and **detects nothing** at
the time. The log existed; the breach still ran for six months.

> 🎯 **Logging is the record; monitoring is the attention.** If a question describes logs being
> collected but incidents going unnoticed, the failure is monitoring and review.

Both are **detective** controls. They prevent nothing. Their value is that they make activity
visible, which supports detection, investigation, accountability, and a real deterrent effect once
people know they're being logged.

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Log** | A record of events produced by a system or application. |
| **Audit trail** | A time-ordered record detailed enough to reconstruct what happened. |
| **Monitoring** | Watching systems and logs to spot problems or attacks. |
| **SIEM** (Security Information and Event Management) | A platform that **centralises, correlates and alerts** on log data. |
| **Correlation** | Joining events from different sources into one picture. |
| **Ingress monitoring** | Watching traffic **coming into** the network. |
| **Egress monitoring** | Watching traffic **leaving**, where data theft shows up. |
| **DLP** (Data Loss Prevention) | Controls that spot or block sensitive data leaving. |
| **Time synchronisation** | Keeping clocks aligned (usually with NTP), so events can be put in order. |
| **Alert fatigue** | Analysts becoming numb to alerts, especially false alarms. |

---

## 🔍 The explanation

### What to log

<p align="center"><img src="diagrams/1.svg" alt="Every log entry should answer five questions: who, which identity; what, which action; when, an accurate timestamp; where, which system or object; and the outcome, success or failure" width="460"></p>

**Events worth logging:** logins (successful *and* failed), access granted and denied, use of admin
rights, configuration changes, access to sensitive data, security events (malware, IDS alerts), and
system starts, stops and crashes.

> ⚠️ **Log failures as well as successes.** Failed logins reveal brute force and password spraying;
> denied access reveals probing. A log of successes alone misses every unsuccessful attack, and
> every attack starts as unsuccessful attempts.

> ⚠️ **Don't log the sensitive data itself.** Passwords, card numbers and personal data should never
> be written into logs, because logs are copied widely, kept for years and read by many people. A
> log holding credentials is a breach waiting to be found.

### Centralisation and SIEM

Logs scattered across hundreds of systems are of little use. **Centralising** them does two things:

<p align="center"><img src="diagrams/2.svg" alt="Logs from servers, network devices, endpoints and cloud services all flow into a central log store that an attacker on any one box can't edit, and a SIEM correlates across those sources and raises alerts" width="680"></p>

- **Correlation.** One failed login is noise. The same account failing on forty systems in a minute
  is an attack. Only a central view shows that.
- **Integrity.** If logs stay on the system that made them, an attacker who takes over that system
  can delete the record of how they got in. **Shipping logs elsewhere in real time puts the
  evidence beyond their reach.**

> [!IMPORTANT]
> **Logs must be protected from being changed, including by administrators.** Otherwise the account
> that caused the damage can erase the evidence of it. Write-once storage, or a log platform run by a
> different team, is the expected answer.

A **SIEM** collects logs from across the environment, puts them into a common shape, correlates
events and raises alerts. It's the tool that turns logging into monitoring.

### Time synchronisation

If two systems' clocks differ by ten minutes, their logs can't be put in order. You can't tell
whether the firewall event came before or after the server event, and the whole reconstruction falls
apart.

**NTP** keeps clocks aligned across the estate. Consistent, accurate timestamps, usually in UTC to
dodge time-zone and daylight-saving confusion, are a precondition for correlation and for evidence
that stands up.

> 🎯 **Accurate time synchronisation is a prerequisite for meaningful log analysis.** It's a small,
> unglamorous control that everything else in this topic depends on.

### Ingress and egress monitoring

<p align="center"><img src="diagrams/3.svg" alt="Ingress monitoring watches attacks coming in from the internet to your network; egress monitoring watches data going out from your network to the internet, such as theft and command-and-control callbacks" width="800"></p>

| | Watches | Finds |
|---|---|---|
| **Ingress** | Traffic coming in | Attacks, scanning, intrusion attempts |
| **Egress** | Traffic **leaving** | **Data theft**, command and control, compromised hosts phoning home |

> ⚠️ **Egress monitoring is the one organisations neglect**, because all the attention goes to keeping
> attackers out. But by the time data is leaving, the attacker is already inside, and egress is where
> you catch the breach you missed at ingress. If a question asks how to detect data theft, the answer
> involves egress monitoring or DLP.

**DLP** spots and can block sensitive data leaving by email, upload or USB, by recognising patterns
and classification labels.

### Alert fatigue

The most common way monitoring fails in practice, and the exam knows it. A burglar alarm that goes
off every time a cat walks past soon gets ignored, and the night of the real break-in, nobody comes.
**Too many alerts, especially false alarms, wear analysts down.** They start dismissing alerts
without looking, and the genuine one gets dismissed with the noise. More alerting is not better
monitoring.

The fixes are **tuning** to cut false alarms, **prioritising** by severity, and **automating**
routine triage so people's attention goes where it's needed.

> 🎯 **An alert nobody investigates is worth nothing.** Same point as logs nobody reads, one step
> further along.

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Logging** | Recording events. | **Monitoring** — reviewing them. Logging alone detects nothing. |
| **Both** | **Detective** controls. | Preventive controls. Logging stops nothing. |
| **SIEM** | Centralises, correlates, alerts. | A log store, which only keeps logs. Correlation is the added value. |
| **Ingress monitoring** | Traffic coming **in**. Attacks. | **Egress monitoring** — traffic going **out**, data theft. |
| **Audit trail** | Enough detail to reconstruct events. | A basic log, which may record too little to be useful. |
| **Alert fatigue** | Numbness from too many alerts. | Too few alerts. The failure is too many, not too few. |
| **Log retention** | How long logs are kept. | **Log protection** — stopping them being changed. |

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** you log everything you can and worry about volume later.
>
> **On the exam:** logging **without review** gives no detection, and **excessive logging** buries
> real events in noise. The expected answer balances coverage against usable signal.

> [!WARNING]
> **In the job:** local logs are fine for most systems, and central collection is a big project.
>
> **On the exam:** **logs must be centralised and protected from change**, because an attacker who
> takes over a system can otherwise delete the evidence.

> [!WARNING]
> **In the job:** defending the perimeter means watching what's coming in.
>
> **On the exam:** **egress monitoring is what finds data theft.** Data leaving is often the first
> visible sign of a compromise that ingress controls missed.

---

## 🧠 How to remember it

**Logging records. Monitoring notices.** Both detective; neither preventive.

**Every entry: who · what · when · where · outcome.**

**Log the failures too**, because attacks start as failed attempts.

**Ship logs off the box**, or the attacker deletes them.

**Ingress finds the attack. Egress finds the theft.**

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** An organisation logs extensively but nobody reviews the logs. An intrusion goes unnoticed for
months. What was the failure?

- **A.** Insufficient logging coverage
- **B.** Logs were collected but not monitored, so nothing was detected
- **C.** The logs were not retained long enough
- **D.** The logging system lacked encryption

<details>
<summary><b>Answer</b></summary>

**B — logs were collected but not monitored.** Logging is the record; monitoring is the attention.
Without review, the evidence exists and detection doesn't.

- **A** is contradicted by the question, which says logging was extensive.
- **C** is wrong: the logs were present throughout the months in question. Retention wasn't the gap.
- **D** protects logs from being read by others, and wouldn't have made anyone notice the intrusion.

</details>

**Q2.** Why should logs be sent to a centralised system rather than kept only on the originating
host?

- **A.** It reduces storage costs on individual systems
- **B.** It enables correlation across sources, and an attacker who compromises a host cannot delete the shipped evidence
- **C.** It is required by all data protection regulations
- **D.** Central storage automatically encrypts log data

<details>
<summary><b>Answer</b></summary>

**B — correlation across sources, and the evidence survives a compromise of the host.** Those are the
two reasons, and the second is the security-critical one: a privileged attacker on a system can
delete its local logs.

- **A** is an operational side effect and usually untrue: central storage adds cost.
- **C** overstates it. Some regulations require logging; none universally mandate centralisation, and
  the word "all" should make you suspicious.
- **D** isn't automatic. It's a feature of a particular setup, not a reason to centralise.

</details>

**Q3.** Which type of monitoring is MOST likely to detect data exfiltration?

- **A.** Ingress monitoring of traffic entering the network
- **B.** Egress monitoring of traffic leaving the network
- **C.** Physical access monitoring at the data centre
- **D.** Monitoring of failed authentication attempts

<details>
<summary><b>Answer</b></summary>

**B — egress monitoring.** Exfiltration is data going **out**, so the outbound path is where it shows
up.

- **A** watches for attacks arriving. By the time data is being stolen, the attacker is already
  inside and past ingress monitoring.
- **C** would catch someone physically removing media, not network exfiltration.
- **D** may reveal an earlier stage of the intrusion, but says nothing about data leaving.

</details>

**Q4.** Why is accurate time synchronisation important for logging?

- **A.** It reduces the storage space logs consume
- **B.** Without it, events from different systems cannot be reliably sequenced
- **C.** It prevents logs from being modified
- **D.** It is required before logs can be encrypted

<details>
<summary><b>Answer</b></summary>

**B — without it, events from different systems can't be reliably put in order.** If clocks disagree,
you can't tell whether the firewall event came before or after the server event, and the
reconstruction of an incident falls apart.

- **A** has nothing to do with timestamp accuracy.
- **C** is log integrity protection, achieved with write-once storage and separate administration,
  not with clock accuracy.
- **D** invents a dependency that doesn't exist.

</details>

**Q5.** An analyst begins dismissing security alerts without investigation because there are hundreds
each day, most of them false positives. What is this called, and what is the remedy?

- **A.** Alert fatigue; remedied by tuning to reduce false positives and prioritising by severity
- **B.** Log saturation; remedied by increasing log retention
- **C.** Correlation failure; remedied by adding more alert rules
- **D.** Monitoring drift; remedied by rebuilding the SIEM

<details>
<summary><b>Answer</b></summary>

**A — alert fatigue, remedied by tuning and prioritisation.** Volume and false alarms wear analysts
down, and the genuine alert gets dismissed with the noise.

- **B** isn't a standard term, and longer retention does nothing about alert volume.
- **C** would make it worse. More rules means more alerts, which is the cause, not the cure.
- **D** isn't a recognised term, and replacing the platform doesn't fix rules that were never tuned.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**Detection engineering has moved away from volume.** The early SIEM idea was to collect everything
and write rules for anything suspicious, which produced alert volumes no team could work. Current
practice favours fewer, higher-quality detections mapped to specific attacker behaviours (frameworks
such as MITRE ATT&CK provide the vocabulary), each one owned, tested and measured. A detection that
has never produced a real alert is a candidate for removal, not a safety net.

**How different devices are made to agree.** A firewall, an EDR agent and a directory server describe
wildly different events. **Syslog** and **CEF (Common Event Format)** are the standards that let a
SIEM read them all: a CEF message always carries the same basic fields (severity, source,
destination, event name) whichever vendor produced it, so one SIEM can correlate across products
without custom parsing for each. **Sigma** goes a step further: an analyst writes one detection rule
in plain YAML (for example, "`winword.exe` spawned `powershell.exe` with `-enc` in the command
line") and converters translate it into each platform's own query language. A public library of Sigma
rules exists, each tagged with the ATT&CK technique it detects.

**Log volume has real cost.** Commercial SIEM licensing is often priced by how much data you ingest,
so "log everything" is a budget decision as well as a technical one. This drives tiered designs:
high-value security sources into the SIEM for real-time correlation, and bulk data into cheaper
searchable storage for investigation. The design question is which sources would actually change a
detection outcome.

**Logs are themselves sensitive.** They record who accessed what and when, often contain fragments of
personal data, and sometimes capture secrets through careless application logging. A log platform is
therefore a high-value target and a data protection responsibility of its own, which is why access to
it should be restricted and audited, and why it's one of the few systems where administrators
shouldn't be able to delete their own tracks.

**Monitoring only works with someone to act.** A SIEM with no analyst is an expensive log archive.
That's why many organisations use a managed detection and response provider: the tooling is the cheap
part, and round-the-clock analyst coverage is what actually produces detection. Any claim that an
organisation is "covered" because it bought a platform deserves the question: covered by whom, at 3am
on a Sunday?

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **Logging RECORDS. Monitoring NOTICES.** Logs nobody reviews detect **nothing**. Both are **detective** controls.
- **Every entry: WHO · WHAT · WHEN · WHERE · OUTCOME.**
- **Log FAILURES as well as successes** (attacks begin as failed attempts). **Never log passwords or sensitive data.**
- **Centralise logs:** enables **correlation**, and puts evidence **beyond an attacker's reach** on a compromised host.
- **Protect logs from being changed, including by administrators.**
- **SIEM = centralise + correlate + alert.**
- **Accurate time sync (NTP) is a prerequisite** for sequencing events across systems.
- **INGRESS finds attacks coming in. EGRESS finds DATA THEFT going out.** Egress is the neglected one; DLP helps.
- **Alert fatigue** = too many alerts (especially false positives) → tune and prioritise, don't add more rules.

---

<div align="center">
<sub><a href="../README.md">← back to 05 · Security Operations and Incident Response</a> &nbsp;·&nbsp; <a href="../event-triage-and-cti/">next: Event triage and threat intelligence →</a></sub>
</div>
