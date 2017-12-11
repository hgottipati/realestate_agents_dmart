
-- assignments 

SELECT 
	a.agentFirstName, 
	DATEPART(YEAR,c.customerJoinDate) [Year],
	COUNT(*) CustomersAssigned
FROM 
	dim_customers c
JOIN 
	dim_agents a ON a.agentid = c.assignedagentid
WHERE 
	c.assignedAgentId IS NOT NULL
		and isCurrentIndicator = 1
GROUP BY 
	a.agentFirstName,DATEPART(YEAR,c.customerJoinDate)

-- tours

SELECT    
 	a.agentFirstName, 
 	DATEPART(YEAR, t.tourDate) [Year], 
 	COUNT(*) Num_of_Tours

FROM tours t 
JOIN 
	dim_agents a ON a.agentId = t.agentId
GROUP BY 
	a.agentFirstName, 
	DATEPART(YEAR, t.tourDate)
	
	
-- listed
SELECT f.agentId
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agentId = f.agentId
WHERE  dealType = 'sale' and isCurrentIndicator = 1
GROUP BY 
	f.agentId,
	DATEPART(YEAR,f.listDate)


-- sales
SELECT f.agentId
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agentId = f.agentId
WHERE  f.status = 'sold' 
	and dealType = 'sale' 
		and isCurrentIndicator = 1
GROUP BY 
	f.agentId,
	DATEPART(YEAR,f.effectiveDate)


-- purchases
SELECT f.agentId
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agentId = f.agentId
WHERE  f.status = 'sold' 
		and dealType = 'buy' 
			and isCurrentIndicator = 1 
GROUP BY 
	f.agentId,
	DATEPART(YEAR,f.effectiveDate)
