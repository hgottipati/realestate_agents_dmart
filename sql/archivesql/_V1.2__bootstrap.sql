-- customers

insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('glenn','kelman','gkelman@rdfn.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('elon','musk','emusk@tsla.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('mark','zuck', 'mzuk@fb.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('sundar','pichai','spichai@goog.com')
insert into red_test..dim_customers (custfirstname, custlastname, custemailid) values ('larry','page','lpage@goog.com')
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

insert into red_test..dim_properties (propertyNo, [style], address, city, postcode, [state])  VALUES
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #658-2733 Pede, Rd.','Sterling Heights','15597','MI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','3144 Varius. St.','Augusta','42283','GA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #991-793 Egestas Avenue','Billings','12730','MT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','6930 Volutpat. Street','Reno','12628','NV'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','P.O. Box 197, 6455 Mollis. Rd.','Detroit','47082','MI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','3657 Ligula. Street','Pocatello','67741','ID'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','1477 Lorem. Rd.','Metairie','70093','LA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','P.O. Box 995, 1319 Augue Ave','Madison','68801','WI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','3275 Et, Rd.','Georgia','39006','GA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','P.O. Box 772, 5525 Risus. Ave','Gary','62917','IN'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','3616 Et Ave','Kearney','32271','NE'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #999-1672 Velit. Avenue','Racine','62113','WI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','9365 Lorem Ave','Portland','58451','ME'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #316-143 Mi Road','Kansas City','86514','KS'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','P.O. Box 559, 3586 Non Ave','Frankfort','13372','KY'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','P.O. Box 788, 104 Odio Road','Great Falls','20116','MT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','494-7368 Id, Road','Phoenix','85149','AZ'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #251-4850 Sit Road','Savannah','40982','GA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','116-2218 Lorem, Rd.','Vancouver','13728','WA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','P.O. Box 278, 5431 Lorem Av.','Aurora','62198','IL'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','6818 Duis St.','Rochester','83809','MN'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','P.O. Box 505, 5475 Conubia Street','Clarksville','44023','TN'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','399-7024 Eget Av.','Los Angeles','90177','CA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','1803 Consequat St.','Gresham','95340','OR'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','2735 Luctus St.','Hilo','96742','HI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','5079 Ultricies Avenue','Reading','20091','PA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','593-4910 Nec, Rd.','Tucson','86350','AZ'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','Ap #276-5671 Nec Street','Clarksville','66930','TN'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','Ap #615-1711 Morbi Rd.','Cambridge','50774','MA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','1987 Venenatis Ave','Green Bay','47621','WI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','P.O. Box 175, 9184 Sed Ave','Lewiston','68803','ME'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','Ap #423-8334 Neque Street','Montgomery','36215','AL'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','Ap #258-1502 Nibh. St.','Gary','88593','IN'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','2873 Feugiat Rd.','Lafayette','80814','LA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','8495 Ullamcorper. St.','Baton Rouge','81664','LA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','3448 Mi, Street','Hilo','12086','HI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','8478 Eleifend Road','Hillsboro','24652','OR'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','Ap #434-3289 Varius Road','Sioux City','27443','IA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','Ap #521-7041 Vel St.','South Bend','30014','IN'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','2679 Donec St.','San Francisco','96414','CA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','P.O. Box 800, 4200 Nunc St.','South Burlington','66189','VT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','P.O. Box 388, 9973 Aliquam Street','Kaneohe','47387','HI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','459 Sed St.','Fayetteville','72422','AR'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','Ap #235-3133 Quam Avenue','Paradise','21642','NV'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','2799 Feugiat Rd.','Bellevue','59074','WA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','6351 Urna Av.','Phoenix','86463','AZ'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','P.O. Box 480, 3089 Volutpat St.','Richmond','54960','VA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'home','P.O. Box 815, 7260 Lectus Av.','Waterbury','18190','CT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #245-8728 Venenatis Rd.','Davenport','56501','IA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','5812 Cras Avenue','Tacoma','52069','WA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','7394 Proin Rd.','Allentown','42293','PA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','4794 Vivamus Rd.','Birmingham','36448','AL'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #841-4995 Nullam Road','Southaven','36933','MS'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','1191 Et Av.','Stamford','99346','CT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','359-4602 Lacinia Rd.','West Valley City','48282','UT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','4351 Faucibus St.','Oklahoma City','62496','OK'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','8544 Nec, St.','Topeka','83665','KS'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','7920 Sit St.','Boise','45352','ID'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #286-1321 Ullamcorper. Rd.','San Francisco','96832','CA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','2854 Consequat Rd.','South Burlington','48996','VT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #215-3790 Fusce St.','Denver','51444','CO'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','501-4073 Arcu. Av.','Grand Rapids','71452','MI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #923-8071 Non Rd.','Olympia','88305','WA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #879-5901 Adipiscing. Ave','Savannah','13856','GA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','6770 Et, St.','Gillette','68232','WY'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','5915 Habitant Avenue','Lowell','53355','MA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','P.O. Box 548, 2196 Id, Rd.','Grand Island','49871','NE'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','P.O. Box 282, 4326 Maecenas Rd.','Davenport','32996','IA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','505-2427 Cum Rd.','Baltimore','54616','MD'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','705-9670 Neque St.','Salem','31032','OR'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','P.O. Box 706, 6384 Interdum Avenue','Mobile','36390','AL'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #354-7713 Dapibus Road','Provo','25598','UT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #814-6436 Eu Avenue','Montgomery','35221','AL'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #232-1427 Eu Rd.','Pike Creek','61028','DE'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','P.O. Box 241, 225 Donec St.','Racine','21852','WI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','5365 Lobortis Ave','Grand Rapids','60600','MI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','928-1556 Aenean St.','Huntsville','36009','AL'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','402-3368 Eu Rd.','Lafayette','58012','LA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','2243 Sit St.','Nampa','63724','ID'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','P.O. Box 910, 1565 Ligula. Street','Rock Springs','92880','WY'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #152-9526 Rutrum Avenue','Fairbanks','99927','AK'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #576-4773 In Av.','Omaha','61116','NE'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','558-5017 Tellus. St.','New Orleans','31190','LA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','623-1288 Erat Av.','Butte','36000','MT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #326-7069 Sollicitudin Rd.','Augusta','25719','ME'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','595 Ligula. Street','North Las Vegas','54224','NV'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','4725 Ac Ave','Spokane','67855','WA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #186-4234 Sem St.','Oklahoma City','20151','OK'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','P.O. Box 957, 6955 Gravida Av.','Hartford','19805','CT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','P.O. Box 161, 1707 Taciti Rd.','Grand Island','56051','NE'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','4464 Purus, Avenue','Broken Arrow','36864','OK'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #318-7840 Vitae, Ave','Mesa','86623','AZ'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','1944 Eu, St.','Harrisburg','82410','PA'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','Ap #199-8090 Curabitur Avenue','Southaven','64690','MS'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','P.O. Box 841, 4541 Tristique St.','Hilo','92105','HI'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'condo','799-1984 Libero. Ave','Anchorage','99984','AK'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','Ap #840-5459 Tristique St.','Helena','85459','MT'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','P.O. Box 266, 8332 Imperdiet St.','Nashville','26416','TN'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','170-4504 Donec Av.','Anchorage','99921','AK'),
((select abs(cast(cast(newid() as varbinary) as int))/10000),'townhome','321-6360 Morbi Street','Tampa','71238','FL');


-- tours

-- DBCC CHECKIDENT ('dim_tours', RESEED, 0); 
/* */
insert into dim_tours values (getdate()-2)
insert into dim_tours values (getdate()-2)
insert into dim_tours values (getdate()-1)
insert into dim_tours values (getdate())

insert into dim_listings (getdate()-10,'250000')
insert into dim_listings (getdate()-9,'350000')
insert into dim_listings (getdate()-8,'450000')


-- MLS_Master
insert into MLS_Master values (30, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (31, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (34, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (35, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (30, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (31, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (34, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (35, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (30, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (31, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (74, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (75, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (70, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (71, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (72, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (74, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (75, (select abs(cast(cast(newid() as varbinary) as int))/10000))

insert into MLS_Master values (30, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (31, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (32, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (34, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (75, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (70, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (81, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (84, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (85, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (80, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (81, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (84, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (85, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (80, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (81, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (84, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (85, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (80, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (81, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (82, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (24, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (25, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (20, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (21, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (24, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (29, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (29, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (21, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (23, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (24, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (25, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (20, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (21, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (22, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (24, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (25, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (90, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (91, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (94, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (95, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (90, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (91, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (94, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (99, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (99, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (91, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (93, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (94, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (95, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (90, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (91, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (92, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (94, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (95, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (40, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (41, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (42, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (42, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (42, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (42, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (44, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (55, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (60, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (61, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (62, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (62, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (62, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (62, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (64, (select abs(cast(cast(newid() as varbinary) as int))/10000))
insert into MLS_Master values (65, (select abs(cast(cast(newid() as varbinary) as int))/10000))


