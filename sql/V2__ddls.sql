IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'agents')
create table  agents
(	agentid int IDENTITY(1,1) primary key,
	agentfname varchar(40) not null,
	agentlname varchar(40) not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'customers')
create table customers
(
	custid int IDENTITY(1,1) primary key,
	custfname varchar(40) not null,
	custlname varchar(40) not null,
	custphone varchar(50) not null,
	custemailid varchar(60) not null,
	custjoindt datetime default getdate()
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'tours')
create table tours
(	
	tourid int IDENTITY(1,1) primary key,
	tourdt datetime default getdate()
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'agentdeals')
create table agentdeals
(
	agentid int primary key,
	custid int ,
	tourid int,
	propertyid int,
	listid int,
	purchaseid int,
	
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'properties')
create table properties
(
	propertyid int identity (1,1) PRIMARY KEY,
	propertyNo int,
	type varchar (20),
	address1 varchar (20),
	address2 varchar (20),
	city varchar (30),
	postcode varchar(10),
	state char(2),
	country varchar(40)

)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'listings')
create table listings
(
	listid int identity (1,1) primary key,
	listdt datetime2 ,
	listprice int,
	delistdt datetime2
)


ALTER TABLE agentdeals ADD FOREIGN KEY (agentid )		REFERENCES  agents		(agentid)
ALTER TABLE agentdeals ADD FOREIGN KEY (custid )		REFERENCES  customers	(custid)
ALTER TABLE agentdeals ADD FOREIGN KEY (tourid )		REFERENCES  tours		(tourid)
ALTER TABLE agentdeals ADD FOREIGN KEY (propertyid )	REFERENCES  properties	(propertyid)
-- ALTER TABLE agentdeals ADD FOREIGN KEY (listid )		REFERENCES  listings    (listid)
-- ALTER TABLE agentdeals ADD FOREIGN KEY (purchaseid )    REFERENCES  sales		(purchaseid)



