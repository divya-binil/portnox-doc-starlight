---
title: "Case Study 1 (Simple): Financial Advisor Guide"
description: "Case Study 1 (Simple): Financial Advisor Guide"
---

# Family Background

As the family has both taxable and tax-deferred financial assets in the same asset database, we need to create two clients for this family.

1. A taxable client with a total wealth of $2.5 million, currently invested in a $1.5 million municipal bond ladder, and the balance in other asset classes.

2. A tax-exempt client with a total wealth of $4.0 million.

## Goals

We also need to translate the client goals to PortNox goals. The inflation is set to 2% for all goals.

We will create the tax-exempt client first. Let us call the client **Case 1 Tax-Exempt**. For the tax status, we choose **tax-exempt**. The default module for surplus is **Capital Preservation TE**. We use the tag **Case 1**. The tag later will be used to group the tax-exempt and taxable client profiles for this family.



<video controls>
  <source src="/src/assets/videos/Case-study-Video-1.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

We will then create the taxable client. Let us call the client **Case 1 Taxable** with the same tag. For the tax status, we choose **taxable**. The default module for surplus is **Tax Exempt Bonds**.

### Taxable Goals

1. Use the $1.5 million municipal bond ladder to provide for their lifestyle expenses for the next 5 years, which they describe as an absolute need.

This is a cash-flow-driven goal. The purpose is to achieve client needs with a very urgent probability (99%) over five years, with a starting year of 0 and a duration of 5 years. The yearly spending is $200,000.

To create this goal, we open **Case 1 Taxable**. We then create a goal called **Next 5 Years** with a probability of success of 99% and a horizon of 5 years. We set the starting year to 0, and the duration to 5 years. The timing is set to be **Beginning Period**. As the cash flows come from the municipal bond ladder, we choose the user-selected module **Tax Exempt Bonds**.

As PortNox shows, to achieve this goal with a 99% probability of success over the next five years, an initial amount of $1,097,930 is required.

The cash flow table looks like the following:

| Time | Initial Capital ($) | Return ($) | Annual Spending with Inflation($) | Occasional Cash Flow ($) | Ending Capital ($) |
|------|---------------------|------------|-----------------------------------|--------------------------|--------------------|
| 0    | 1,097,930           | -22,930    | -200,000                          | 0                        | 875,000            |
| 1    | 875,000             | -17,135    | -204,000                          | 0                        | 653,865            |
| 2    | 653,865             | -11,384    | -208,080                          | 0                        | 434,401            |
| 3    | 434,401             | -5,673     | -212,242                          | 0                        | 216,486            |
| 4    | 216,486             | 0          | -216,486                          | 0                        | 0                  |

The annual spending timing is at the beginning of each period. So an annual spending of $200,000 will be deducted from the initial capital of $1,097,930. There is a 99% chance that the remaining $897,930 will earn a return of at least $-22,930

<math xmlns="http://www.w3.org/1998/Math/MathML">
  <mrow>
    <mo>(</mo>
    <mn>1097930</mn>
    <mo>-</mo>
    <mn>200000</mn>
    <mo>)</mo>
    <mo>-</mo>
    <mn>22930</mn>
    <mo>=</mo>
    <mn>875</mn>
  </mrow>
</math>
