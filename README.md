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

```sql
--1. Which product category had the highest sales?

SELECT *
top 1[product category], sum(sales) as [Total Sales] from [KMS data] 
group by [Product Category]
order by [Total Sales] desc

--2. what are the top 3 regions in terms of sales
select top 3 region,sum(sales) as [Total Sales]from [KMS data]
group by region 
order by[Total Sales]desc

-- . what are the bottom 3 region in terms of sales
select top 3 region,sum(sales) as [Total Sales]from [KMS data] 
group by region 
order by[Total Sales]asc

--3. what were the total sales of appliances in ontario
select sum(Sales) as [Total Sales] from [KMS data]
where [Product Sub-Category] ='appliances' and region ='ontario'


-- 4. Bottom 10 customers based on sales
select top 10 [Customer Name],SUM(Sales) as totalsales from[dbo].[KMS data]
group by [Customer Name]
order by totalsales asc

--5.KMS incurred the most shipping cost using which shipping mode
select top 1[Ship Mode], sum([shipping cost])as [Total shipping cost] from [KMS data]
group by[Ship Mode]
order by[Total shipping cost]desc

---6. who are the most valuable customer and what product do they purchase
select top 10 [customer name],[Product Sub-Category],sum (sales) as [Total Sales] from [kms data]
group by [customer name],[Product Sub-Category]
order by [Total Sales] desc

---7. which small business customer had the highest sales
select top 1 [customer name],sum (sales) as [Total Sales] from [kms data]
where [Customer Segment]='small business'
group by [customer name]
order by [Total Sales] desc

-- 8. which corporate customer placed the most number of order in 2009-2012
select top 1 [customer name],count([Order ID])as [Total order] from [KMS data]
where [Customer Segment]='corporate' and [Order Date] between '2009-01-01' and '2012-12-31'
group by [Customer Name]
order by [Total order]desc

--9. which consumer is the most profitable one
select top 1 [customer name],[customer segment], sum(profit)as [Total profit] from [KMS data]
where [Customer Segment]='consumer'
group by [customer name],[customer segment]
order by [Total profit]desc

--- 10. list of customer who returned items and thier segment
select [Order ID], [customer name],[customer segment],[dbo].[Order_Status].[Status] from [dbo].[KMS data]
join [dbo].[Order_Status]on [dbo].[Order_Status].Order_ID=[dbo].[KMS data].[Order ID]
where [Status]= 'returned'
group by [Order ID], [customer name],[customer segment],[dbo].[Order_Status].[Status]

--11. calculating shipping cost by ship mode and order of priority
select[order priority],[ship mode], round (sum(sales-profit),2) as [ Estimated shipping cost], 
avg (datediff(day,[order id],[Ship Date]))as avgshipday,
count([Order ID]) as [Total order] from [KMS data]
group by [Order Priority],[Ship Mode]
order by [order priority],[ship mode]
```

## Insight Derived
- **Total Customer**: 795
- **Total Sales**: ₦14,911,890
- **Total Order**: 5,496
- **Total Returned Order**: 572
1. **Highest Sales in product category**: Technology has the highest sales of ₦5,983,316 among the three products categories
2. **Top 3 and bottom 3 Regions by sales**: The top 3 regions with the highest sales are West(₦3,596,680), Ontario(₦3,062,407) and Prairie(₦2,836,550) while the bottom 3 where Nunavut(₦116,343), North West territory(₦800,671), and Yukon(₦975,618)
3. Ontario had the total sales of ₦202,300 for appliances
4. **Advice on Bottom 10 customers**

 | Customers Names |
 |----|
 | Jeremy Farry |
| Michelle Elison|
| Natalie Decherney|
|Nicole Fjeld|
|Katrina Edelman|
|Bart Pistole|
|Dorothy Dickinson|
|Christine Kargatis|
|Eric Murdock|
|Chris McAfee|
kms should consider target campaign or loyalty programs to customers to increase sales

5. Kultra mega store incurred the highest shipping cost on Delivery truck with a total of ₦51,968

6.**The Top 10 valuable customer are:**

| Customers Names |Product Purchased|
| ---- | ---|
|Emily Phan| Office Machines|
| Raymond Book| copiers and fax|
| Dennis Kane| Copiers and Fax|
|Jasper Cacioppo| Office Machines|
|Grant Carroll|Binders and Binders Accessories|
|Clytie Kelty|copiers and fax|
|Ajejandro Groove| Office machines|
|Roy Skaria|Binders and Binders Accessories|
|Roy Phan|Book cases|
|Lisa DeCherriey|Office and Machines|

This customers purchase mostly Copiers and fax and office machines and most of them are smaller business owner and consumers 

7. Dennis Kane in the small business customer segments had the highest sale of ₦75,959
8. The total number of Orders placed between 2009-2012 is 5,496 orders. Adam Hart is the corporate customers to place the highest order of 27 orders between 2009-2012
9. The company made a total of ₦34,005 profit from the sales of Emily Phan
10. About 572 orders were returned by customers and the segment of highest return is the corporate customers with 215 returned order

 | Customer name| Segment|
| ---- | ---|
|Tamara Dahlem| Corporate|
| Johnathan Doherty| Corporate|
| Michael Dominguez| Home office|
|Anne Pryor| consumer|
|Erin Creighton| Corporate |
| Frank Gastineau|small business|
|Cari Sayre| Coporate|
|Shari Gordon|Corporate |
|Dave Hallsten | Corporate|
|Dorothy Badders| Home and odfice|

| Customer Segments | Total Returned |
| ----- | ---- |
| Corporate | 215|
| Home Office|138|
|Small Business|121|
|consumer|98|

11. **Shipping By orders of Priority**
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
1. Ensure a clear communication with customer regarding shipping mode and order priority to reduces potential dissatisfaction 
2. offer free shipping to customer who placed higher order
3. kms should consider target campaign or loyalty programs to customers to increase sales 


