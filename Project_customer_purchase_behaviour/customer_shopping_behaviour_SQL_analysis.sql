--SELECT * FROM mydatabase.dbo.customer

--What is th total revenue by male and female customers?
SELECT gender,sum(purchase_amount) as total_revenue
FROM mydatabase.dbo.customer
GROUP BY gender;

--Which customer used discount but still spent more than average purchase amount?
SELECT [customer_id],[purchase_amount]
FROM mydatabase.dbo.customer
WHERE discount_applied = 'Yes' AND [purchase_amount] >= (SELECT AVG([purchase_amount]) FROM mydatabase.dbo.customer);

--Which are top 5 products with highest average review rating?
SELECT TOP(5)
    category, item_purchased,ROUND(AVG(review_rating),3) AS average_review_rating
FROM mydatabase.dbo.customer
GROUP BY category,item_purchased
ORDER BY ROUND(AVG(review_rating),3) DESC;

--Compare average purchase amount between standard and express shipping
SELECT
     shipping_type, ROUND(AVG(purchase_amount * 1.0),2) AS avg_purchase_amount
FROM mydatabase.dbo.customer
WHERE shipping_type IN ('Standard','Express')
GROUP BY shipping_type;

--Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers
SELECT
     subscription_status,
     COUNT([customer_id]) AS number_of_customers,
     ROUND(AVG(purchase_amount),2) AS average_spending,
     ROUND(SUM(purchase_amount),2) as total_revenue
FROM mydatabase.dbo.customer
GROUP BY subscription_status;

--Which 5 products have highest percentage of discount application ?
SELECT TOP(5)
       item_purchased,
       ROUND(sum(case when discount_applied = 'Yes' then 1 else 0 end) * 100. / count(*),2) AS discount_rate
FROM mydatabase.dbo.customer
GROUP BY item_purchased
ORDER BY discount_rate DESC;

--Segment customers in New,Returning,Loyal based on total number of each purchases and show count of each segment
with customer_type as (
select [customer_id],[previous_purchases],
case when [previous_purchases] = 1 then 'New'
     when [previous_purchases] between 2 and 10 then 'Returning'
     else 'Loyal'
     end as customer_segment
from mydatabase.dbo.customer
)
SELECT customer_segment, COUNT(*) AS 'number_of_customers'
FROM customer_type
GROUP BY customer_segment
ORDER BY 'number_of_customers' DESC;

--What are top 3 most purchased products within each category?
with item_list as (
select category,item_purchased, COUNT(customer_id) as number_of_purchases,
ROW_NUMBER() over(partition by category order by count(customer_id) desc) as item_rank
from mydatabase.dbo.customer
group by category,item_purchased
)
SELECT item_rank,category,item_purchased, number_of_purchases
FROM item_list
WHERE item_rank <= 3;

--Are customers who are repeat buyers(more that 5 previous purchases) are likely to subscribe?
SELECT [subscription_status],count([customer_id]) as repeat_buyers_count
FROM mydatabase.dbo.customer
WHERE [previous_purchases] > 5
GROUP BY [subscription_status];

--What is the revenue contribution of each age group?
SELECT [age_group], SUM([purchase_amount]) AS total_revenue_contribution
FROM mydatabase.dbo.customer
GROUP BY [age_group]
ORDER BY total_revenue_contribution DESC
