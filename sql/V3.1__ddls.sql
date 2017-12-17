IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_agents')
create table  dim_agents
(	agent_id int IDENTITY(1,1) primary key,
	agent_firstName varchar(40) not null,
	agent_lastName varchar(40) not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_customers')
create table dim_customers
(
	customer_id int IDENTITY(1,1) primary key,
	assignedAgent_id int,
	customer_firstname varchar(40) not null,
	customer_lastname varchar(40) not null,
	customerPhone varchar(50)  null,
	customerEmail_id varchar(60) not null,
	customerJoinDate datetime default getdate(),
	isCurrentIndicator bit not null,
	effectiveDate datetime default  getdate(),
	expirationDate datetime
)

ALTER TABLE dim_customers ADD FOREIGN KEY (assignedAgent_id )		REFERENCES  dim_agents (agentid)


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_properties')
create table dim_properties
(
	property_id int identity (1,1) PRIMARY KEY,
	[style] varchar (20) not null,
	address varchar (40) not null,
	city varchar (30) not null,
	postcode varchar(10) not null,
	[state] char(2) not null,
	country varchar(40) default 'usa'
)
	

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'MLS_Master')
create table MLS_Master
(
	mlsid int identity (1,1) PRIMARY KEY,
	property_id int,
	mlsNo int
)
ALTER TABLE MLS_Master ADD FOREIGN KEY (propertyID)	REFERENCES  dim_properties (propertyID)


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'tours')
create table tours
(	
	tour_id int IDENTITY(1,1) primary key,
	mls_id int not null,
	customer_id int not null,
	agent_id int not null,
	tourDate datetime not null
)

ALTER TABLE tours ADD FOREIGN KEY (mlsid)		REFERENCES  MLS_Master (mlsid)
ALTER TABLE tours ADD FOREIGN KEY (customer_id)	REFERENCES  dim_customers (customer_id)
ALTER TABLE tours ADD FOREIGN KEY (agent_id)		REFERENCES  dim_agents (agent_id)
	
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'fact_mlsdeals')
create table fact_mlsdeals
(
	mlsDeal_id int identity (1,1) primary key,
    mls_id int,
    customer_id int,
	agent_id int,
	status varchar (20),
    dealType varchar(20),
	listDate datetime not null,
    listPrice int,
	closePrice int,
	isCurrentIndicator bit not null,
	effectiveDate datetime,
	expirationDate datetime
	
)

ALTER TABLE fact_mlsdeals  ADD CONSTRAINT check_sale_type CHECK (dealType IN ('Sale', 'Purchase'));
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (agentID )		REFERENCES  dim_agents		(agentID)
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (customerID )		REFERENCES  dim_customers	(customerID)
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (mlsID )		REFERENCES  MLS_Master	(mlsID)



-- bootstrap data

