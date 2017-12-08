IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'agents')
create table  agents
(	agentid int IDENTITY(1,1) primary key,
	agentfirstname varchar(40) not null,
	agentlastname varchar(40) not null
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'customers')
create table customers
(
	custid int IDENTITY(1,1) primary key,
	custfirstname varchar(40) not null,
	custlastname varchar(40) not null,
	custphone varchar(50)  null,
	custemailid varchar(60) not null,
	custjoindate datetime default getdate()
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'tours')
create table tours
(	
	tourid int IDENTITY(1,1) primary key,
	tourdate datetime default getdate()
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'properties')
create table properties
(
	propertyid int identity (1,1) PRIMARY KEY,
	propertyNo int,
	style varchar (20),
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
	listdate datetime2
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'buying')
create table buying
(
	purchaseid int identity (1,1) primary key,
	purchasedate datetime2
)

IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'selling')
create table selling
(
	saleid int identity (1,1) primary key,
	saledate datetime2
)


IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES  WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'agentdeals')
create table agentdeals
(
	factid int identity (1,1)
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


ALTER TABLE agentdeals ADD FOREIGN KEY (agentid )		REFERENCES  agents		(agentid)
ALTER TABLE agentdeals ADD FOREIGN KEY (custid )		REFERENCES  customers	(custid)
ALTER TABLE agentdeals ADD FOREIGN KEY (tourid )		REFERENCES  tours		(tourid)
ALTER TABLE agentdeals ADD FOREIGN KEY (listid )		REFERENCES  listings    (listid)
ALTER TABLE agentdeals ADD FOREIGN KEY (propertyid )	REFERENCES  properties	(propertyid)
ALTER TABLE agentdeals ADD FOREIGN KEY (purchaseid )    REFERENCES  buying		(purchaseid)
ALTER TABLE agentdeals ADD FOREIGN KEY (saleid )		REFERENCES  selling	  	(saleid)




