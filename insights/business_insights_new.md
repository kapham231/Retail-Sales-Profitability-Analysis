# Business Insights & Recommendations

## Retail Sales & Profitability Analysis

**Dataset:** Sample Superstore  
**Period:** 2014–2017

> **Important:** Figures are approximate visual readings from the dashboard and have not been reconciled against SQL results. The source material does not provide annual sales figures or validated discount-analysis results. Findings are descriptive and should not be interpreted as proof of causation.

------------------------------------------------------------------------

## Insight 1 — Sales Trends

### Observation

The dashboard reports approximately **$2.30M in total sales** over 2014–2017. However, the available source material does not show sales broken down by year, so it is not possible to determine whether sales increased, declined, or fluctuated during the period.

### Evidence

- Total sales for the full period: approximately **$2.30M**
- The source material does not provide annual sales values or a year-by-year trend.
- The displayed total is an approximate visual reading and should be verified against SQL results.

### Business implication

The overall total gives a useful measure of business scale, but it does not reveal the direction or consistency of sales performance over time.

### Potential action

Validate total sales against the SQL results and review sales by year for 2014–2017 before drawing conclusions about growth or decline.

------------------------------------------------------------------------

## Insight 2 — Product Performance

### Observation

Technology leads the three categories in sales. At the sub-category level, Phones and Chairs are among the sales leaders, while Copiers leads in profit. Tables and Bookcases appear to have negative profit.

### Evidence

Approximate visual readings from the dashboard:

- Technology sales: about **$0.83M**
- Furniture sales: about **$0.74M**
- Office Supplies sales: about **$0.72M**
- Phones and Chairs sales: about **$0.33M each**
- Copiers profit: approximately **$55K**, the highest visible sub-category profit
- Tables profit: approximately **-$18K**; Bookcases appears slightly negative

These values are estimates from dashboard visuals, not exact SQL results.

### Business implication

High sales do not necessarily translate into high profit. Loss-making sub-categories may offset gains elsewhere, so product decisions based on sales alone could be misleading.

### Potential action

Compare sales, total profit, and profit margin by category and sub-category. Investigate Tables and Bookcases at the product level, including their discount and sales patterns, before considering changes to pricing or assortment.

------------------------------------------------------------------------

## Insight 3 — Customer / Segment Performance

### Observation

Consumer contributes the most sales and total profit. Corporate ranks second, while Home Office has the lowest sales and total profit among the three segments.

### Evidence

Approximate visual readings from the segment charts:

- Consumer: about **$1.16M** in sales and **$134K** in profit
- Corporate: about **$1.00M** in sales and **$95K** in profit
- Home Office: about **$0.43M** in sales and **$60K** in profit

These values are approximate and should be confirmed against the segment-level SQL results.

### Business implication

Consumer is the largest contributor to the reported totals, but total profit does not indicate which segment has the strongest profit margin or efficiency.

### Potential action

Compare profit margin and order metrics across segments. Use those results to assess whether to prioritize Consumer retention and growth or to investigate opportunities to improve Corporate and Home Office performance.

------------------------------------------------------------------------

## Insight 4 — Regional Performance

### Observation

West and East lead in sales, followed by Central. South has the lowest sales in the dashboard.

### Evidence

Approximate visual readings from the regional sales chart:

- West: about **$0.72M**
- East: about **$0.68M**
- Central: about **$0.50M**
- South: about **$0.39M**

These values are estimates; confirm exact regional sales and profit using the SQL analysis.

### Business implication

Sales contribution varies by region, but the lowest-sales region is not necessarily the least profitable, and the highest-sales region is not necessarily the most profitable.

### Potential action

Compare sales, total profit, and profit margin by region. Investigate South's lower sales alongside product mix, customer segments, and order patterns before treating it as a growth opportunity.

------------------------------------------------------------------------

## Insight 5 — Discount and Profitability

### Observation

The available source material does not include validated results for sales, profit, or profit margin by discount level. Therefore, no conclusion can yet be drawn about the relationship between discount and profitability.

### Evidence

- The planned analysis groups discounts into **0%, 1–10%, 11–20%, 21–30%, and over 30%**.
- The analysis is intended to compare sales, total profit, and profit margin across discount ranges and categories.
- Actual results from the discount dashboard page were not available in the source material.

### Business implication

Profitability may differ across discount ranges, but differences in product mix and transaction characteristics may also contribute. Any observed pattern should be treated as an association, not proof that discounting caused a change in profit.

### Potential action

Complete and validate the discount analysis. Compare sales, absolute profit, and profit margin by discount range and category; investigate product mix before recommending changes to discount policy.

------------------------------------------------------------------------

## Data Limitations

- Dashboard values are approximate visual readings and should be verified against SQL results before publication.
- Annual sales results are not available in the source material, so the 2014–2017 sales trend remains undetermined.
- Discount-analysis results are pending validation.
- The analysis is descriptive and does not establish causality or guarantee that a proposed action will improve future results.
