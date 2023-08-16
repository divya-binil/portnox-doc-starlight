---
title: Case Study Set Up
description: ""
---

The two case studies rely on the following capital market assumptions and modules are used to properly set up the case studies.

Here is the step-by-step guide to setting up the environment.
- Unzip and upload the following asset database file to PortNox. Make sure you give the asset database group a unique name.
- Create the 9 modules used in the case studies.

| Module Name        | Tax Status | Comment                               |
|--------------------|------------|---------------------------------------|
| Tax Exempt Bonds   | Tax-Exempt | For Case 1 Only                       |
| Capital Preservation | Taxable   | For capital preservation              |
| Capital Preservation TE | Tax-Exempt | For capital preservation            |
| LT Lifestyle       | Taxable    | For long-term life-style               |
| LT Lifestyle TE    | Tax-Exempt | For long-term life-style               |
| LT Growth          | Taxable    | For long-term growth                   |
| LT Growth TE       | Tax-Exempt | For long-term growth                   |
| ST Lifestyle       | Taxable    | For short-term life-style with high liquidity |
| ST Lifestyle TE    | Tax-Exempt | For short-term life-style with high liquidity |

## Modules
#### Capital Preservation
This is a taxable module with an investment horizon of **_25_** years, a probability of success of **_80%_**, and the escrow asset class is set to **_TE Cash_**.

The liquidity constraint is set to be between **_85%_** and **_100%_**.

If you do not want to start from scratch, you can make a copy of the demo asset database group and work on the cases from there.

The following firmwide constraints are set for the module

| Name                            | Based On                          | Min. Wt. | Max Wt. |
|---------------------------------|----------------------------------|----------|---------|
| Cash Only                       | Overall Module                   | 0%       | 20%     |
| Lower Half Volatility Spectrum  | Overall Module                   | 0%       | 40%     |
| Equity Risk Spectrum            | Overall Module                   | 0%       | 40%     |
| Real Assets                     | Overall Module                   | 0%       | 40%     |
| Illiquid Assets                 | Overall Module                   | 0%       | 10%     |
| Partially Liquid Alternatives   | Overall Module                   | 0%       | 20%     |
| LHVS Alternatives               | Partially Liquid Alternatives     | 0%       | 100%    |
| Public Equities                 | Equity Risk Spectrum              | 80%      | 100%    |
| ERS Alternatives                | Equity Risk Spectrum              | 0%       | 20%     |
| Extended Market Fixed Income    | Liquid Fixed Income               | 0%       | 40%     |
| Liquid Fixed Income             | Lower Half Volatility Spectrum    | 50%      | 100%    |
| Liquid Real Assets              | Real Assets                       | 100%     | 100%    |
| Income Producing Real Assets    | Liquid Real Assets                | 70%      | 100%    |
| TE Fixed Income and Cash        | Overall Module                   | 0%       | 100%    |
| Taxable Fixed Income and Cash   | Overall Module                   | 0%       | 0%      |
| HY Fixed Income Only            | Extended Market Fixed Income      | 50%      | 100%    |
| IG Fixed Income Only            | Liquid Fixed Income               | 50%      | 100%    |
| Trading Strategies              | Partially Liquid Alternatives     | 50%      | 100%    |
| Developed Equities              | Public Equities                   | 80%      | 100%    |

In addition, there are a few module-specific constraints

| Name            | Type        | Based On                      | Min. Wt. | Max Wt. |
|-----------------|-------------|-------------------------------|----------|---------|
| MLPs            | Asset Class | Income Producing Real Assets | 40%      | 60%     |
| EAFE Equities   | Asset Class | Developed Equities           | 40%      | 60%     |
| Precious Metals | Asset Class | Overall Module               | 5%       | 100%    |

The objective of this module is to maximize the minimum return with the following results:

| Output               | %     |
|----------------------|-------|
| Expected Return      | 6.26  |
| Min. Maximum Return  | 4.74  |
| Volatility           | 8.58  |
| EMD                  | 21.96 |
| Liquidity            | 88.09 |

The optimal weights are

