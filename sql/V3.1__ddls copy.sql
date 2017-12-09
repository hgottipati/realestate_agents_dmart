IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_agents')
create table  dim_agents
(	agentid int IDENTITY(1,1) primary key,
	agentfirstname varchar(40) not null,
	agentlastname varchar(40) not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_customers')
create table dim_customers
(
	customerId int IDENTITY(1,1) primary key,
	assignedAgentId int,
	customerFirstname varchar(40) not null,
	customerLastname varchar(40) not null,
	customerPhone varchar(50)  null,
	customerEmailId varchar(60) not null unique,
	customerJoinDate datetime default getdate(),
)

ALTER TABLE dim_customers ADD FOREIGN KEY (assignedAgentId )		REFERENCES  dim_agents (agentid)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_tours')
create table dim_tours
(	
	tourId int IDENTITY(1,1) primary key,
	mlsNo int not null,
	customerId int not null,
	agentId int not null,
	tourDate datetime not null,
)

ALTER TABLE dim_tours ADD FOREIGN KEY (mlsNo)		REFERENCES  dim_properties (mlsNo)
ALTER TABLE dim_tours ADD FOREIGN KEY (customerId)	REFERENCES  dim_customer (customerId)
ALTER TABLE dim_tours ADD FOREIGN KEY (agentId)		REFERENCES  dim_agents (agentId)


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_properties')
create table mlsMasterTable
(
	mlsid int identity (1,1) PRIMARY KEY,
	propertyid int,
	mlsNo int
)
ALTER TABLE mlsMaterTable ADD FOREIGN KEY (propertyID)	REFERENCES  dim_properties (propertyID)


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_properties')
create table dim_properties
(
	propertyId int identity (1,1) PRIMARY KEY,
	[style] varchar (20) not null,
	address varchar (40) not null,
	city varchar (30) not null,
	postcode varchar(10) not null,
	state char(2) not null,
	country varchar(40) default 'usa'
)
	
	
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'fact_mlsdeals')
create table fact_mlsdeals
(
	mlsdealsid int identity (1,1) primary key,
	listDate datetime not null,
    status int,
    mlsNo int,
    customerId int,
    listedPrice int,
	closePrice int,
	dealType int,
	isCurrentIndicator bit not null
	effectiveDate datetime,
	expirationDate datetime
	
)

ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (agentid )		REFERENCES  dim_agents		(agentid)
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (custid )		REFERENCES  dim_customers	(custid)
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (tourid )		REFERENCES  dim_tours		(tourid)
ALTER TABLE fact_mlsdeals  ADD FOREIGN KEY (listid )		REFERENCES  dim_listings    (listid)


-- bootstrap data

