<div align="center">

<img src="../assets/module-01-banner.svg" alt="01 · Security Principles" width="100%">

# 📐 Risk Assessment

### *Rating how bad a risk is — in words, or in money*

[![Module](https://img.shields.io/badge/Module-01_Security_Principles-0d2b33?style=flat-square)](../README.md)
[![Domain](https://img.shields.io/badge/Domain-1%20·%2024%25-5C7CFA?style=flat-square)](../README.md)
[![Read](https://img.shields.io/badge/Read-~12%20min-57606A?style=flat-square)](#)

📌 *Pick qualitative vs quantitative for a scenario, work the AV → SLE → ALE chain, and compare ALE to a control's cost.*

</div>

---

## 🧸 The big idea

How risky is your drive to work? Two ways to answer:

- *"Pretty risky — the traffic is bad."* No numbers, just a judgement. That's **qualitative**.
- *"I scrape my car about twice a year, and each repair costs $300. So it costs me about $600 a
  year."* Real numbers. That's **quantitative**.

The second answer lets you decide things with arithmetic: a $200-a-year parking sensor is clearly
worth it; a $2,000-a-year chauffeur is clearly not.

That's the whole topic: **two ways to rate a risk, one chain of formulas, and one rule — a
control shouldn't cost more than the risk it removes.**

---

## 📖 Words you will keep seeing

| Word | What it means on this exam |
|---|---|
| **Risk assessment** | Identifying risks and determining their likelihood and impact. |
| **Qualitative** | Rating risk with **descriptive categories** — high, medium, low. |
| **Quantitative** | Rating risk with **numbers**, usually money. |
| **AV** — Asset Value | What the asset is worth, in money. |
| **EF** — Exposure Factor | The **percentage** of the asset's value lost in one incident. Never a money figure. |
| **SLE** — Single Loss Expectancy | Money lost in **one** occurrence. |
| **ARO** — Annual Rate of Occurrence | How many times the event happens **per year**. |
| **ALE** — Annualised Loss Expectancy | Expected loss **per year**. |
| **Risk matrix** | A likelihood × impact grid used for qualitative rating. |
| **Risk register** | The record of risks, their ratings, owners and treatments. |

---

## 🔍 The explanation

### Two ways to rate a risk

<p align="center"><img src="diagrams/1.svg" alt="Qualitative rating uses words like high, medium and low, and is fast and cheap but subjective; quantitative rating uses numbers, usually money, and is objective but slow and data-hungry" width="620"></p>

**Qualitative** ratings go on a **risk matrix** — top-right first, bottom-left usually accepted:

| | **Low impact** | **Medium impact** | **High impact** |
|---|---|---|---|
| **High likelihood** | Medium | High | **Critical** |
| **Medium likelihood** | Low | Medium | High |
| **Low likelihood** | Low | Low | Medium |

Most real programmes are **hybrid**: qualitative to triage everything quickly, quantitative on the
few risks big enough to justify the effort.

### The quantitative chain

Two multiplications, always in this order:

<p align="center"><img src="diagrams/2.svg" alt="Asset value of 50,000 dollars times an exposure factor of 0.6 gives a single loss expectancy of 30,000 dollars; that times an annual rate of occurrence of 0.1 gives an annualised loss expectancy of 3,000 dollars per year" width="700"></p>

```
SLE = AV  × EF     → the loss from ONE event
ALE = SLE × ARO    → the loss PER YEAR
```

### The rule the exam loves: compare ALE with the control's cost

<p align="center"><img src="diagrams/3.svg" alt="With an ALE of 3,000 dollars a year, a control costing 1,000 dollars a year is worth it and saves 2,000, but a control costing 5,000 dollars a year is not worth it because it costs more than the risk" width="520"></p>

> [!IMPORTANT]
> **A control should not cost more than the risk it mitigates.** Given an ALE and a control cost,
> the question is almost always asking you to compare the two.

### ARO is where people slip

ARO is **per year**, so anything rarer than yearly is a decimal. **Divide 1 by the years between
events.**

| Frequency | ARO |
|---|---|
| Twice a year | **2.0** |
| Once a year | **1.0** |
| Once every 4 years | **0.25** |
| Once every 10 years | **0.1** |
| Once every 100 years | **0.01** |

### Which method does the question want?

<p align="center"><img src="diagrams/4.svg" alt="If the question mentions no data, an intangible impact like reputation, or needing speed, choose qualitative; if it mentions justifying a control's cost, comparing spend against loss, or good loss data, choose quantitative" width="700"></p>

---

## ⚖️ Told apart

| | Means | Not to be confused with |
|---|---|---|
| **Qualitative** | Words. Subjective, fast, cheap. | **Quantitative** — numbers. Objective, slow, data-hungry. |
| **SLE** | Loss from **one** event. | **ALE** — loss **per year**. The difference is ×ARO. |
| **EF** | A **percentage** of asset value. | **AV** — the full value. EF is never money. |
| **ARO** | Times **per year**. | A count of past incidents. Once in 10 years = **0.1**, not 1. |
| **Risk assessment** | Rating likelihood and impact. | **Risk treatment** — deciding what to *do*. Assessment comes first. |

> [!CAUTION]
> **SLE vs ALE is the most-swapped pair here.** "Per year" or "annually" → ALE. One event → SLE.

---

## ⚠️ Where your instinct is wrong

> [!WARNING]
> **In the job:** ALE figures are mostly guesswork dressed up as precision.
>
> **On the exam:** take the numbers at face value, compute, pick the answer. Don't argue with the
> inputs.

> [!WARNING]
> **In the job:** if a control is clearly good practice, you implement it anyway.
>
> **On the exam:** if it costs more than the ALE, it's **not cost-effective**. The arithmetic wins.

> [!WARNING]
> **In the job:** "qualitative" sounds like the weaker option.
>
> **On the exam:** it's the **correct** choice when there's no data, the impact is intangible, or
> speed matters.

---

## 🧠 How to remember it

**"Single, then Annual."** **S**LE = **S**ingle event. **A**LE = **A**nnual.

**AV × EF = SLE, then SLE × ARO = ALE.** *Value × how much is lost = one hit. × how often = the
year.*

**Qual = words. Quant = numbers.** **Qual**ity describes; **quant**ity counts.

---

## ✅ Check you actually got it

Answer all five before expanding anything.

**Q1.** An asset is valued at $200,000. An incident would destroy 25% of its value and is
expected once every four years. What is the ALE?

- **A.** $12,500
- **B.** $50,000
- **C.** $200,000
- **D.** $800,000

<details>
<summary><b>Answer</b></summary>

**A — $12,500.** SLE = $200,000 × 0.25 = **$50,000**. ARO = 1 ÷ 4 = **0.25**. ALE = $50,000 ×
0.25 = **$12,500**.

- **B** is the **SLE** — a real intermediate value, and the most common wrong pick.
- **C** ignores both EF and ARO.
- **D** multiplies by 4 instead of 0.25.

</details>

**Q2.** A risk has an ALE of $18,000. A control costs $25,000 per year and would eliminate the
risk. What should be concluded?

- **A.** Implement the control, since eliminating risk is always preferable
- **B.** The control is not cost-effective, as it costs more than the annual expected loss
- **C.** Implement the control, since $25,000 is close to $18,000
- **D.** The ALE must be recalculated, since controls cannot exceed asset value

<details>
<summary><b>Answer</b></summary>

**B.** Spending $25,000 to avoid $18,000 loses $7,000 a year.

- **A** — "always", and it defeats the purpose of quantitative assessment.
- **C** swaps arithmetic for a feeling.
- **D** invents a rule.

</details>

**Q3.** An organisation must assess reputational damage from a potential breach and has no
historical data. Which approach is MOST appropriate?

- **A.** Quantitative, because breaches have measurable costs
- **B.** Qualitative, because the impact is intangible and no data exists
- **C.** Neither — reputational risk cannot be assessed
- **D.** Quantitative, using industry average breach costs as a substitute

<details>
<summary><b>Answer</b></summary>

**B — qualitative.** Built for intangible impacts and missing data.

- **A** — reputation isn't measurable, and there's no data.
- **C** — too absolute; it's assessed all the time, qualitatively.
- **D** — borrowed averages look authoritative but have no link to this organisation.

</details>

**Q4.** What does the Exposure Factor represent?

- **A.** The number of times per year an incident is expected
- **B.** The total monetary value of the asset
- **C.** The percentage of the asset's value lost in a single incident
- **D.** The annual expected loss from a risk

<details>
<summary><b>Answer</b></summary>

**C.** EF is always a proportion, never money.

- **A** is ARO. **B** is AV. **D** is ALE — every wrong option is a real term from the same chain.

</details>

**Q5.** Which statement about qualitative and quantitative assessment is correct?

- **A.** Quantitative assessment is always more accurate and should be preferred
- **B.** Qualitative assessment produces monetary values for each identified risk
- **C.** Both are legitimate, and organisations commonly use a hybrid of the two
- **D.** Qualitative assessment is used only when an organisation cannot afford a proper assessment

<details>
<summary><b>Answer</b></summary>

**C.** Qualitative triages many risks; quantitative goes deep on a few.

- **A** — "always", and guessed inputs give precise-looking, not accurate, numbers.
- **B** — money is the output of *quantitative*.
- **D** — qualitative is the *right* method in many situations, not a budget compromise.

</details>

---

## 🎓 The grown-up version

<details>
<summary><b>Extra depth — open this on a second read, never needed for the pass</b></summary>

**ALE hides the shape of a risk.** An ARO of 0.01 with an SLE of $10M gives the same $100,000 ALE
as a twice-yearly $50,000 nuisance — but only one could end the company.

**FAIR** (Factor Analysis of Information Risk) is the industry fix: estimate *ranges* for how often
a threat acts, how often it succeeds, the direct loss and the knock-on loss (fines, churn), then
run a Monte Carlo simulation. The output is a distribution — "a 1-in-20 chance of losing more than
$2M this year" — not one number. Not on CC.

**Quantitative's real advantage isn't accuracy — it's that assumptions become explicit.** Someone
can challenge an ARO of 0.1; nobody can meaningfully challenge "high".

**Every risk in the register needs a named owner.** A risk without an accountable person doesn't
get treated.

</details>

---

## 📝 Cram lines

Destined for [`EXAM-DAY.md`](../../EXAM-DAY.md):

- **SLE = AV × EF** (one event). **ALE = SLE × ARO** (per year).
- **ARO = 1 ÷ years between events.** Once in 10 years = 0.1.
- **Control cost > ALE → not cost-effective.**
- **Qualitative** = words; no data / intangible / fast. **Quantitative** = money; justify spend.
- **EF is a percentage, never money.**

---

<div align="center">
<sub><a href="../README.md">← back to 01 · Security Principles</a> &nbsp;·&nbsp; <a href="../risk-treatment/">next: Risk treatment →</a></sub>
</div>
