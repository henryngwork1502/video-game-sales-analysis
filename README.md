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
First I start cleaning the data by check for NULL and duplicate in the data set to make sure everything are good to work with no need to adjust anything. Then I validated data type before running numerical code as sometime when import CSV file to mySQL it string the column as text rather than number despite it a number column. After that I check for blank space and validate the value range of critic score, that excluding null and blanks space. Move to analyse data I find out that, Shooter is the top selling genre overall (468.17M units), follow by Action (383.89M). Despite high in sale both average critic score are not really high compare to nicher genre like Sandbox and Music, with 8.3 for Shooter and 8.41 for Action. Sandbox with average critic score of 9.2 and Music with 8.6 but their sale only 1.89M unit for Sandbox and 2.04M unit for Music. Moreover, top genres are not driven by different games title, it condense in 2 giant franchises GTA and Call of Duty. Lastly, North America (234.33M) and PAL regions (164.30M) account for over 85% of all shooter sales. Japan (11.29M) reject this trend with only 2.5% of total shooter sales. 


Queried total sales by genre, console, and publisher
- Delete critic per genre
