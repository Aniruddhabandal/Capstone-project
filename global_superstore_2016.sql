use capstone_project;

SELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM global_superstore_2016
GROUP BY `Sub-Category`
ORDER BY total_profit DESC
LIMIT 5;

SELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM global_superstore_2016
GROUP BY `Sub-Category`
ORDER BY total_profit ASC
LIMIT 5;

SELECT `Discount Tier`, AVG(`Profit Margin`) AS avg_profit_margin
FROM global_superstore_2016
GROUP BY `Discount Tier`
ORDER BY avg_profit_margin DESC;

SELECT Region, COUNT(*) AS loss_orders
FROM global_superstore_2016
WHERE Profit < 0
GROUP BY Region
ORDER BY loss_orders DESC
LIMIT 1;

SELECT Region, SUM(Profit) AS total_loss
FROM global_superstore_2016
WHERE Profit < 0
GROUP BY Region
ORDER BY total_loss ASC
LIMIT 1;

SELECT 
   CASE WHEN Discount > 40 THEN 'High Discount' ELSE 'Others' END AS discount_group,
   AVG(Profit) AS avg_profit
FROM global_superstore_2016
GROUP BY discount_group;