| Asset Class                       | Weight % |
|----------------------------------|---------:|
| Cash                             |          |
| TE Cash                          |     1.00 |
| U.S. Fixed Income Inv. Grade     |          |
| TE IG Fixed Income               |     5.70 |
| U.S. Fixed Income HY             |          |
| TE HY Fixed Income               |     3.80 |
| EAFE Fixed Income Hedged         |          |
| EM Debt                          |          |
| Distressed and Related HF        |     2.71 |
| Global Macro                     |     4.79 |
| Illiquid Fixed Income (Mezzanine)|     2.00 |
| U.S. Equities                    |    15.36 |
| EAFE Equities                    |    10.24 |
| EM Equities (Passive)            |     6.40 |
| Directional Hedge Eq L/S         |          |
| Managed Futures                  |          |
| Illiquid Equities (VC)           |     8.00 |
| REITs                            |    21.00 |
| MLPs                             |    14.00 |
| Precious Metals                  |     5.00 |
| Commodities                      |          |
| Illiquid Real Assets (RE)        |          |

### Capital Preservation TE
This is the tax-exempt version of the capital preservation module. All constraints are the same except that the escrow asset class is Cash.

The objective of this module is to maximize the minimum return with the following results:

| Output                | %     |
|-----------------------|-------|
| Expected Return       | 7.84  |
| Min. Maximum Return   | 5.95  |
| Volatility            | 10.52 |
| EMD                   | 26.24 |
| Liquidity             | 87.94 |

The optimal weights are

| Asset Class                        | Weight % |
|------------------------------------|----------|
| Cash                               | 1.00     |
| TE Cash                            |          |
| U.S. Fixed Income Inv. Grade       | 5.70     |
| TE IG Fixed Income                 |          |
| U.S. Fixed Income HY               | 1.90     |
| TE HY Fixed Income                 |          |
| EAFE Fixed Income Hedged           |          |
| EM Debt                            | 1.90     |
| Distressed and Related HF          | 3.75     |
| Global Macro                       | 3.75     |
| Illiquid Fixed Income (Mezzanine)  | 2.00     |
| U.S. Equities                      | 15.36    |
| EAFE Equities                      | 10.24    |
| EM Equities (Passive)              | 6.40     |
| Directional Hedge Eq L/S           |          |
| Managed Futures                    |          |
| Illiquid Equities (VC)             | 8.00     |
| REITs                              | 14.30    |
| MLPs                               | 20.70    |
| Precious Metals                    | 5.00     |
| Commodities                        |          |
| Illiquid Real Assets (RE)          |          |

### LT Growth
This is a taxable module with an investment horizon of **_25_** years, a probability of success of **_80%_**, and the escrow asset class is set to **_TE Cash_**.

The liquidity constraint is set to be between **_85%_** and **_100%_**.

If you do not want to start from scratch, you can make a copy of the demo asset database group and work on the cases from there.

The following firmwide constraints are set for the module

| Name                               | Based On                        | Min. Wt. | Max Wt. |
|------------------------------------|---------------------------------|----------|---------|
| Cash Only                          | Overall Module                  | 0%       | 10%     |
| Lower Half Volatility Spectrum     | Overall Module                  | 0%       | 30%     |
| Equity Risk Spectrum               | Overall Module                  | 0%       | 65%     |
| Real Assets                        | Overall Module                  | 0%       | 30%     |
| Illiquid Assets                    | Overall Module                  | 0%       | 20%     |
| Partially Liquid Alternatives      | Overall Module                  | 0%       | 20%     |
| LHVS Alternatives                  | Partially Liquid Alternatives    | 0%       | 100%    |
| Public Equities                    | Equity Risk Spectrum             | 80%      | 100%    |
| ERS Alternatives                   | Equity Risk Spectrum             | 0%       | 20%     |
| Extended Market Fixed Income       | Liquid Fixed Income              | 0%       | 75%     |
| Liquid Fixed Income                | Lower Half Volatility Spectrum   | 50%      | 100%    |
| Liquid Real Assets                 | Real Assets                      | 80%      | 100%    |
| Income Producing Real Assets       | Liquid Real Assets               | 70%      | 100%    |
| TE Fixed Income and Cash           | Overall Module                  | 0%       | 100%    |
| Taxable Fixed Income and Cash      | Overall Module                  | 0%       | 0%      |
| HY Fixed Income Only               | Extended Market Fixed Income     | 50%      | 100%    |
| IG Fixed Income Only               | Liquid Fixed Income              | 0%       | 100%    |
| Trading Strategies                 | Partially Liquid Alternatives    | 0%       | 100%    |
| Developed Equities                 | Public Equities                  | 80%      | 100%    |

