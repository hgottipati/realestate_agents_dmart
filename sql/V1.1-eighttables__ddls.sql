IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_agents')
create table  dim_agents
(	agentid int IDENTITY(1,1) primary key,
	agentfirstname varchar(40) not null,
	agentlastname varchar(40) not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_customers')
create table dim_customers
(
	custid int IDENTITY(1,1) primary key,
	custfirstname varchar(40) not null,
	custlastname varchar(40) not null,
	custphone varchar(50)  null,
	custemailid varchar(60) not null unique,
	custjoindate datetime default getdate()
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_tours')
create table dim_tours
(	
	tourid int IDENTITY(1,1) primary key,
	tourdate datetime not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_properties')
create table dim_properties
(
	propertyid int identity (1,1) PRIMARY KEY,
	propertyNo int,
	style varchar (20) not null,
	address varchar (40) not null,
	city varchar (30) not null,
	postcode varchar(10) not null,
	state char(2) not null,
	country varchar(40) default 'usa'
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_listings')
create table dim_listings
(
	listid int identity (1,1) primary key,
	listdate datetime2 not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_buying')
create table dim_buying
(
	purchaseid int identity (1,1) primary key,
	purchasedate datetime2 not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'dim_selling')
create table dim_selling
(
	saleid int identity (1,1) primary key,
	saledate datetime2 not null
) 


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'fact_agentdeals')
create table fact_agentdeals
(
	factid int identity (1,1) primary key,
	agentid int,
	custid int,
	tourid int,
	listid int,
	propertyid int,
	purchaseid int,
	saleid int,
	purchaseprice int,
	listprice int,
	saleprice int
)


ALTER TABLE fact_agentdeals ADD FOREIGN KEY (agentid )		REFERENCES  dim_agents		(agentid)
ALTER TABLE fact_agentdeals ADD FOREIGN KEY (custid )		REFERENCES  dim_customers	(custid)
ALTER TABLE fact_agentdeals ADD FOREIGN KEY (tourid )		REFERENCES  dim_tours		(tourid)
ALTER TABLE fact_agentdeals ADD FOREIGN KEY (listid )		REFERENCES  dim_listings    (listid)
ALTER TABLE fact_agentdeals ADD FOREIGN KEY (propertyid )	REFERENCES  dim_properties	(propertyid)
ALTER TABLE fact_agentdeals ADD FOREIGN KEY (purchaseid )    REFERENCES  dim_buying		(purchaseid)
ALTER TABLE fact_agentdeals ADD FOREIGN KEY (saleid )		REFERENCES  dim_selling	  	(saleid)

-- bootstrap data

