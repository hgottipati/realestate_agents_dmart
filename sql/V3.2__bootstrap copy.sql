-- customers

insert into red_test..dim_customers (custfirstname, custlastname, assignedAgentId, custemailid) values ('glenn','kelman',2,'gkelman@rdfn.com')
insert into red_test..dim_customers (custfirstname, custlastname, assignedAgentId, custemailid) values ('elon','musk',3,'emusk@tsla.com')
insert into red_test..dim_customers (custfirstname, custlastname, assignedAgentId, custemailid) values ('mark','zuck',4 'mzuk@fb.com')
insert into red_test..dim_customers (custfirstname, custlastname, assignedAgentId, custemailid) values ('sundar','pichai',5,'spichai@goog.com')
insert into red_test..dim_customers (custfirstname, custlastname, assignedAgentId, custemailid) values ('larry','page',5,'lpage@goog.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('tim','cook','tcook@appl.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('satya','nadella','snadella@msft.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('geff','bezos', 'gbezos@amzn.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('larry','ellison', 'lellison@orcl.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('bob','iger', 'biger@dis.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('jack','ma', 'jma@baba.com')



-- agents

insert into red_test..dim_agents values ('agent1','al1')
insert into red_test..dim_agents values ('agent2','al2')
insert into red_test..dim_agents values ('agent3','al3')
insert into red_test..dim_agents values ('agent4','al4')
insert into red_test..dim_agents values ('agent5','al5')
insert into red_test..dim_agents values ('agent6','al6')
insert into red_test..dim_agents values ('agent7','al7')
insert into red_test..dim_agents values ('agent8','al8')
insert into red_test..dim_agents values ('agent9','al9')
insert into red_test..dim_agents values ('agent10','al10')
insert into red_test..dim_agents values ('agent11','al11')
insert into red_test..dim_agents values ('agent12','al12')


--- properties


insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #658-2733 Pede, Rd.','Sterling Heights','15597','MI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','3144 Varius. St.','Augusta','42283','GA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #991-793 Egestas Avenue','Billings','12730','MT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','6930 Volutpat. Street','Reno','12628','NV'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','P.O. Box 197, 6455 Mollis. Rd.','Detroit','47082','MI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','3657 Ligula. Street','Pocatello','67741','ID'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','1477 Lorem. Rd.','Metairie','70093','LA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','P.O. Box 995, 1319 Augue Ave','Madison','68801','WI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','3275 Et, Rd.','Georgia','39006','GA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','P.O. Box 772, 5525 Risus. Ave','Gary','62917','IN'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','3616 Et Ave','Kearney','32271','NE'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #999-1672 Velit. Avenue','Racine','62113','WI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','9365 Lorem Ave','Portland','58451','ME'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #316-143 Mi Road','Kansas City','86514','KS'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','P.O. Box 559, 3586 Non Ave','Frankfort','13372','KY'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','P.O. Box 788, 104 Odio Road','Great Falls','20116','MT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','494-7368 Id, Road','Phoenix','85149','AZ'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #251-4850 Sit Road','Savannah','40982','GA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','116-2218 Lorem, Rd.','Vancouver','13728','WA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','P.O. Box 278, 5431 Lorem Av.','Aurora','62198','IL'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','6818 Duis St.','Rochester','83809','MN'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','P.O. Box 505, 5475 Conubia Street','Clarksville','44023','TN'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','399-7024 Eget Av.','Los Angeles','90177','CA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','1803 Consequat St.','Gresham','95340','OR'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','2735 Luctus St.','Hilo','96742','HI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','5079 Ultricies Avenue','Reading','20091','PA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','593-4910 Nec, Rd.','Tucson','86350','AZ'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','Ap #276-5671 Nec Street','Clarksville','66930','TN'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','Ap #615-1711 Morbi Rd.','Cambridge','50774','MA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','1987 Venenatis Ave','Green Bay','47621','WI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','P.O. Box 175, 9184 Sed Ave','Lewiston','68803','ME'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','Ap #423-8334 Neque Street','Montgomery','36215','AL'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','Ap #258-1502 Nibh. St.','Gary','88593','IN'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','2873 Feugiat Rd.','Lafayette','80814','LA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','8495 Ullamcorper. St.','Baton Rouge','81664','LA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','3448 Mi, Street','Hilo','12086','HI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','8478 Eleifend Road','Hillsboro','24652','OR'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','Ap #434-3289 Varius Road','Sioux City','27443','IA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','Ap #521-7041 Vel St.','South Bend','30014','IN'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','2679 Donec St.','San Francisco','96414','CA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','P.O. Box 800, 4200 Nunc St.','South Burlington','66189','VT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','P.O. Box 388, 9973 Aliquam Street','Kaneohe','47387','HI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','459 Sed St.','Fayetteville','72422','AR'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','Ap #235-3133 Quam Avenue','Paradise','21642','NV'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','2799 Feugiat Rd.','Bellevue','59074','WA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','6351 Urna Av.','Phoenix','86463','AZ'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','P.O. Box 480, 3089 Volutpat St.','Richmond','54960','VA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('home','P.O. Box 815, 7260 Lectus Av.','Waterbury','18190','CT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #245-8728 Venenatis Rd.','Davenport','56501','IA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','5812 Cras Avenue','Tacoma','52069','WA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','7394 Proin Rd.','Allentown','42293','PA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','4794 Vivamus Rd.','Birmingham','36448','AL'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #841-4995 Nullam Road','Southaven','36933','MS'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','1191 Et Av.','Stamford','99346','CT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','359-4602 Lacinia Rd.','West Valley City','48282','UT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','4351 Faucibus St.','Oklahoma City','62496','OK'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','8544 Nec, St.','Topeka','83665','KS'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','7920 Sit St.','Boise','45352','ID'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #286-1321 Ullamcorper. Rd.','San Francisco','96832','CA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','2854 Consequat Rd.','South Burlington','48996','VT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #215-3790 Fusce St.','Denver','51444','CO'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','501-4073 Arcu. Av.','Grand Rapids','71452','MI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #923-8071 Non Rd.','Olympia','88305','WA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #879-5901 Adipiscing. Ave','Savannah','13856','GA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','6770 Et, St.','Gillette','68232','WY'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','5915 Habitant Avenue','Lowell','53355','MA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','P.O. Box 548, 2196 Id, Rd.','Grand Island','49871','NE'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','P.O. Box 282, 4326 Maecenas Rd.','Davenport','32996','IA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','505-2427 Cum Rd.','Baltimore','54616','MD'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','705-9670 Neque St.','Salem','31032','OR'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','P.O. Box 706, 6384 Interdum Avenue','Mobile','36390','AL'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #354-7713 Dapibus Road','Provo','25598','UT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #814-6436 Eu Avenue','Montgomery','35221','AL'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #232-1427 Eu Rd.','Pike Creek','61028','DE'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','P.O. Box 241, 225 Donec St.','Racine','21852','WI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','5365 Lobortis Ave','Grand Rapids','60600','MI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','928-1556 Aenean St.','Huntsville','36009','AL'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','402-3368 Eu Rd.','Lafayette','58012','LA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','2243 Sit St.','Nampa','63724','ID'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','P.O. Box 910, 1565 Ligula. Street','Rock Springs','92880','WY'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #152-9526 Rutrum Avenue','Fairbanks','99927','AK'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #576-4773 In Av.','Omaha','61116','NE'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','558-5017 Tellus. St.','New Orleans','31190','LA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','623-1288 Erat Av.','Butte','36000','MT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #326-7069 Sollicitudin Rd.','Augusta','25719','ME'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','595 Ligula. Street','North Las Vegas','54224','NV'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','4725 Ac Ave','Spokane','67855','WA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #186-4234 Sem St.','Oklahoma City','20151','OK'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','P.O. Box 957, 6955 Gravida Av.','Hartford','19805','CT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','P.O. Box 161, 1707 Taciti Rd.','Grand Island','56051','NE'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','4464 Purus, Avenue','Broken Arrow','36864','OK'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #318-7840 Vitae, Ave','Mesa','86623','AZ'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','1944 Eu, St.','Harrisburg','82410','PA'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','Ap #199-8090 Curabitur Avenue','Southaven','64690','MS'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','P.O. Box 841, 4541 Tristique St.','Hilo','92105','HI'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('condo','799-1984 Libero. Ave','Anchorage','99984','AK'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','Ap #840-5459 Tristique St.','Helena','85459','MT'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','P.O. Box 266, 8332 Imperdiet St.','Nashville','26416','TN'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','170-4504 Donec Av.','Anchorage','99921','AK'),
insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES ('townhome','321-6360 Morbi Street','Tampa','71238','FL');


-- tours

-- DBCC CHECKIDENT ('dim_tours', RESEED, 0); 
/* 
insert into dim_tours values (getdate()-2)
insert into dim_tours values (getdate()-2)
insert into dim_tours values (getdate()-1)
insert into dim_tours values (getdate())

insert into dim_listings (getdate()-10,'250000')
insert into dim_listings (getdate()-9,'350000')
insert into dim_listings (getdate()-8,'450000')
*/

