select  c.customer_city, count(order_id) as Total_orders from orders o join customers c on o.customer_id=c.customer_id group by c.customer_city order by Total_orders desc LIMIT 0, 1000;
select year(o.order_purchase_timestamp) as Year, month(o.order_purchase_timestamp) as Month, sum(oi.price) as revenue from orders o join order_items oi on o.order_id=oi.order_id group by Year, Month order by Year, Month LIMIT 0, 1000;
SELECT  payment_type, COUNT(*) AS total_payments FROM orderpayments GROUP BY payment_type ORDER BY total_payments DESC LIMIT 0, 1000;
SELECT  AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp))  AS avg_delivery_days FROM orders WHERE order_delivered_customer_date IS NOT NULL LIMIT 0, 1000
