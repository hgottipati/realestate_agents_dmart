
-- How many customers they get assigned 
SELECT 
	a.agentFirstName, DATEPART(YEAR,c.customerJoinDate) [Year], COUNT(*) [customers_assigned]
FROM 
	dim_customers c
JOIN 
	dim_agents a ON a.agentid = c.assignedagentid
WHERE 
	c.assignedAgentId IS NOT NULL and isCurrentIndicator = 1
GROUP BY 
	a.agentFirstName,DATEPART(YEAR,c.customerJoinDate)

-- How many tours they take customers on 

SELECT    
 	a.agentFirstName, DATEPART(YEAR, t.tourDate) [Year], COUNT(*) [num_of_tours]
FROM 
	tours t 
JOIN 
	dim_agents a ON a.agentId = t.agentId
GROUP BY 
	a.agentFirstName, DATEPART(YEAR, t.tourDate)
	
	
-- How many listing contracts they sign with customers 
SELECT 
	a.agentFirstName, DATEPART(YEAR,f.listDate) [list_year], count(*) [num_of_listings]
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agentId = f.agentId
WHERE  
	dealType = 'sale' and isCurrentIndicator = 1
GROUP BY 
	a.agentFirstName, DATEPART(YEAR,f.listDate)


-- How many deals they complete with customers selling homes
SELECT 
	a.agentFirstName, DATEPART(YEAR,f.effectiveDate) [sale_year], count(*) as [num_sale_deals]
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agentId = f.agentId
WHERE  
	f.[status] = 'sold' and dealType = 'sale'  and isCurrentIndicator = 1
GROUP BY 
	a.agentFirstName, DATEPART(YEAR,f.effectiveDate)



-- How many deals they complete with customers buying homes
SELECT f.agentId, DATEPART(YEAR,f.effectiveDate) [purchase_year], count(*) as [num_buy_deals]
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agentId = f.agentId
WHERE  
	f.[status] = 'sold'  and dealType = 'purchase' and isCurrentIndicator = 1 
GROUP BY 
	f.agentId, DATEPART(YEAR,f.effectiveDate)
