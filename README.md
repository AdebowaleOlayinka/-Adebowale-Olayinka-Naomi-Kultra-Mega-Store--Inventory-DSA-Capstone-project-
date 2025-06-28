# Kultra Mega Store Analysis with SQL
![1000274921](https://github.com/user-attachments/assets/dd6e2097-9f19-42a4-a3d5-ab209b7c6e19)

## Introduction
This repository is a capstone project for the analysis of kultra mega store between 2009-2012. The data set contains record of sales, customer information, product details and shipping information.The analysis aimed to extracted using  sql query to answer business questions to get insight on sales, Number of orders, understand customer base to help business improve efficiency 
## Skills Demonstrated 
- SQL Data base Management
- Data query 
## Task to do 
1. Which product category had the highest sales?
2. What are the Top 3 and Bottom 3 regions in terms of sales?
3. What were the total sales of appliances in Ontario?
4. Advise the management of KMS on what to do to increase the revenue from the bottom
10 customers
5. KMS incurred the most shipping cost using which shipping method?
6. Who are the most valuable customers, and what products or services do they typically
purchase?
7. Which small business customer had the highest sales?
8. Which Corporate Customer placed the most number of orders in 2009 – 2012?
9. Which consumer customer was the most profitable one?
10. Which customer returned items, and what segment do they belong to?
11. If the delivery truck is the most economical but the slowest shipping method and
Express Air is the fastest but the most expensive one, do you think the company
appropriately spent shipping costs based on the Order Priority? Explain your answer
## SQl Query 

![kms1](https://github.com/user-attachments/assets/e514507a-26c6-45d6-9238-53fd16521002)


![kms 2](https://github.com/user-attachments/assets/296bb8e2-3a6c-40f4-81fa-6db4f6561103)
## Insight Derived
- **Total Customer**: 795
- **Total Sales**: $14,911,890
- **Order Quantity**: 214,777
- **Total Returned Order**: 572
1. Highest Sales in product category: Technology has the highest sales among the three products categories
2. Top 3 and bottom 3 Regions by sales: The top 3 regions with the highest sales are West, Ontario and Prairie while the bottom 3 where Nunavut, North West territory and Yukon
3. Ontario had the total sales of 202,300 Naira  for appliances
4. Kultra mega store incurred the highest shipping cost on Delivery truck
5. **The Top 10 valuable customer are:**

| Customers Names |
| ---- |
|Emily Phan|
| Raymond Book|
| Dennis Kane|
|Jasper Cacioppo|
|Grant Carroll|
|Clytie Kelty|
|Craig Carreira|
|Roy Skaria|
|Roy Phan|
|Lisa DeCherriey|
This customers purchase mostly Copiers and fax and office machines and most of them are smaller business owner and consumers 

6. Dennis Kane in the small business customer segments had the highest sale
7. The total number of Orders placed between 2009-2012 is 214,777 orders. Roy Skaria placed the highest number of within that year of about 773 orders
8. The company made a total of 34,005 profit from the sales of Emily Phan
9. About 572 orders were returned by customers and the segment of highest return is the corporate customers with 215 returned order

| Customer Segments | Total Returned |
| ----- | ---- |
| Corporate | 215|
| Home Office|138|
|Small Business|121|
|consumer|98|

10. **Shipping By orders of Priority**
Delivery truck was the slowest but economical but it had a high number of critical and high order priority compared to express air which is the fastest that should be used for critical and high orders. This implies that company did not spend according to the shipping cost based on priority but consider cost savings over speed that would lead to customer dissatisfaction due to delay in delivery 

| Shipping Mode | Order of Priority|
| -----| ----|
| Delivery Truck| Critical = 288|
|  | High= 248|
| Expeess Air | Critical= 200|
| | High= 212|
| Regular Air | Critical= 1180|
| | High = 1350 |

## Recommendations 
1. Ensure a clear communication with customer regarding shipping mode and order priority to reduce potential dissatisfaction 
