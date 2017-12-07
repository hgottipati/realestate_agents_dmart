create table agents
(	agentid int IDENTITY(1,1) primary key,
	agentfname varchar(40) not null,
	agentlname varchar(40) not null
)

create table customers
(
	custid int IDENTITY(1,1) primary key,
	custfname varchar(40) not null,
	custlname varchar(40) not null,
	custphone varchar(50) not null,
	custemailid varchar(60) not null,
	custjoindt datetime default getdate()
)

create table tours
(	
	tourid int IDENTITY(1,1) primary key,
	tourdt datetime default getdate()
)

create table agentdeals
(
	agentid int,
	custid int,
	tourid int,
	propertyid int,
	listid int,
	purchaseid int,
	
)

ALTER TABLE agentdeals ADD FOREIGN KEY (agentid )		REFERENCES  agents		(agentid)
ALTER TABLE agentdeals ADD FOREIGN KEY (custid )		REFERENCES  customers	(custid)
ALTER TABLE agentdeals ADD FOREIGN KEY (tourid )		REFERENCES  tours		(tourid)
ALTER TABLE agentdeals ADD FOREIGN KEY (propertyid )	REFERENCES  properties	(propertyid)
ALTER TABLE agentdeals ADD FOREIGN KEY (listid )		REFERENCES  listings    (listid)
ALTER TABLE agentdeals ADD FOREIGN KEY (purchaseid )    REFERENCES  sales		(purchaseid)



create table properties
(
	propertyid int IDENTITY (1,1) PRIMARY KEY,
	propertyNo int,
	type varchar (20),
	address1 varchar (20),
	address2 varchar (20),
	city varchar (30),
	postcode varchar(10),
	state char(2),
	country varchar(40)

)

