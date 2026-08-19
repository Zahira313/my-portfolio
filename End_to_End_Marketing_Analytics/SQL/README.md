## SQL – Data Cleaning, Transformation and Integration

This folder contains the SQL scripts used in the End-to-End Marketing Analytics project.

The SQL stage was used to prepare the raw marketing data before further analysis in Python and visualisation in Power BI. The scripts cover data categorisation, table joins, text cleaning, standardisation, duplicate handling and missing value treatment.

SQL Scripts

1. Product Price Categories

File: [01_product_price_categories.sql](SQL/01_product_price_categories.sql)

This script creates a new PriceCategory field using a CASE statement.

Products are grouped into:

* Low
* Medium
* High

This transformation makes it easier to analyse product performance across different price ranges.

⸻

2. Customer and Geography Integration

File: [02_customer_geography_join.sql](SQL/02_customer_geography_join.sql)

This script combines customer information with geographic information using a LEFT JOIN on GeographyID.

The resulting dataset includes:

* Customer ID
* Customer name
* Email
* Gender
* Age
* Country
* City

This allows customer behaviour and marketing performance to be analysed by location.

⸻

3. Customer Review Cleaning

File: [03_clean_customer_reviews.sql](SQL/03_clean_customer_reviews.sql)

This script cleans the ReviewText field by removing additional whitespace using the REPLACE() function.

A new cleaned table, customer_reviews_cleaned, is then created for use in the Python sentiment analysis stage.

The cleaned review data is later used to generate sentiment scores and sentiment categories.

⸻

4. Engagement Data Cleaning and Standardisation

File: [04_clean_engagement_data.sql](SQL/04_clean_engagement_data.sql)

This script prepares the social media engagement data for analysis.

The main transformations include:

* Standardising ContentType
* Separating combined views and clicks into individual columns
* Converting the engagement date into a consistent format
* Removing newsletter records that were not required for the analysis

This cleaned data is later used in the Power BI social media dashboard.

⸻

5. Customer Journey Cleaning

File: [05_clean_customer_journey.sql](SQL/05_clean_customer_journey.sql)

This script cleans and prepares the customer journey data.

The main steps include:

* Using a Common Table Expression (CTE) to identify duplicate records
* Using ROW_NUMBER() to distinguish duplicate customer journey records
* Keeping only the first occurrence of each duplicate group
* Standardising journey stages using UPPER()
* Replacing missing duration values using the average duration for the corresponding visit date
* Using COALESCE() to replace null values

The cleaned customer journey data is used for conversion and funnel analysis in Power BI.

⸻

SQL Techniques Demonstrated

This project demonstrates the use of:

* SELECT
* CASE
* LEFT JOIN
* REPLACE
* UPPER
* LEFT
* RIGHT
* CHARINDEX
* LEN
* CONVERT
* FORMAT
* WHERE
* Common Table Expressions (CTEs)
* ROW_NUMBER()
* Window functions
* AVG() OVER()
* PARTITION BY
* COALESCE
* Duplicate detection
* Missing value handling
* Data standardisation
* Data integration

Role of SQL in the Project

SQL forms the first major processing stage of the project.

The overall workflow is:

Raw Marketing Data → SQL Cleaning and Transformation → Python Sentiment Analysis → Power BI Visualisation

The prepared SQL datasets provide the foundation for the later Python and Power BI stages of the project.

