# Capstone-project
Global Superstore Analytics — Power BI Capstone

An end-to-end analytics project on the Global Superstore dataset (51,290 orders), covering data cleaning, data modeling, DAX measures, and an executive-style Power BI dashboard, backed by SQL for ad-hoc business questions.

📊 Project Overview

This capstone turns raw retail order data into a decision-ready analytics story — surfacing where revenue grows, where profit concentrates, and where discounting is quietly eating into margin.

Key metrics:

MetricValueTotal Sales$12.64MTotal Profit$1.47MOrders51,290Countries165

🗂️ Repository Contents

FileDescriptionProject.pbixPower BI report — data model, DAX measures, and dashboard visualsglobal_superstore_2016.csvRaw/cleaned source datasetglobal_superstore_2016.xlsxExcel version of the datasetglobal_superstore_2016.sqlSQL queries used for business-question explorationglobal-superstore-landing.jsonContent/style blueprint for a project landing page

🔍 What the Dashboard Reveals

Category performance


Technology leads both revenue ($4.74M) and profit ($663.78K) — the clearest growth engine
Office Supplies ($3.79M sales) outperforms Furniture ($4.11M sales) on profit despite lower sales, at $518.60K vs $285.08K
Copiers and Phones are profit heroes, contributing roughly $475K combined


Top 5 profit sub-categories: Copiers, Phones, Bookcases, Appliances, Chairs

Risk signals


12,544 transactions were unprofitable — loss orders are concentrated enough to warrant a dedicated view
A discount-tier breakout (via SQL) shows average profit margin declining sharply above the 40% discount threshold


Market reach

MarketSalesAsia Pacific$4.04MEurope$3.29MUSCA$2.36MLATAM$2.16MAfrica$783.77K

🛠️ Methodology


Clean & model — Orders, products, regions, discounts, shipping costs, and profit margins shaped for fast exploration in Power BI (Power Query transformations, relationship modeling)
Surface signals — DAX measures and visuals highlight category/market performance and discount-driven margin pressure
SQL cross-check — Standalone queries validate top/bottom sub-categories by profit, discount-tier margins, regional loss concentration, and high-discount profit impact


Sample SQL logic

sqlSELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM global_superstore_2016
GROUP BY `Sub-Category`
ORDER BY total_profit DESC
LIMIT 5;

🧰 Tools Used


Power BI (Power Query, DAX, data modeling)
SQL (MySQL) for supporting business-question queries
Excel/CSV for source data


🚀 How to Use


Clone this repo
Open Project.pbix in Power BI Desktop to explore the interactive dashboard
Run global_superstore_2016.sql against a MySQL instance loaded with the dataset to reproduce the supporting queries


📌 Notes


global-superstore-landing.json is a content/design blueprint (not application code) — useful if you want to build a web landing page or portfolio card for this project.
