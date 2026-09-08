# Video Game Sales Analysis (1980s–2018)

## Project Description
Analysed global video game sales (1980s–2018) using SQL and Excel. Cleaned and queried data in MySQL to compare genre, publisher, and regional performance; built trend/variance analysis in Excel. Found critic scores don’t predict sales, Sandbox rated highest but sold least.

## Data Source
Dataset: [Video Game Sales - vgchartz-2024] https://app.mavenanalytics.io/datasets?search=Video Game Sales

## Tools Used
- **SQL (MySQL)** — data cleaning and analysis queries
- **Excel** — trend and variance analysis

## Project Structure

### 1. SQL — Data Cleaning & Analysis

First, I cleaned the dataset by checking for NULL values and duplicates to ensure the data was complete and ready for analysis. Next, I validated data types before running numerical queries, as importing a CSV file into MySQL can sometimes store numeric columns as text. After that, I checked for blank spaces and validated the range of critic scores, excluding null and empty entries.

Moving on to data analysis, I found that Shooter is the top-selling genre overall (468.17 million units), followed by Action (383.89 million). However, despite high sales, average critic scores for Shooters (5.68) and Action (5.67) are relatively modest compared to niche genres like Sandbox (9.20) and Music (8.60), which achieved sales of only 1.89 million and 2.04 million units, respectively. Moreover, sales in these top genres are not spread across a wide variety of titles; instead, they are heavily concentrated within only two franchises: Grand Theft Auto and Call of Duty. Finally, North America (234.33M) and PAL regions (164.30M) account for over 85% of all Shooter sales, whereas Japan (11.29M) rejects this trend, representing only 2.5% of the total.


### 2. Excel - Trend and variance analysis

While I cross validating SQL publisher totals using Excel’s SUMIFS function, I discovered inconsistent publisher naming within the dataset “Activision” appeared under at least four variants, including Activision, Activision Blizzard, Activision Publishing, Inc., and Activision Value. As a result, this meant that my original SQL query, which grouped publishers by exact name match, understated Activision’s true total sales by treating each variant as a separate publisher. This finding highlights the importance of data standardization before aggregation, and illustrates the value of cross validating results across tools rather than relying on a single query in isolation.

From 1989 to 2018, peak sale performance was between 2010 and 2013, ranging from 131.54M to 128.87M units per year, and recording the highest sales in 2011 at 144.43M units, approximately 34.6 times higher than the lowest year, 1989 (4.17M units).  

Regional analysis by genre showed that most Shooter and Action games are sold in North America and PAL region with an average of approximately 85% combined for both genres, with only approximately 2.81% sold in Japan. Most of other genres saw below 9% of sales in Japan indicating relatively low demand for these game types in that market. However, Sandbox was unusually high compared to other genres in Japan with up to 27.51%.



