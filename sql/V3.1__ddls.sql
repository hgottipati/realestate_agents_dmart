IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_agents')
create table  dim_agents
(	agentId int IDENTITY(1,1) primary key,
	agentFirstName varchar(40) not null,
	agentLastName varchar(40) not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_customers')
create table dim_customers
(
	customerId int IDENTITY(1,1) primary key,
	assignedAgentId int,
	customerFirstname varchar(40) not null,
	customerLastname varchar(40) not null,
	customerPhone varchar(50)  null,
	customerEmailId varchar(60) not null,
	customerJoinDate datetime default getdate(),
	isCurrentIndicator bit not null,
	effectiveDate datetime default  getdate(),
	expirationDate datetime
)


ALTER TABLE dim_customers ADD FOREIGN KEY (assignedAgentId )		REFERENCES  dim_agents (agentid)


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_properties')
create table dim_properties
(
	propertyId int identity (1,1) PRIMARY KEY,
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
	propertyId int,
	mlsNo int
)
ALTER TABLE MLS_Master ADD FOREIGN KEY (propertyID)	REFERENCES  dim_properties (propertyID)


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'tours')
create table tours
(	
	tourId int IDENTITY(1,1) primary key,
	mlsId int not null,
	customerId int not null,
	agentId int not null,
	tourDate datetime not null
)

ALTER TABLE tours ADD FOREIGN KEY (mlsid)		REFERENCES  MLS_Master (mlsid)
ALTER TABLE tours ADD FOREIGN KEY (customerId)	REFERENCES  dim_customers (customerId)
ALTER TABLE tours ADD FOREIGN KEY (agentId)		REFERENCES  dim_agents (agentId)
	
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'fact_mlsdeals')
create table fact_mlsdeals
(
	mlsDealId int identity (1,1) primary key,
	listDate datetime not null,
    status varchar (20),
    mlsId int,
    customerId int,
	agentId int,
    listedPrice int,
	closePrice int,
	dealType varchar(20),
	isCurrentIndicator bit not null,
	effectiveDate datetime,
	expirationDate datetime
	
)

ALTER TABLE fact_mlsdeals  ADD CONSTRAINT check_sale_type CHECK (dealType IN ('Sale', 'Purchase'));
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (agentID )		REFERENCES  dim_agents		(agentID)
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (customerID )		REFERENCES  dim_customers	(customerID)
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (mlsID )		REFERENCES  MLS_Master	(mlsID)



-- bootstrap data