In addition, there are a few module-specific constraints

| Name                  | Type        | Based On                        | Min. Wt. | Max Wt. |
|-----------------------|-------------|---------------------------------|----------|---------|
| MLPs                  | Asset Class | Income Producing Real Assets    | 40%      | 60%     |
| EAFE Equities         | Asset Class | Developed Equities              | 40%      | 60%     |
| Illiquid Equities (VC)| Asset Class | Overall Module                  | 10%      | 100%    |
| Precious Metals       | Asset Class | Overall Module                  | 5%       | 100%    |

The objective of this module is to maximize the minimum return with the following results:

| Output              | %     |
|---------------------|-------|
| Expected Return     | 6.99  |
| Min. Maximum Return | 4.97  |
| Volatility          | 11.33 |
| EMD                 | 32.20 |
| Liquidity           | 85.00 |

The optimal weights are

| Asset Class                   | Weight % |
|------------------------------|----------|
| Cash                         |          |
| TE Cash                      |   1.50   |
| U.S. Fixed Income Inv. Grade |          |
| TE IG Fixed Income           |   0.90   |
| U.S. Fixed Income HY         |          |
| TE HY Fixed Income           |   2.69   |
| EAFE Fixed Income Hedged     |          |
| EM Debt                      |          |
| Distressed and Related HF    |          |
| Global Macro                 |          |
| Illiquid Fixed Income (Mezzanine) |      |
| U.S. Equities                |  24.93   |
| EAFE Equities                |  16.62   |
| EM Equities (Passive)        |  10.39   |
| Directional Hedge Eq L/S     |          |
| Managed Futures              |          |
| Illiquid Equities (VC)       |  12.98   |
| REITs                        |  13.60   |
| MLPs                         |   9.39   |
| Precious Metals              |   5.00   |
| Commodities                  |          |
| Illiquid Real Assets (RE)    |   2.02   |

### LT Growth TE
This is the tax-exempt version of the LT Growth module. All constraints are the same except that the escrow asset class is **_Cash_**.

The objective of this module is to maximize the minimum return with the following results:

| Output                | %     |
|-----------------------|-------|
| Expected Return       | 8.08  |
| Min. Maximum Return   | 6.00  |
| Volatility            | 11.54 |
| EMD                   | 29.96 |
| Liquidity             | 85    |

The optimal weights are

| Asset Class                     | Weight % |
|---------------------------------|----------|
| Cash                            | 1.50     |
| TE Cash                         |          |
| U.S. Fixed Income Inv. Grade    | 2.96     |
| TE IG Fixed Income              |          |
| U.S. Fixed Income HY            | 4.44     |
| TE HY Fixed Income              |          |
| EAFE Fixed Income Hedged        |          |
| EM Debt                         | 4.44     |
| Distressed and Related HF       |          |
| Global Macro                    |          |
| Illiquid Fixed Income (Mezzanine) | 4.59  |
| U.S. Equities                   | 19.99    |
| EAFE Equities                   | 13.33    |
| EM Equities (Passive)           | 8.33     |
| Directional Hedge Eq L/S        |          |
| Managed Futures                 |          |
| Illiquid Equities (VC)          | 10.41    |
| REITs                           | 10.00    |
| MLPs                            | 15.00    |
| Precious Metals                 | 5.00     |
| Commodities                     |          |
| Illiquid Real Assets (RE)       |          |

### LT Lifestyle
This is a taxable module with an investment horizon of **_15_** years, a probability of success of **_90%_**, and the escrow asset class is set to TE Cash.

The liquidity constraint is set to be between **_90%_** and **_100%_**.

If you do not want to start from scratch, you can make a copy of the demo asset database group and work on the cases from there.

The following firmwide constraints are set for the module

