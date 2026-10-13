# Data Quality Assessment — Superstore

## 1. Dataset Overview
- Total rows: 9994
- Total column: 21
- Dataset granularity: 1 product line within an order

### Dataset Grain

Each row represents an order line/product item within an order.

Therefore, Order ID is not expected to be unique because one order can contain multiple products.


## 2. Data Quality Findings

### 2.1 Missing Values
| Column       | Missing rows | % Missing | Impact |
| ------------ | -----------: | --------: | ------ |
| Row ID       |            0 |         0 | High   |
| Order ID     |            0 |         0 | High   |
| Order Date   |            0 |         0 | High   |
| Ship Date    |            0 |         0 | Low    |
| Ship Mode    |            0 |         0 | Low    |
| Customer ID  |            0 |         0 | High   |
| Customer Name|            0 |         0 | Low    |
| Segment      |            0 |         0 | High   |
| Country      |            0 |         0 | High   |
| City         |            0 |         0 | Medium |
| State        |            0 |         0 | Medium |
| Postal Code  |            0 |         0 | Low    |
| Region       |            0 |         0 | Low    |
| Product ID   |            0 |         0 | High   |
| Category     |            0 |         0 | High   |
| Sub-Category |            0 |         0 | Medium |
| Product Name |            0 |         0 | Low    |
| Sales        |            0 |         0 | High   |
| Quantity     |            0 |         0 | Medium |
| Discount     |            0 |         0 | Medium |
| Profit       |            0 |         0 | High   |

No missing values were detected across the dataset.


### 2.2 Duplicate Records
No full-row duplicate records were detected.

### 2.3 Data Type Issues
- Postal Code is curently interpreted as a numeric field -> may cause formatting issues such as loss of leading zeros.

### 2.4 Categorical Consistency
### Category
Distinct values:
- Furniture
- Office Supplies
- Technology
-> Total: 3 values

No inconsistent Category labels were detected.

### Sub-category
Distinct values:
- Bookcases
- Chairs
- Labels
- Tables
- Storage
- Furnishings
- Art
- Phones
- Binders
- Appliances
- Paper
- Accessories
- Envelopes
- Fasteners
- Supplies
- Machines
- Copiers
-> Total: 17 values

No inconsistent Sub-Category labels were detected.

### Customer Segment
Distinct values:
- Consumer
- Corporate
- Home Office
-> Total: 3 values

No inconsistent Customer Segment were detected.

### Region
Distinct values:
- South
- West
- Central
- East
-> Total: 4 values

No inconsistent Region were detected

### 2.5 Date Range
### Order Date:
- Min: 03-01-2014
- Max: 30-12-2017

### Ship Date:
- Min: 07-01-2014
- Max: 05-01-2018

### Date Logic
- No records were found where Ship Date occurs before Order Date.
- Date relationships appear logically consistent.

## 3. Cleaning Decisions
Based on the initial data quality assessment, the dataset contains no major missing-value, error, or full-row duplicate issues.

The following transformations will be applied during the cleaning stage:

1. Convert Postal Code from numeric to Text because it is an identifier rather than a numerical measure.

2. Validate and standardize data types across all columns.

3. Retain negative Profit values because they represent valid loss-making transactions.

4. Retain valid categorical values after consistency checks.

5. Retain all records unless a business-rule violation is identified.

6. Preserve the original raw dataset and perform transformations in Power Query.

## 4. Notes
- The dataset is relatively clean and contains no major structural data quality issues.

- No missing values or full-row duplicates were detected.

- Order ID is not unique because the dataset is stored at the order-line level.

- Negative Profit values are considered valid business cases rather than data errors.

- Postal Code should be treated as a text identifier rather than a numerical measure.

- Data quality assessment was performed before any transformation or cleaning was applied.