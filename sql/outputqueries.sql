
-- How many customers they get assigned 


SELECT 
	a.agent_id, DATEPART(YEAR,c.customer_join_date) [Year], count(*) customers_assigned
FROM 
	dim_customers c
JOIN 
	dim_agents a ON a.agentid = c.assignedagentid
WHERE 
	c.assignedAgent_id IS NOT NULL and c.is_current_indicator = 1
GROUP BY 
	a.agent_id,DATEPART(YEAR,c.customer_join_date)


-- How many tours they take customers on 

SELECT    
 	a.agent_id, DATEPART(YEAR, t.tour_date) [Year], count(*) num_of_tours
FROM 
	tours t 
JOIN 
	dim_agents a ON a.agent_id = t.agent_id
GROUP BY 
	a.agent_id, DATEPART(YEAR, t.tour_date)
	
	
-- How many listing contracts they sign with customers 

SELECT 
	a.agent_id, DATEPART(YEAR,f.list_date) list_year, count(*) num_of_listings
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agent_id = f.agent_id
WHERE  
	dealType = 'sale' and f.is_current_indicator = 1
GROUP BY 
	a.agent_id, DATEPART(YEAR,f.list_date)


-- How many deals they complete with customers selling homes

SELECT 
	a.agent_id, DATEPART(YEAR,f.effective_date) sale_year, count(*) as num_sale_deals
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agent_id = f.agent_id
WHERE  
	f.[status] = 'sold' and deal_type = 'sale'  and f.is_current_indicator = 1
GROUP BY 
	a.agent_id, DATEPART(YEAR,f.effective_date)


-- How many deals they complete with customers buying homes

SELECT 
	f.agent_id, DATEPART(YEAR,f.effective_date) purchase_year, count(*) as num_buy_deals
FROM 
	fact_mlsdeals f
JOIN 
	dim_agents a ON a.agent_id = f.agent_id
WHERE  
	f.[status] = 'sold'  and deal_type = 'purchase' and f.is_current_indicator = 1 
GROUP BY 
	f.agent_id, DATEPART(YEAR,f.effective_date)