| Name                             | Based On                       | Min. Wt. | Max Wt. |
|----------------------------------|--------------------------------|----------|---------|
| Cash Only                        | Overall Module                 | 0%       | 20%     |
| Lower Half Volatility Spectrum   | Overall Module                 | 50%      | 100%    |
| Equity Risk Spectrum             | Overall Module                 | 0%       | 10%     |
| Real Assets                      | Overall Module                 | 0%       | 20%     |
| Illiquid Assets                  | Overall Module                 | 0%       | 0%      |
| Partially Liquid Alternatives    | Overall Module                 | 0%       | 20%     |
| LHVS Alternatives                | Partially Liquid Alternatives   | 0%       | 100%    |
| Public Equities                  | Equity Risk Spectrum            | 80%      | 100%    |
| ERS Alternatives                 | Equity Risk Spectrum            | 0%       | 20%     |
| Extended Market Fixed Income     | Liquid Fixed Income             | 0%       | 25%     |
| Liquid Fixed Income              | Lower Half Volatility Spectrum  | 75%      | 100%    |
| Liquid Real Assets               | Real Assets                    | 100%     | 100%    |
| Income Producing Real Assets     | Liquid Real Assets              | 80%      | 100%    |
| TE Fixed Income and Cash         | Overall Module                 | 0%       | 100%    |
| Taxable Fixed Income and Cash    | Overall Module                 | 0%       | 0%      |
| HY Fixed Income Only             | Extended Market Fixed Income    | 50%      | 100%    |
| IG Fixed Income Only             | Liquid Fixed Income             | 50%      | 100%    |
| Trading Strategies               | Partially Liquid Alternatives   | 50%      | 100%    |
| Developed Equities               | Public Equities                 | 80%      | 100%    |


In addition, there are a few module-specific constraints

| Name             | Type        | Based On                      | Min. Wt. | Max Wt. |
|------------------|-------------|-------------------------------|----------|---------|
| MLPs             | Asset Class | Income Producing Real Assets  | 40%      | 60%     |
| EAFE Equities    | Asset Class | Developed Equities           | 40%      | 60%     |
| Precious Metals  | Asset Class | Overall Module               | 0%       | 20%     |


The objective of this module is to maximize the minimum return with the following results:

| Output                | %      |
|-----------------------|--------|
| Expected Return       | 4.04   |
| Min. Maximum Return   | 2.63   |
| Volatility            | 4.10   |
| EMD                   | 8.02   |
| Liquidity             | 95.75  |


The optimal weights are

| Asset Class                   | Weight % |
|------------------------------|---------:|
| Cash                         |           |
| TE Cash                      |           |
| U.S. Fixed Income Inv. Grade |           |
| TE IG Fixed Income           |    39.38 |
| U.S. Fixed Income HY         |           |
| TE HY Fixed Income           |    13.13 |
| EAFE Fixed Income Hedged     |           |
| EM Debt                      |           |
| Distressed and Related HF    |     0.33 |
| Global Macro                 |    17.17 |
| Illiquid Fixed Income (Mezz) |           |
| U.S. Equities                |     3.84 |
| EAFE Equities                |     2.56 |
| EM Equities (Passive)        |     1.60 |
| Directional Hedge Eq L/S     |     2.00 |
| Managed Futures              |           |
| Illiquid Equities (VC)       |           |
| REITs                        |    12.00 |
| MLPs                         |     8.00 |
| Precious Metals              |           |
| Commodities                  |           |
| Illiquid Real Assets (RE)    |           |


### LT Lifestyle TE
**_[Pending]_** This is the tax-exempt version of the LT Growth module. All constraints are the same except that the escrow asset class is **_Cash_**.

The objective of this module is to maximize the minimum return with the following results:

| Output                 | %     |
|------------------------|-------|
| Expected Return        | 8.08  |
| Min. Maximum Return    | 6.00  |
| Volatility             | 11.54 |
| EMD                    | 29.96 |
| Liquidity              | 85    |

The optimal weights are

| Asset Class                       | Weight % |
|----------------------------------|---------:|
| Cash                             |     1.50 |
| TE Cash                          |         |
| U.S. Fixed Income Inv. Grade     |     2.96 |
| TE IG Fixed Income               |         |
| U.S. Fixed Income HY             |     4.44 |
| TE HY Fixed Income               |         |
| EAFE Fixed Income Hedged         |         |
| EM Debt                          |     4.44 |
| Distressed and Related HF        |         |
| Global Macro                     |         |
| Illiquid Fixed Income (Mezzanine)|     4.59 |
| U.S. Equities                    |    19.99 |
| EAFE Equities                    |    13.33 |
| EM Equities (Passive)            |     8.33 |
| Directional Hedge Eq L/S         |         |
| Managed Futures                  |         |
| Illiquid Equities (VC)           |    10.41 |
| REITs                            |    10.00 |
| MLPs                             |    15.00 |
| Precious Metals                  |     5.00 |
| Commodities                      |         |
| Illiquid Real Assets (RE)        |         |


