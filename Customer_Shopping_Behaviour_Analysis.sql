SELECT * FROM customer limit 20;

# 1. What is the total revenue generated  by male vs. female customers?

SELECT gender, sum(purchase_amount) as revenue
FROM customer
GROUP BY gender

# 2. Which customer used a discount but still spent more than the average purchase amount?

SELECT customer_id, purchase_amount
FROM customer
where discount_applied = 'yes' and purchase_amount >= (SELECT AVG(purchase_amount) FROM customer)

# 3. Which are the top 5 products with the highest average review rating?

SELECT item_purchased, avg(review_rating) as Average_ProductRating
FROM customer
group by item_purchased
order by avg(review_rating) DESC limit 5;

# 4. Compare the average purchase amounts between standard and express shipping?

select shipping_type, avg(purchase_amount)
from customer
where shipping_type in ('Standard','Express')
group by shipping_type

# 5. Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers

select subscription_status, count(customer_id) as total_customers, avg(purchase_amount) as avg_spend, sum(purchase_amount) as total_revenue
from customer
group by subscription_status
order by total_revenue,avg_spend desc

# 6. Which 5 product has the highest percentage of purchases with discounts applied?

select item_purchased, round(sum(case when discount_applied = 'yes' then 1 else 0 end)/ count(*) *100,2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc limit 5

# 7. Segment customers into New. Returning, and Loyal based on their total number of previous purchases, and show the count of each segment

with customer_type  as(
select customer_id,
previous_purchases, 
case 
	when previous_purchases = 1 then 'New'
    when previous_purchases between 2 and 10 then 'Returning'
    else 'Loyal'
    end as customer_segment
from customer
)

select customer_segment, count(*) as 'Number of Customers'
from customer_type
group by customer_segment

# 8. What are the top 3 most purchased products within each category?

with item_counts as(
select category,
item_purchased,
count(customer_id) as total_orders,
row_number() over (partition by category order by count(customer_id) desc) as item_rank
from customer
group by category , item_purchased
)

select item_rank, category, item_purchased, total_orders
from item_counts
where item_rank <= 3;

# 9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?

select subscription_status, count(customer_id) as repeat_buyers
from customer
where previous_purchases > 5
group by subscription_status

# 10. What is the revenue contribution of each age group?

select age_group,
sum(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc
 