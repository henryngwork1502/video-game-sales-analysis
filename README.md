# Video Game Sales Analysis (1980s–2018)

## Project Description
Analysed global video game sales (1980s–2018) using SQL, Excel, and Power BI. Cleaned and queried data in MySQL to compare genre, publisher, and regional performance; built trend/variance analysis in Excel and an interactive Power BI dashboard. Found critic scores don’t predict sales, Sandbox rated highest but sold least.

## Data Source
Dataset: [Video Game Sales - vgchartz-2024] https://app.mavenanalytics.io/datasets?search=Video Game Sales

## Tools Used
- **SQL (MySQL)** — data cleaning and analysis queries
- **Excel** — trend and variance analysis
- **Power BI** — interactive dashboard

## Project Structure
sql/         → all SQL cleaning and analysis queries

### 1. SQL — Data Cleaning & Analysis

First, I cleaned the dataset by checking for NULL values and duplicates to ensure the data was complete and ready for analysis. Next, I validated data types before running numerical queries, as importing a CSV file into MySQL can sometimes store numeric columns as text. After that, I checked for blank spaces and validated the range of critic scores, excluding null and empty entries.

Moving on to data analysis, I found that Shooter is the top-selling genre overall (468.17 million units), followed by Action (383.89 million). However, despite high sales, average critic scores for Shooters (5.68) and Action (5.67) are relatively modest compared to niche genres like Sandbox (9.20) and Music (8.60), which achieved sales of only 1.89 million and 2.04 million units, respectively. Moreover, sales in these top genres are not spread across a wide variety of titles; instead, they are heavily concentrated within only two franchises: Grand Theft Auto and Call of Duty. Finally, North America (234.33M) and PAL regions (164.30M) account for over 85% of all Shooter sales, whereas Japan (11.29M) rejects this trend, representing only 2.5% of the total.










