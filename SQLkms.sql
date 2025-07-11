select * from[KMS data]

--- Checked for duplicate
select [Row id], count(*) as duplicate from [KMS data] group by [Row ID] having count(*) >1

--1. Which product category had the highest sales?
select top 1[product category], sum(sales) as [Total Sales] from [KMS data] 
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



