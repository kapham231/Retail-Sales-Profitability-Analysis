| Column        | Description                            | Data Type | Role         |
| ------------- | -------------------------------------- | --------- | ------------ |
| Row ID        | Unique identifier for each row         | Integer   | Identifier   |
| Order ID      | Identifier for each order              | Text      | Business Key |
| Order Date    | Date when the order was placed         | Date      | Date         |
| Ship Date     | Date when the order was shipped        | Date      | Date         |
| Ship Mode     | Shipping method selected for the order | Text      | Attribute    |
| Customer ID   | Unique identifier for each customer    | Text      | Foreign Key  |
| Customer Name | Customer name                          | Text      | Attribute    |
| Segment       | Customer segment                       | Text      | Attribute    |
| Country       | Customer country                       | Text      | Attribute    |
| City          | Customer city                          | Text      | Attribute    |
| State         | Customer state                         | Text      | Attribute    |
| Postal Code   | Customer postal code                   | Text      | Attribute    |
| Region        | Geographic region                      | Text      | Attribute    |
| Product ID    | Unique identifier for each product     | Text      | Foreign Key  |
| Category      | Product category                       | Text      | Attribute    |
| Sub-Category  | Product sub-category                   | Text      | Attribute    |
| Product Name  | Product name                           | Text      | Attribute    |
| Sales         | Sales amount                           | Decimal   | Measure      |
| Quantity      | Quantity sold                          | Integer   | Measure      |
| Discount      | Discount rate                          | Decimal   | Measure      |
| Profit        | Profit/loss amount                     | Decimal   | Measure      |
