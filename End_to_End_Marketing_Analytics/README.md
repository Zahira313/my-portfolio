# End-to-End Marketing Analytics (SQL, Python, PowerBI)


## Project Overview

This project demonstrates an end-to-end marketing analytics workflow using **SQL Server, Python and Power BI**.

The project brings together customer, product, customer journey, social media engagement and customer review data to analyse marketing performance from different perspectives. SQL was used to clean, transform and integrate the data, Python was used to perform sentiment analysis on customer reviews, and Power BI was used to build interactive dashboards for conversion, social media and customer review analysis.

### Project Workflow

**Raw Marketing Data → SQL Server → Data Cleaning & Transformation → Python Sentiment Analysis → Power BI → Marketing Insights**

---

## Business Objectives

The analysis was designed to answer key marketing questions such as:

- How are customers progressing through the journey from product view to purchase?
- How does conversion performance vary by month and product?
- Which products generate stronger conversion rates?
- How is social media content performing in terms of views, clicks and likes?
- How does engagement vary across different content types?
- How do customers rate different products?
- What does customer review text reveal about customer sentiment?
- How does customer sentiment change over time?

---
##Database
[Database](End_to_End_Marketing_Analytics/MArketingAnalytics.bak)

## Tools & Technologies

| Tool | Purpose |
|---|---|
| **SQL Server** | Data cleaning, transformation and integration |
| **Python** | Customer review sentiment analysis |
| **Pandas** | Data manipulation and processing |
| **NLTK VADER** | Text sentiment scoring |
| **Power BI** | Data modelling, analysis and interactive visualisation |

---

# 1. SQL – Data Cleaning, Transformation & Integration

SQL Server was used to prepare the raw datasets before analysis.

### SQL Techniques Used

`CASE` • `LEFT JOIN` • `REPLACE` • `UPPER` • `CHARINDEX` • `LEFT` • `RIGHT` • `CONVERT` • `FORMAT` • CTEs • `ROW_NUMBER()` • `PARTITION BY` • Window Functions • `AVG() OVER()` • `COALESCE`

[View SQL Scripts](SQL/)

---

# 2. Python – Customer Review Sentiment Analysis

Python was used to extend the customer review analysis beyond numerical ratings by analysing the text contained within each review.

Cleaned customer review data was retrieved from SQL Server and processed using **Pandas and NLTK VADER**.

VADER generated a compound sentiment score ranging from negative to positive sentiment.

The analysis then combined the **sentiment score with the customer's numerical rating** to classify reviews into:

- Positive
- Mixed Positive
- Neutral
- Mixed Negative
- Negative

Sentiment scores were also grouped into defined score ranges to support further analysis and visualisation.

The final enriched customer review dataset contained:

- Review text
- Customer rating
- Sentiment score
- Sentiment category
- Sentiment score bucket

The processed dataset was then exported for use in Power BI.

[View Python Sentiment Analysis](Python/)

---

# 3. Power BI – Marketing Analytics Dashboard

Power BI was used to bring the different areas of the analysis together into an interactive marketing analytics report.

The report contains four dashboard pages.

## Interactive Analysis

The Power BI report includes interactive filters that allow users to explore the results by:

- Year
- Month
- Product
- Sentiment category

This allows the same report to be used for both high-level monitoring and more detailed product and customer analysis.

[View Power BI Files](PowerBI/)

---

# Skills Demonstrated

This project demonstrates practical experience across an end-to-end analytics workflow, including:

* SQL data cleaning and transformation
* Relational data integration
* Duplicate identification and handling
* Missing value treatment
* Data standardisation
* Python data processing
* Natural Language Processing (NLP)
* Customer sentiment analysis
* Power BI data visualisation
* Customer journey and conversion analysis
* Social media performance analysis
* Customer review analysis
* Interactive dashboard development

⸻

# Project Summary

This project demonstrates how different analytics tools can be combined within a single workflow rather than used independently.
SQL Server prepared and transformed the source data, Python added text-based customer sentiment information that was not available in the original structured data, and Power BI brought the results together into an interactive report covering conversion, social media engagement and customer feedback.
The result is an end-to-end marketing analytics solution that moves from raw data preparation through analytical processing to business-facing visualisation.


## Acknowledgement
This project was developed as a hands-on learning project based on a YouTube tutorial. I followed the project framework to strengthen my practical experience of working through an end-to-end analytics workflow using SQL Server, Python and Power BI.

I have documented my implementation, SQL scripts, sentiment analysis workflow and Power BI report in this repository.


# Repository Structure

```text
End_to_End_Marketing_Analytics/
│
├── README.md
│
├── SQL/
│   ├── 01_product_price_categories.sql
│   ├── 02_customer_geography_join.sql
│   ├── 03_clean_customer_reviews.sql
│   ├── 04_clean_engagement_data.sql
│   ├── 05_clean_customer_journey.sql
│   └── README.md
│
├── Python/
│   └── sentiment_analysis.ipynb
│
└── PowerBI/
    ├── marketing_analytics_dashboard.pbix
    ├── README.md
    └── Screenshots/
        ├── 01_overview_dashboard.png
        ├── 02_conversion_details.png
        ├── 03_social_media_details.png
        └── 04_customer_review_details.png


