/* Q1. DATABASE setup */
-- Table Creation
-- Sales_person table creation
CREATE TABLE SALES_PERSON(
salesID NUMBER(10) NOT NULL,
Fname NVARCHAR2(30),
Lname NVARCHAR2(30),
tel_no VARCHAR(15),
emailID NVARCHAR2(30), 
address NVARCHAR2(50), 
CONSTRAINT SALES_PERSON_PK PRIMARY KEY (salesID));


-- Inserting data into the sales_person table
BEGIN
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Ollie','Suarez','0871234332', 'ollie_suarez@mycomp.com', '32 Belfield, Dublin 4, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Sandra','Marie','0871234554', 'sandra_marie@mycomp.com', '36 Stillorgan, Dublin 4, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Eoin','McBeth','0871190552', 'eoin_mcbeth@mycomp.com', '14 Donnybrook, Dublin 4, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Andrew','Slaymaker','0831494554', 'andrew_slaymaker@mycomp.com', ' 36 Emmet Road, Dublin 8, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Joan','Hodge','0891494674', 'joan_hodge@mycomp.com', '36 Oconnel st, Dublin 2, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Martin','Oneill','0821234678', 'martin_oneill@mycomp.com', '36 Pembroke Rd, Dublin 3, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Henry','Cavil','0831234567', 'henry_cavil@mycomp.com', '5 Baggott st, Dublin 3, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Maria','Heart','0821235438', 'maria_heart@mycomp.com', '8 Grafton st, Dublin 2, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Jon','Gil','0854367812', 'jon_gil@mycomp.com', '17 Essex st, Dublin 5, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Frank','Ohara','0854567832', 'frank_ohara@mycomp.com', '56 Sussex st, Dublin 7, Ireland');
INSERT INTO SALES_PERSON (Fname, Lname, tel_no, emailID, address) VALUES ('Jill','Hart','0834356217', 'jill_hart@mycomp.com', '23 Avon st, Dublin 11, Ireland');
COMMIT;
END;
/


-- Customer table creation
CREATE TABLE CUSTOMER(
customerID NUMBER(15) NOT NULL,
caddress NVARCHAR2(50),
vatID NVARCHAR2(10) NOT NULL,
salesID NUMBER(10),
cname NVARCHAR2(30),
CONSTRAINT CUSTOMER_PK PRIMARY KEY (customerID),
CONSTRAINT CUSTOMER_FK FOREIGN KEY (salesID) REFERENCES SALES_PERSON(salesID));

-- Inserting data into CUSTOMER table
BEGIN
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('81 Sandyford, Dublin 11, Ireland', 'IE976543DA', 102,'Eriksen ltd');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('9 Sandyford, Dublin 11, Ireland', 'IE1234567GA', 101,'Michelin');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Pembroke road, Dublin 3, Ireland', 'IE8769503FE', 108,'Hewlett Packard');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Stillorgan Road, Dublin 4, Ireland', 'IE4673219CA', 108,'UCD');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Pembroke road, Dublin 3, Ireland', 'IE4563165TR', 101,'Google');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('4 Belfield, Dublin 4, Ireland', 'IE3451467FE', 107,'Marc Jacobs');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('12 Lansdowne, Dublin 2, Ireland', 'IE5671234FE', 106,'IPA');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('15 Emmet Road, Dublin 8, Ireland', 'IE1234791WE', 106,'Technologies');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('1 Oconnel Street, Dublin 2, Ireland', 'IE5128903MC', 103,'Heineken');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('10 Lansdowne, Dublin 3, Ireland', 'IE5419053DF', 106,'IRFU');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('10 Lansdowne, Dublin 3, Ireland', 'IE1269012DF', 109,'Laserprint');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('12 Tallaght road, Dublin 21, Ireland', 'IE1239041DF', 110,'Masters');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('18 Essex st, Dublin 18, Ireland', 'IE5431784PO', 109,'Adidas');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('15 Reading road, Dublin 19, Ireland', 'IE1290321DF', 106,'Oxfam');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('7 George St, Dublin 24, Ireland', 'IE1238934IL', 105,'Jameson');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('13 Lower st, Dublin 9, Ireland', 'IE1231231PL', 103,'Nikon');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('1 Lower st, Dublin 11, Ireland', 'IE4561231PL', 100,'Heirtz');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 North st, Dublin 9, Ireland', 'IE4567312PL', 100,'RDS');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('13 Lansdowne road, Dublin 4, Ireland', 'IE4563218PL', 103,'Toyota');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('18 Lower st, Dublin 9, Ireland', 'IE1231231PL', 101,'Starbucks');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('7 Charles st, Dublin 11, Ireland', 'IE4563218PL', 102,'Costa Coffee');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 George st, Dublin 12, Ireland', 'IE3456902PL', 101,'JD Sports');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('15 Ferdinand st, Dublin 16, Ireland', 'IE4567321PL', 101,'Lifestyle');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('14 Grafton st, Dublin 2, Ireland', 'IE2367821PL', 103,'Superdry');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 Grafton st, Dublin 2, Ireland', 'IE2347891PL', 104,'Zara');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('9 Henry st, Dublin 2, Ireland', 'IE4563219PL', 104,'Saburritos');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('2 Parnell st, Dublin 2, Ireland', 'IE1232189PL', 103,'Paddy Power');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('13 Parnell st, Dublin 2, Ireland', 'IE5674329PL', 103,'Boyle Sports');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('1 Summer st, Dublin 6, Ireland', 'IE4567831PL', 103,'Lidl');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('18 Parnell st, Dublin 2, Ireland', 'IE4569021PL', 104,'Aldi');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('18 Summer st, Dublin 6, Ireland', 'IE3460912PL', 104,'Tesco');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Winter st, Dublin 12, Ireland', 'IE4567321PL', 104,'Tolteca');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 Winter st, Dublin 12, Ireland', 'IE4567901PL', 104,'McDonalds');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('9 Autumn st, Dublin 6, Ireland', 'IE4567901PL', 105,'KFC');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('211 Sandyford, Dublin 11, Ireland', 'IE6790321PL', 105,'Burger King');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('19 Sandyford st, Dublin 11, Ireland', 'IE7893210PL', 105,'AirLingus');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('31 Sandyford st, Dublin 11, Ireland', 'IE8903421PL', 105,'Blue Air');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('1 Sundrive road, Dublin 8, Ireland', 'IE4378901PL', 105,'Four Star');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Sundrive road, Dublin 8, Ireland', 'IE8903278PL', 105,'McDowell');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('9 Sundrive road, Dublin 8, Ireland', 'IE9012389PL', 100,'Pepsi');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('13 Cork st, Dublin 6, Ireland', 'IE9000123PL', 100,'Coca-Cola');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Cork st, Dublin 6, Ireland', 'IE9000067PL', 106,'Irish Pride');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('33 Cork st, Dublin 6, Ireland', 'IE6764389PL', 106,'Travel Europe');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('4 Inchicore road, Dublin 8, Ireland', 'IE3344789PL', 106,'AOL');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 Inchicore road, Dublin 8, Ireland', 'IE7778889PL', 106,'Layca');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Finglas road, Dublin 5, Ireland', 'IE1211908PL', 107,'Spar');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 Finglas road, Dublin 5, Ireland', 'IE5556901PL', 107,'James.ie');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('3 Ballymun rd, Dublin 4, Ireland', 'IE1128901PL', 107,'FoxPro');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('2 Ratoath Road, Dublin 3, Ireland', 'IE1290101PL', 107,'151Store');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 Ratoath, Dublin 3, Ireland', 'IE1290155PL', 107,'Flash');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Swords rd, Dublin 5, Ireland', 'IE2390125PL', 108,'Cinemax');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('14 Swords rd, Dublin 5, Ireland', 'IE8901237PL', 108,'Fiverr');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('23 Swords rd, Dublin 5, Ireland', 'IE9081231PL', 108,'Snickers');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('3 Lorcan Ave, Dublin 5, Ireland', 'IE9081210PL', 108,'Stores');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('19 Lorcan Ave, Dublin 5, Ireland', 'IE8923902PL', 109,'John West');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 Orwell st, Dublin 7, Ireland', 'IE9012176PL', 109,'May West');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('16 Orwell st, Dublin 7, Ireland', 'IE9012138PL', 109,'Foster');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('13 Orwell st, Dublin 7, Ireland', 'IE9901221PL', 109,'Bulmers');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Liffey st, Dublin 12, Ireland', 'IE9012103PL', 110,'France Tel');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('2 Liffey st, Dublin 12, Ireland', 'IE3329017PL', 110,'Film4');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('21 Liffey st, Dublin 12, Ireland', 'IE7895410PL', 110,'Fasttrack');
INSERT INTO CUSTOMER (caddress, VATID, salesID, cname) VALUES ('8 Naas Road, Dublin 11, Ireland', 'IE8932149PL', 110,'Form4');
COMMIT;
END;
/


-- Contact person table creation
CREATE TABLE CONTACT_PERSON(
contactID NUMBER(15) NOT NULL,
customerID NUMBER(15) NOT NULL,
cname NVARCHAR2(50),
tel_no VARCHAR(15),
emailID NVARCHAR2(30), 
CONSTRAINT CONTACT_PERSON_PK PRIMARY KEY (contactID),
CONSTRAINT CONTACT_PERSON_FK FOREIGN KEY (customerID) REFERENCES CUSTOMER(customerID));


-- Inserting data into CONTACT_PERSON table
BEGIN
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (506, 'Alan Rogers', '0981232149', 'alan_rogers@erikssen.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (507, 'Fred Astaire', '0832123567', 'fred.astaire@michelin.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (508, 'Marc Ohara', '0865431789', 'marc_ohara@hp.com');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (509, 'Frank Obama', '0831256432', 'f_obama@ucd.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (510, 'Ruby Tuesday', '0831245321', 'r.tuesday@google.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (511, 'Alan Pardew', '0831256123', 'a_pardew@jacobs.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (512, 'Louise Her', '0843456765', 'l_her@ipa.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (513, 'Mary Poppins', '0831256123', 'm_poppins@tech.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (514, 'Mark James', '0831123213', 'mjames@heineken.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (515, 'Grant Mar', '0831123678', 'gmar@irfu.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (516, 'Niamh Brothar', '0835654578', 'n.brothar@laser.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (517, 'James Joyce', '0831123888', 'jjoyce@masters.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (518, 'Neil Borg', '0878787654', 'neil_borg@adidas.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (519, 'Ozzie Osbourne', '0831178787', 'ozzie@oxfam.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (511, 'Rob Power', '0838989898', 'rob_power@jacobs.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (514, 'Lizzie Eel', '0831198765', 'l.eel@heineken.ie');
INSERT INTO CONTACT_PERSON (customerID, cname, tel_no, emailID) VALUES (515, 'Mark Jacobs', '0832178901', 'm.jacobs@irfu.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (516,'Kennan Finley','0851948242','kfinley@Maurisvel.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (517,'Wyatt Nolan','0821015687','wyatt@dui.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (518,'Cody Matthews','0831500291','cmatthews@Donec.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (519,'Abbot Pierce','0884927199','est.Nunc@eusem.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (520,'Reese Kane','0871687130','rkane@nonarcu.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (521,'Evan Holmes','0834041410','evan.holmes@Maur.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (540,'Levi Avery','0804049050','mollis.lectus@pedenec.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (541,'Graiden Boyd','0852117311','erat@semperduilectus.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (542,'Micah Kirk','0864059756','lacinia.Sed@est.co.uk');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (543,'Luke Herrera','0877522254','l.herrera@moles.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (544,'Avram Lane','0847889405','avram.lane@dignis.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (545,'Rajah Buchanan','0834053451','Nunc.sed@estac.com');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (546,'Macaulay Gray','0891636259','m.gray@elite.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (547,'Moses Hodges','0835710818','mhodge@penatibus.ca');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (548,'Graham Mcgee','0880873409','egestas.blandit.Nam@semcon.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (549,'Leroy Cervantes','0819737310','lcervantes@cond.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (550,'Alexander Gamble','0830268872','info@ornar.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (551,'Castor Mccoy','0868888949','castor@nunc.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (552,'Abel Mckay','0800809520','mckay@Curabitur.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (553,'Ishmael Booker','0868558586','ibooker@ipsos.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (554,'Emmanuel Gibbs','0893836318','em.gibbs@Donec.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (555,'Oleg Mcintyre','0830343252','oleg@yahoo.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (556,'Wang Gardner','0813433036','gardner@lacusvariuset.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (557,'Deacon Ford','0873935900','ford@miAliquam.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (558,'Yoshio Hahn','0827332457','yhahn@atarc.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (559,'Forrest Shelton','0889217560','shelton@luctus.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (560,'Cedric Watkins','0837895974','cwatkins@netuset.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (561,'Keefe Beach','0896840101','vel@aliquetmetus.com');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (562,'Graiden Trevino','0874785685','dictum@sapien.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (563,'Henry Holman','0881303486','holman@Donec.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (564,'Galvin Gates','0892982855','ggates@necd.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (565,'Chaney Conway','0864784991','conway@et.co.uk');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (566,'Demetrius Campos','0883370497','campos@conseq.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (567,'Luke York','0883517644','nibh.sit@mattisvelit.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (568,'Lucian Robertson','0863596232','non@musAeneaneget.edu');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (569,'Xavier Chase','0815683484','nibh.Donec@lacus.com');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (570,'Zahir Paul','0825158381','vitae@utipsumac.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (571,'Avram Hoffman','0866712376','ahoffman@commodo.net');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (572,'Otto Bradley','0897583840','dapibus.id@a.org');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (573,'Rudyard Delgado','0832505635','nisi.nibh.lacinia@Sedeu.ca');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (574,'George Rodgers','0891513614','Duis@rutrumjusto.net');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (575,'Devin Forbes','0837688980','dforbes@ac.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (576,'Kuame Cooley','0836761487','kcooley@mysite.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (577,'Abraham Knox','0898326708','aknox@facil.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (578,'Dominic Simmons','0828005773','dsimmons@volutpat.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (579,'Seth Massey','0829697831','et.ipsum@lacus.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (580,'Josiah Murray','0829675128','jmurray@at.co.uk');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (581,'Ignatius Wright','0816989549','iwright@ataugueid.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (582,'Jameson Ferguson','0858391898','jferguson@diam.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (583,'Kirk Shaw','0865838336','kshaw@tincidunt.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (584,'Declan Lynn','0850929716','dlynn@eget.ie');
INSERT INTO CONTACT_PERSON (customerID,cname,tel_no,emailID) VALUES (585,'Julian Holloway','0883843446','jholloway@nibhvul.ie');
END;
COMMIT;
/


-- SUPPLIER table creation
CREATE TABLE SUPPLIER(
supplierID NUMBER(10) NOT NULL,
sname NVARCHAR2(30),
address NVARCHAR2(50),
scontname NVARCHAR2(30),
tel_no VARCHAR(15),
emailID NVARCHAR2(30), 
CONSTRAINT SUPPLIER_PK PRIMARY KEY (supplierID));


-- Inserting data into SUPPLIER table
BEGIN
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Hewlett Packard', '18 Stillorgan, Dublin 4','Alan Smith', '0871234321', 'alansmith@hp.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Sony', '25 Sandyford, Dublin 11','Frank Jones', '0871123989', 'h_jones@sony.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('IBM', '10 Baggot Street, Dublin 3','Orla Jackson', '0871545456', 'orla.jackson@ibm.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('HCL Technologies', '18 Blanchardstown, Dublin 9','Steve Mark', '0871243219', 'steve_mark@hcl.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Red Hat', '31 Essesx Street, Wexford','Joan Cussack', '0813456543', 'j.cusack@redhat.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Oracle', '23 George Street, Dublin 21','Teddy Smith', '0821232789', 'teddy.smith@oracle.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Ericsson', '24 Stillorgan, Dublin 4','Michaela Pearson', '0812323470', 'mpearson@ericsson.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Samsung Electronics', 'Stillorgan, Blackrock, Dublin 4','Steve Oneill', '0874343432', 'soneill@samsung.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Phillips', 'County Business Park, Dublin 18','Mark Grady', '0813245765', 'mark.gready@phillips.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Apple', 'Hollyhill Industrial Estate, Cork','Anne Fitzgerald', '0856473095', 'anne_fitzgerald@apple.com');
INSERT INTO SUPPLIER (sname, address, scontname, tel_no, emailID) VALUES ('Nokia', 'Block 1B Beech Hill Office Campus Dublin
Dublin 4','Miriam Montgomerry','0823234567', 'miriam.m@nokia.com');
COMMIT;
END;
/


-- Product table creation
CREATE TABLE PRODUCT(
part_no NUMBER(10) NOT NULL,
supplier NUMBER(10),
description NVARCHAR2(30),
sale_price NUMBER(10, 2),
sup_price NUMBER(5, 2),
qty NUMBER(5),
CONSTRAINT PRODUCT_PK PRIMARY KEY (part_no),
CONSTRAINT PRODUCT_FK FOREIGN KEY (supplier) REFERENCES SUPPLIER(supplierID));


-- Inserting data into PRODUCT table
BEGIN
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (101, 3026, 'Ericsson B and R Mgm',1000,50.5 , 20);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (125, 3025, 'Oracle Acme Packet 3820', 650, 35.75, 60);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (175, 3030, 'Nokia Lumia 1020', 559, 15.85, 30);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (188, 3021, 'Sony X25 Scanner', 420, 45, 50);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (190, 3024, 'Red Hat Storage Server', 800, 65, 20);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (255, 3028, 'Phillips X255 Printer', 650, 40.25, 40);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (295, 3023, 'HP DL320 Server', 1800, 75, 40);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (320, 3022, 'IBM 6182 Plotter', 1250, 80, 35);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (520, 3029, 'Apple MacPro Dual GPU', 3990, 125, 30);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (521, 3020, 'HP DL380p Gen8 Svr', 2800, 45.95, 30);
INSERT INTO PRODUCT (part_no, supplier, description, sale_price, sup_price, qty) VALUES (860, 3027, 'Samsung LT Cluster', 2450, 85.99, 40);
COMMIT;
END;
/


-- ENGINEER table creation
CREATE TABLE ENGINEER(
engID NUMBER(10) NOT NULL,
Fname NVARCHAR2(30),
Lname NVARCHAR2(30),
tel_no VARCHAR(15),
emailID NVARCHAR2(30), 
address NVARCHAR2(50), 
spec NUMBER(10),
CONSTRAINT ENGINEER_PK PRIMARY KEY (engID),
CONSTRAINT ENGINEER_FK FOREIGN KEY (spec) REFERENCES PRODUCT(part_no));


-- Data insertion in Engineer table
BEGIN
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address, spec) VALUES ('Martin','Specs','0882341279','martin.specs@mycomp.ie','31 Baggot Street',295);
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address, spec) VALUES ('Freddie','Oswald','0832341123','freddie.oswald@mycomp.ie','25 James Street',101);
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address, spec) VALUES ('James','McArthur','0834356901','james.mcarthur@mycomp.ie','15 King George st',125);
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address, spec) VALUES ('John ','Bain','0813245890','john.bain@mycomp.ie','87 Turvey Avenue',175);
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address, spec) VALUES ('Michael','Oshea','0876543290','michael.oshea@mycomp.ie','15 Temple Bar',188);
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address, spec) VALUES ('James','Franco','0832456782','james.franco@mycomp.ie','18 Limited Road',190);
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address, spec) VALUES ('Matthew','Elmer','0878945439','matt.elmer@mycomp.ie','91 Emmet Road',320);
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address) VALUES ('Frank','Oneill','0875643210','frank.oneill@mycomp.ie','21 Circular Road');
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address) VALUES ('Jim','Sullivan','088234190','jim.sullivan@mycomp.ie','85 Leicester Street');
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address) VALUES ('Robert','Duff','0823217890','rodert.duff@mycomp.ie','19 Suffolk Road');
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address) VALUES ('Mark','Brothon','0843657841','mark.brothon@mycomp.ie','13 Fitzwilliam Road');
INSERT INTO ENGINEER (Fname, Lname, tel_no, emailID, address) VALUES ('Fergus','Nicol','0842563748','fergus.nicol@mycomp.ie','10 Turvey Avenue');
COMMIT;
END;
/


-- ONSITE_SUPPORT table creation
CREATE TABLE ONSITE_SUPPORT(
supportID NUMBER(10) NOT NULL,
customerID NUMBER(15) NOT NULL,
engID NUMBER(10) NOT NULL,
time TIMESTAMP,
duration NUMBER(2), 
tcost NUMBER(10, 2), 
CONSTRAINT ONSITE_SUPPORT_PK PRIMARY KEY (supportID),
CONSTRAINT ONSITE_SUPPORT_FK FOREIGN KEY (customerID) REFERENCES CUSTOMER(customerID),
CONSTRAINT ONSITE_SUPPORT_FK2 FOREIGN KEY (engID) REFERENCES ENGINEER(engID));


-- Data insertion in the Onsite_Support table
BEGIN
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (517,302,'14-FEB-2014 09:30:00', 2, 400);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (506,309,'09-MAR-2014 11:00:00', 3, 650);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (520,300,'10-MAR-2014 08:30:00', 6, 1450);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (517,308,'14-MAR-2014 12:30:00', 2, 450);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (509,301,'14-MAR-2014 10:00:00', 6, 1500);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (510,303,'19-MAR-2014 09:00:00', 4, 950);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (517,305,'21-MAR-2014 11:30:00', 1, 250);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (507,304,'23-MAR-2014 10:30:00', 3, 650);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (511,306,'27-MAR-2014 14:30:00', 1, 250);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (508,307,'29-MAR-2014 09:00:00', 7, 1800);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (515,308,'04-APR-2014 10:00:00', 2, 450);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (513,301,'04-APR-2014 08:30:00', 5, 1200);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (515,300,'07-APR-2014 10:30:00', 5, 1350);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (507,309,'09-APR-2014 12:30:00', 4, 950);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (509,304,'11-APR-2014 09:00:00', 3, 700);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (513,301,'11-APR-2014 08:30:00', 5, 1200);
INSERT INTO ONSITE_SUPPORT (customerID, engID, time, duration, tcost) VALUES (510,306,'14-APR-2014 11:00:00', 7, 1650);
COMMIT;
END;
/


-- ORDER_CALL table creation
CREATE TABLE ORDER_CALL(
orderID NUMBER(10) NOT NULL,
order_date DATE NOT NULL,
type NUMBER(1),
start_date DATE,
end_date DATE,
discount NUMBER(3),
contactID NUMBER(15) NOT NULL,
CONSTRAINT ORDER_CALL_PK PRIMARY KEY (orderID),
CONSTRAINT ORDER_CALL_FK FOREIGN KEY (contactID) REFERENCES CONTACT_PERSON(contactID));


-- Data insertion in the Order_Call table
BEGIN
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('03-APR-2012', 3, '01-JUN-2012', '01-JUN-2014', 1502);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('03-APR-2013', 3, '01-MAY-2013', '01-MAY-2014', 1514);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('21-APR-2013', 3, '01-MAY-2013', '31-MAY-2014', 1513);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('03-APR-2014', 3, '01-MAY-2014', '30-APR-2018', 1502);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('03-APR-2014', 1, '01-JUN-2014', '01-JUN-2016', 1500);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('04-APR-2014', 1, '01-MAY-2014', '01-MAY-2015', 1514);
INSERT INTO ORDER_CALL (order_date, type,contactID) VALUES ('07-APR-2014', 2, 1511);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('08-APR-2014', 1, '01-SEP-2014', '01-SEP-2018', 1500);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('09-APR-2014', 3, '01-JUN-2014', '01-JUN-2015', 1503);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('09-APR-2014', 3, '01-JUL-2014', '30-SEP-2014', 1508);
INSERT INTO ORDER_CALL (order_date, type,contactID) VALUES ('10-APR-2014', 2, 1505);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('11-APR-2014', 1, '01-MAY-2014', '01-MAY-2020', 1507);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('03-MAR-2014',3, '01-APR-2014', '01-APR-2015', 1507);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('11-JAN-2014',3, '01-FEB-2014', '01-FEB-2015', 1507);
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('13-FEB-2014',3, '01-APR-2014', '01-APR-2016', 1507);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('27-MAR-2014',3,'20-MAY-2014','14-JUN-2017',1520);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('25-MAR-2014',1,'05-MAR-2014','03-JUN-2016',1515);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('16-FEB-2014',3,'31-MAY-2014','05-DEC-2016',1522);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('06-APR-2014',3,'16-MAR-2014','13-MAR-2016',1552);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('19-APR-2014',3,'07-JUN-2014','23-JUL-2016',1532);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('22-FEB-2014',3,'03-JUN-2014','03-MAR-2016',1571);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('07-MAR-2014',1,'21-MAY-2014','20-AUG-2015',1527);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('11-APR-2014',2,1530);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('17-FEB-2014',3,'12-FEB-2014','28-APR-2018',1562);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('28-MAR-2014',2,1527);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('11-MAR-2014',1,'01-MAY-2014','12-SEP-2016',1527);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('08-MAR-2014',1,'06-JUN-2014','08-SEP-2017',1521);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('20-FEB-2014',1,'05-MAR-2014','21-FEB-2016',1512);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('11-MAR-2014',3,'03-MAY-2014','15-DEC-2016',1531);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('06-MAR-2014',3,'29-MAY-2014','16-OCT-2016',1521);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('01-MAR-2014',3,'02-APR-2014','19-AUG-2017',1528);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('13-MAR-2014',3,'07-APR-2014','25-MAY-2018',1520);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('17-MAR-2014',3,'13-FEB-2014','15-JUL-2015',1547);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('19-MAR-2014',3,'31-MAY-2014','29-JAN-2017',1544);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('12-MAR-2014',3,'13-APR-2014','17-MAY-2018',1529);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('23-APR-2014',2,1568);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('25-MAR-2014',3,'27-FEB-2014','14-APR-2015',1520);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('14-APR-2014',2,1521);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('05-MAR-2014',1,'10-MAR-2014','03-SEP-2016',1567);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('10-APR-2014',1,'27-MAR-2014','17-JUN-2015',1507);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('19-APR-2014',1,'02-MAY-2014','22-FEB-2016',1530);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('01-APR-2014',3,'29-MAY-2014','03-MAR-2015',1520);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('07-MAR-2014',3,'19-MAR-2014','04-SEP-2016',1545);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('24-FEB-2014',3,'02-JUN-2014','22-APR-2017',1528);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('12-APR-2014',1,'26-APR-2014','09-APR-2017',1524);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('16-FEB-2014',3,'29-MAR-2014','10-JUL-2016',1525);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('23-MAR-2014',1,'14-FEB-2014','13-JUL-2016',1531);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('25-MAR-2014',2,1549);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('16-MAR-2014',1,'08-MAY-2014','06-MAR-2015',1523);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('07-MAR-2014',1,'28-MAR-2014','06-JAN-2018',1551);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('02-MAR-2014',3,'01-JUN-2014','13-MAY-2016',1550);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('26-MAR-2014',3,'25-MAY-2014','29-JUN-2017',1500);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('17-FEB-2014',1,'04-MAR-2014','23-AUG-2015',1560);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('20-MAR-2014',3,'19-MAR-2014','12-AUG-2016',1542);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('04-APR-2014',3,'03-MAY-2014','21-DEC-2015',1547);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('24-MAR-2014',3,'27-FEB-2014','24-AUG-2017',1563);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('28-MAR-2014',3,'07-APR-2014','29-AUG-2016',1539);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('26-FEB-2014',1,'26-MAY-2014','03-APR-2017',1570);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('26-MAR-2014',1,'09-MAR-2014','09-AUG-2017',1566);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('04-MAR-2014',3,'23-FEB-2014','08-MAY-2018',1566);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('11-MAR-2014',3,'18-APR-2014','18-MAR-2016',1537);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('24-FEB-2014',1,'16-FEB-2014','08-AUG-2015',1535);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('28-MAR-2014',3,'05-MAY-2014','16-JUN-2015',1528);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('18-FEB-2014',3,'25-FEB-2014','15-MAR-2015',1528);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('12-MAR-2014',3,'30-MAY-2014','12-NOV-2015',1562);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('08-MAR-2014',3,'26-MAR-2014','22-JUN-2015',1556);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('22-APR-2014',1,'22-MAY-2014','30-JUL-2015',1556);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('16-MAR-2014',3,'13-APR-2014','07-JUL-2018',1525);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('29-MAR-2014',1,'28-APR-2014','09-FEB-2017',1509);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('19-APR-2014',2,1506);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('24-MAR-2014',1,'16-MAY-2014','25-NOV-2016',1568);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('28-FEB-2014',1,'02-MAR-2014','17-NOV-2017',1568);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('17-FEB-2014',3,'18-FEB-2014','29-MAR-2017',1540);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('19-APR-2014',1,'26-MAR-2014','16-MAY-2015',1549);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('21-MAR-2014',3,'02-MAR-2014','24-JAN-2018',1535);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('09-APR-2014',1,'16-FEB-2014','06-MAR-2017',1554);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('21-APR-2014',3,'02-JUN-2014','09-JAN-2016',1513);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('28-MAR-2014',1,'10-MAY-2014','11-DEC-2015',1538);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('26-MAR-2014',1,'24-MAY-2014','06-JUN-2018',1505);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('08-APR-2014',3,'01-MAR-2014','08-AUG-2015',1508);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('20-MAR-2014',3,'20-MAY-2014','28-AUG-2015',1512);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('10-MAR-2014',1,'23-FEB-2014','10-FEB-2018',1549);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('03-MAR-2014',1,'22-FEB-2014','10-MAR-2016',1562);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('22-MAR-2014',2,1524);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('03-APR-2014',1,'16-MAR-2014','15-JUL-2017',1509);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('10-APR-2014',3,'19-APR-2014','02-JUN-2018',1561);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('07-MAR-2014',3,'20-MAY-2014','13-OCT-2017',1559);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('06-APR-2014',1,'29-MAR-2014','30-JUN-2016',1564);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('27-MAR-2014',1,'01-MAR-2014','20-SEP-2017',1552);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('13-MAR-2014',1,'28-MAY-2014','20-OCT-2016',1510);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('11-MAR-2014',3,'22-FEB-2014','23-SEP-2017',1530);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('27-FEB-2014',1,'17-APR-2014','03-OCT-2017',1523);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('20-FEB-2014',3,'08-MAR-2014','07-MAY-2018',1563);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('21-FEB-2014',3,'10-APR-2014','06-OCT-2015',1542);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('10-MAR-2014',3,'20-MAY-2014','02-MAY-2017',1527);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('23-MAR-2014',1,'18-MAR-2014','27-MAR-2015',1559);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('04-APR-2014',3,'20-APR-2014','25-NOV-2016',1506);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('29-MAR-2014',3,'26-APR-2014','24-FEB-2017',1538);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('22-APR-2014',3,'10-APR-2014','24-JUN-2017',1568);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('04-MAR-2014',1,'20-MAY-2014','17-APR-2017',1502);
INSERT INTO ORDER_CALL (order_date,type,contactID) VALUES ('21-FEB-2014',2,1513);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('17-APR-2014',3,'22-APR-2014','22-OCT-2017',1512);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('16-APR-2014',1,'17-MAY-2014','04-MAR-2016',1566);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('06-APR-2014',3,'08-JUN-2014','08-OCT-2015',1542);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('23-FEB-2014',1,'31-MAY-2014','23-DEC-2016',1511);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('25-FEB-2014',3,'25-APR-2014','22-MAY-2015',1534);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('28-MAR-2014',3,'24-MAR-2014','20-NOV-2017',1536);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('06-MAR-2014',3,'28-APR-2014','17-MAY-2016',1560);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('09-MAR-2014',3,'22-FEB-2014','06-JUL-2015',1504);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('23-FEB-2014',3,'12-FEB-2014','12-FEB-2016',1511);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('01-MAR-2014',1,'16-MAR-2014','17-JUN-2015',1561);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('22-MAR-2014',3,'08-APR-2014','05-SEP-2015',1510);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('09-APR-2014',1,'02-JUN-2014','25-JAN-2016',1507);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('10-MAR-2014',3,'24-MAY-2014','22-NOV-2017',1526);
INSERT INTO ORDER_CALL (order_date,type,start_date,end_date,contactID) VALUES ('21-FEB-2014',3,'23-FEB-2014','10-MAR-2017',1527);
END;
/


-- ORDER_LINE table creation
CREATE TABLE ORDER_LINE(
orderID NUMBER(10) NOT NULL,
part_no NUMBER(10) NOT NULL,
qty NUMBER(5) NOT NULL,
item_price NUMBER(10, 2) NOT NULL,
CONSTRAINT ORDER_LINE_PK PRIMARY KEY (orderID, part_no),
CONSTRAINT ORDER_LINE_FK FOREIGN KEY (orderID) REFERENCES ORDER_CALL(orderID),
CONSTRAINT ORDER_LINE_FK2 FOREIGN KEY (part_no) REFERENCES PRODUCT(part_no)); 


-- Data insertion in the Order_Line table
BEGIN
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100049,295,5);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100046,295,5);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100040,101,3);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100040,175,2);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100041,860,4);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100042,190,5);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100042,101,1);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100043,520,5);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100044,521,2);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100045,175,5);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100045,320,5);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100047,188,2);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100048,101,4);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100050,295,3);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100050,320,3);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100051,101,2);
INSERT INTO ORDER_LINE (orderID, part_no ,qty) VALUES (100051,521,3);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100078,521,1);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100079,101,2);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100079,175,6);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100080,295,1);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100080,521,4);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100080,520,1);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100081,860,3);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100081,175,3);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100082,320,2);
INSERT INTO ORDER_LINE (orderID, part_no,qty) VALUES (100082,521,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100122,101,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100123,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100124,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100125,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100126,520,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100127,175,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100128,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100129,520,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100130,320,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100131,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100132,101,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100133,295,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100134,520,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100135,520,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100136,188,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100137,175,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100138,320,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100139,175,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100140,295,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100141,295,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100142,188,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100143,188,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100144,521,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100145,188,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100146,101,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100147,175,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100148,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100149,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100150,175,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100151,101,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100152,521,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100153,521,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100154,188,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100155,175,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100156,521,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100157,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100158,320,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100159,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100160,175,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100161,295,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100162,295,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100163,295,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100164,521,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100165,295,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100166,521,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100167,101,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100168,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100169,520,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100170,295,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100171,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100172,175,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100173,175,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100174,101,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100175,320,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100176,295,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100177,101,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100178,520,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100179,320,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100180,101,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100181,521,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100182,295,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100183,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100184,101,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100185,101,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100186,101,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100187,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100188,295,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100189,520,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100190,320,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100191,101,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100192,295,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100193,521,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100194,295,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100195,520,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100196,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100197,295,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100198,320,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100199,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100200,175,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100201,101,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100202,295,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100203,295,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100204,188,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100205,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100206,521,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100207,520,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100208,520,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100209,188,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100210,320,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100211,188,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100212,101,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100213,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100214,295,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100215,175,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100216,101,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100217,521,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100218,188,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100219,188,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100127,295,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100128,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100129,521,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100130,521,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100138,520,7);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100140,188,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100141,520,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100142,295,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100143,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100144,320,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100145,175,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100147,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100148,188,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100149,101,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100150,320,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100151,188,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100152,188,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100153,101,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100155,101,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100156,295,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100157,295,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100158,101,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100159,520,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100161,101,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100162,520,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100163,101,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100164,188,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100165,101,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100166,175,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100167,295,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100168,320,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100169,188,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100170,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100177,520,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100178,101,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100179,101,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100180,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100181,295,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100182,320,7);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100183,295,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100184,295,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100185,295,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100186,320,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100187,520,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100188,101,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100192,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100193,175,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100194,188,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100195,175,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100196,295,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100197,320,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100198,520,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100199,188,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100200,320,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100201,520,7);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100202,520,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100203,175,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100204,175,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100205,520,6);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100206,188,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100207,320,1);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100208,188,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100213,520,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100214,175,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100215,520,5);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100216,175,2);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100217,295,4);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100218,101,7);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100219,175,2);
COMMIT;
END;
/


-- Order TYPE table creation - this is only a lookup table
CREATE TABLE TYPE(
typeID NUMBER(1),
name NVARCHAR2(15),
CONSTRAINT TYPE_PK PRIMARY KEY (typeID));


-- Data insertion 
BEGIN
INSERT INTO TYPE (typeID, name) VALUES (1, 'Quote');
INSERT INTO TYPE (typeID, name) VALUES (2, 'Order');
INSERT INTO TYPE (typeID, name) VALUES (3, 'Support');
END;
/


-- Junction table creation
CREATE TABLE JUNCTION(
part_no NUMBER(15),
engID NUMBER(15),
CONSTRAINT JUNCTION_PK PRIMARY KEY (part_no,engID),
CONSTRAINT JUNCTION_FK FOREIGN KEY (part_no) REFERENCES PRODUCT(part_no),
CONSTRAINT JUNCTION_FK2 FOREIGN KEY (engID) REFERENCES ENGINEER(engID)); 



-- Q2. 4 INNER JOIN with description
-- Q2.1 The sales manager wants to see which sales employee is assigned to which customer
SELECT (Fname || ' ' || Lname) "SALES", cname 
FROM SALES_PERSON 
INNER JOIN CUSTOMER 
ON SALES_PERSON.salesID = CUSTOMER.salesID 
ORDER BY Lname;

-- Q2.2 The Logistic department wants to see what is the current product quantity for each product and its supplier
SELECT description "NAME", sname, qty, part_no 
FROM PRODUCT 
INNER JOIN SUPPLIER 
ON supplier=supplierID 
ORDER BY qty;

-- Q2.3 The sales manager wants to see which are the customers that have required onsite support (which is different than the contract_support) so that he can approach those customers and propose them support contracts as a more convenient solution
SELECT cname, COUNT(supportID) AS "Nr of calls", SUM(tcost) AS "Total Value"  
FROM ONSITE_SUPPORT 
INNER JOIN CUSTOMER 
ON ONSITE_SUPPORT.customerID=CUSTOMER.customerID 
GROUP BY cname 
ORDER BY COUNT(supportID) DESC;

-- Q2.4 The sales manager wants to see what are the quotes that have a start date in future, see the contact details and the sales person assigned to the specific customer so that they can contact the customer and see if they want to do any changes or want to activate it into a contract
SELECT orderID AS 
	"Quote nr", CONTACT_PERSON.cname "Contact", CONTACT_PERSON.tel_no "Tel number", CONTACT_PERSON.emailID "Email", CUSTOMER.cname "Customer", (SALES_PERSON.Fname || ' '|| SALES_PERSON.Lname) "Sales", SALES_PERSON.emailID "Email"  
	FROM CONTACT_PERSON 
	INNER JOIN ORDER_CALL 
	ON ORDER_CALL.contactID=CONTACT_PERSON.contactID  
	INNER JOIN CUSTOMER  -- needs to join the customer table to get the sales person assigned to it
	ON CUSTOMER.customerID=CONTACT_PERSON.customerID 
	INNER JOIN SALES_PERSON     -- gets the sales id
	ON CUSTOMER.salesID=SALES_PERSON.salesID 
	WHERE type=1;


-- Q3 6 OUTER JOIN
-- LEFT OUTER JOIN
-- Q3.1 The sales manager wants to know the customers allocated to each sales person with their address so the sales can pay them a visit for a meeting
SELECT (SALES_PERSON.Fname || ' ' || SALES_PERSON.Lname) "Sales name", Customer.cname, caddress "Address" 
	FROM SALES_PERSON 
	LEFT OUTER JOIN CUSTOMER 
	ON CUSTOMER.salesID=SALES_PERSON.salesID 
	ORDER BY SALES_PERSON.Lname;

	-- Q3.2 A manager wants to know which are the customers that have made at least one order call (have ordered a quote, a support contract, or have made an order) and the customers that have not made an order call
SELECT a.cname "Customer", ORDER_CALL.orderID "Order No" 
	FROM (SELECT customer.cname, contactID 
	FROM CUSTOMER 
	FULL OUTER JOIN CONTACT_PERSON 
	ON CUSTOMER.customerID=CONTACT_PERSON.customerID) a 
	LEFT OUTER JOIN ORDER_CALL 
	ON a.contactID=ORDER_CALL.contactID 
	ORDER BY cname;

-- FULL OUTER JOIN
-- Q3.3 A query is needed to see which engineers have visited different sales for onsite support services, and which are the customers that have not requested onsite support services and the engineers that have not visited customers for onsite support calls
SELECT a.cname "Customer", (ENGINEER.Fname || ' ' || ENGINEER.Lname) "Name" 
	FROM (
	SELECT * 
		FROM CUSTOMER 
		FULL OUTER JOIN ONSITE_SUPPORT 
		ON CUSTOMER.customerID=ONSITE_SUPPORT.customerID) a 
	FULL OUTER JOIN ENGINEER 
	ON (a.engID=ENGINEER.engID) 
	ORDER BY a.cname;

-- Q3.4 A manager wants to see the engineers specialized in a type of product and what are the type of products that don't have an engineer specialized so he can send the rest to trainings for the rest of the type of products
SELECT (ENGINEER.Fname || ' ' || ENGINEER.Lname) "Name", description 
	FROM ENGINEER 
	FULL OUTER JOIN PRODUCT 
	ON ENGINEER.spec=PRODUCT.part_no 
	ORDER BY ENGINEER.Lname;

-- RIGHT OUTER JOIN
-- Q3.5 The sales manager wants to run a query to see which customer is a contact person assigned to and which are the customers that don't have a contact person in the database
SELECT CONTACT_PERSON.cname "Name", CUSTOMER.cname "Customer" 
	FROM CONTACT_PERSON 
	RIGHT OUTER JOIN CUSTOMER 
	ON CONTACT_PERSON.customerID=CUSTOMER.customerID 
	ORDER BY CUSTOMER.cname;

-- Q3.6 A manager needs a query to retrieve the customers that have requested onsite support services and which are those
SELECT ONSITE_SUPPORT.supportID, CUSTOMER.cname "Customer" 
	FROM ONSITE_SUPPORT 
	RIGHT OUTER JOIN CUSTOMER 
	ON ONSITE_SUPPORT.customerID=CUSTOMER.customerID 
	ORDER BY CUSTOMER.cname;


-- Q4 CUBE The sales manager wants to see a report for each sales that has been involved in a sale or order of a support contract with with the value of it and total values per customers
SELECT CUSTOMER.salesID, CUSTOMER.customerID, SUM(CASE 
	WHEN ORDER_CALL.type=2 THEN  -- if it is only a sales order, the price is calculated based on item price multiplied by qty
		(ORDER_LINE.qty*ORDER_LINE.item_price) 
	WHEN ORDER_CALL.type=3 THEN -- if it is a contract support it needs to check if the discount is needed
		(FLOOR(MONTHS_BETWEEN(ORDER_CALL.end_date,ORDER_CALL.start_date))*ORDER_LINE.qty*ORDER_LINE.item_price-((FLOOR(MONTHS_BETWEEN(ORDER_CALL.end_date,ORDER_CALL.start_date))*ORDER_LINE.qty*ORDER_LINE.item_price)*(ORDER_CALL.discount/100))) 
-- floor rounds to check the number of months and discount; the formula calculates the total price		
 	END) "Total"
	FROM ORDER_CALL 
	INNER JOIN ORDER_LINE 
	ON ORDER_CALL.orderID=ORDER_LINE.orderID
        INNER JOIN CONTACT_PERSON 
	ON ORDER_CALL.contactID=CONTACT_PERSON.contactID
        INNER JOIN CUSTOMER 
	ON CONTACT_PERSON.customerID=CUSTOMER.customerID 
	WHERE ORDER_CALL.type IN (2,3)
	GROUP BY CUBE(CUSTOMER.salesID, CUSTOMER.customerID) 
	ORDER BY CUSTOMER.salesID;


-- Q5 5 examples of sub-queries
-- 1 A manager wants to see who is the sales that has the highest number of customers assigned so it won't assign new customers to the respective sales person until all the sales persons are looking after the same number of customers
SELECT salesID, COUNT(*) 
	FROM CUSTOMER 
	GROUP BY salesID 
	HAVING COUNT(*) =(
		SELECT MAX(c) 
		FROM (
			SELECT COUNT(salesID) AS c 
			FROM CUSTOMER 
			GROUP BY salesID));

-- 2 There is a need to check which product has the minimum quantity to contact the supplier for a new purchase
SELECT part_no, description, supplier, qty 
	FROM PRODUCT 
	WHERE qty=(
		SELECT MIN(qty) 
		FROM PRODUCT);

-- 3 A sales manager wants to see which are the products with quantity above the average, to ask the sales person to focust on selling those products
SELECT part_no, description, supplier, qty 
	FROM PRODUCT 
	WHERE qty>(
		SELECT AVG(qty) 
		FROM PRODUCT) 
		ORDER BY qty DESC;

-- 4 A manager wants to see what engineer had generated the highest revenue on an onsite support visit, the value of it, the customer and the length
SELECT ONSITE_SUPPORT.engID, (ENGINEER.Fname || ' ' || ENGINEER.Lname) "Name", customerID, duration, tcost
	FROM ONSITE_SUPPORT 
	JOIN ENGINEER 
	ON ONSITE_SUPPORT.engID=ENGINEER.engID
	WHERE TCOST=(
		SELECT MAX(tcost) 
		FROM ONSITE_SUPPORT);

-- 5 The sales manager wants to check which are the sales persons that have a number of customers allocated below the average number of customers allocated for each sales person so that he can assign new customers to those sales persons
SELECT salesID, COUNT(*) "Nr of customers"
	FROM CUSTOMER 
	GROUP BY salesID 
	HAVING COUNT(*)<(
		SELECT AVG(cnt) 
		FROM (
			SELECT COUNT(salesID) 
			AS cnt 
			FROM CUSTOMER 
			GROUP BY salesID)) 
	ORDER BY COUNT(*) ASC;


-- Q6 5 PL/SQL procedures as part of one package

CREATE OR REPLACE PACKAGE myproject AS
PROCEDURE checkengineer (product IN NUMBER);
PROCEDURE updqty (prod IN NUMBER, newqty IN NUMBER);
PROCEDURE actquote (ordID IN NUMBER);
PROCEDURE activateallcontracts (ordcontact IN NUMBER);
PROCEDURE insertline (ordID IN NUMBER, prod IN NUMBER, qt IN NUMBER);
END myproject;
/

CREATE OR REPLACE PACKAGE BODY myproject  
AS
-- Procedure that checks if there is an available engineer specialized in a specific product so that can might solve customer's problem quicker and it has experience. An engineer is not allowed to respond to more than one onsite support call during 7 consecituve days
PROCEDURE checkengineer (product IN NUMBER)
IS 
engineer NUMBER(10);   -- stores the eng ID
available NUMBER(1);   -- checks if it has been on another site in the past 7 days
now DATE;  -- used for checking the nr of days between the current call and the last one for an engineer
CURSOR cur_check IS SELECT * FROM ONSITE_SUPPORT;  -- cursor that checks the onsite_support table
onsite_row cur_check%ROWTYPE;  
BEGIN
available :=0;   -- 0 means an engineer is available
SELECT sysdate INTO now FROM DUAL;  -- assigns the current date to now
SELECT engID INTO ENGINEER FROM ENGINEER WHERE spec=product;   -- assigns the engID in the engineer ID
OPEN cur_check;
FETCH cur_check INTO onsite_row;   -- goes through each row
<<engineers>>
WHILE cur_check%FOUND LOOP    -- loop for going through each row
	IF onsite_row.engID=engineer AND (now-onsite_row.time)>7 THEN  -- checks if an engineer specialized in the given product exists and if it hasn't been on a site in the past 7 days
		available := available+1;   
	END IF;
FETCH cur_check INTO onsite_row;   -- goes to the next row
END LOOP;
CLOSE cur_check;   -- closes the cursor; it has been through the whole table
IF available>0 THEN
	DBMS_OUTPUT.PUT_LINE('Engineer '|| engineer || ' is not available.');
ELSE 
	DBMS_OUTPUT.PUT_LINE('Engineer '|| engineer || ' is available.');
END IF;
EXCEPTION  -- throughs this exception if there is no engID specialized in the given product
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('There are no engineers specialized in product '|| product);
END checkengineer;

-- second procedure - updates the qty of a given product when the stock is being refilled
PROCEDURE updqty (prod IN NUMBER, newqty IN NUMBER) 
IS
	qt NUMBER(4);
	BEGIN
	UPDATE PRODUCT SET    -- updates the qty with the old qty added to the new stock
	product.qty=product.qty+newqty
	WHERE part_no=prod;
	SELECT qty INTO qt FROM PRODUCT WHERE part_no=prod;
	DBMS_OUTPUT.PUT_LINE('The quantity for product ' || prod || ' is now '|| qt); -- shows a message to confirm the qty has been updated
COMMIT;
END updqty;


-- third procedure - procedure that activates a given quote into a support contract and throws errors if the start date is in the past, 
PROCEDURE actquote (ordID IN NUMBER)
IS 
qtype NUMBER(1);   -- stores the document type
error NUMBER(1);   -- used to check the type of the error to give the appropriate message
sdate DATE;   -- stores the start date
odate DATE;   -- stores the order date
now DATE;    -- stores the current date
quote_exc EXCEPTION;    -- throws the exception when error is encountered
BEGIN
SELECT type INTO qtype FROM ORDER_CALL WHERE orderID=ordID;  -- selects the type of the given document
SELECT start_date INTO sdate FROM ORDER_CALL WHERE orderID=ordID;  -- assigns the start date
SELECT order_date INTO odate FROM ORDER_CALL WHERE orderID=ordID;   -- assigns the order date
SELECT sysdate INTO now FROM DUAL;    -- assigns the actual date into now
IF qtype=3 THEN           -- if type is 3 (active contract) it raises the error
	error:=1;          -- assigns the error case
	RAISE quote_exc;
ELSE                           
	IF (now-sdate)>0 THEN        -- if the quote has the start date in past it raises the error
		error:=2;
		RAISE quote_exc;
	ELSIF (now-odate)>30 THEN    --  if the quote has expired it raises the error
		error:=3;
		RAISE quote_exc;
	ELSE                            -- it none of the above cases are met, it updates the type into 3 - activates the quote into a support contract
		UPDATE ORDER_CALL SET
		type=3
		WHERE ORDER_CALL.orderID=ordID;
	END IF;
END IF; 
EXCEPTION                -- the exception 
WHEN quote_exc THEN
	IF error=1 THEN     -- checks the error case and outputs a message accordingly
		DBMS_OUTPUT.PUT_LINE('Quote '|| ordID || ' is already active.');
	ELSIF error=2 THEN
		DBMS_OUTPUT.PUT_LINE('Quote '|| ordID || ' has a start date in the past and cannot be activated. Please create a new quote with a future start date.');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('Quote '|| ordID || ' has expired. Please create a new quote.');
	END IF;
COMMIT;
END actquote;


-- fourth  procedure - this procedure actiates all the quotes created by a given ordering contact into active support contracts; it creates a savepoint at the beginning of the procedure, and starts activating the quotes; if a quote cannot be activated, it rolls back to the savepoint
PROCEDURE activateallcontracts (ordcontact IN NUMBER)  
IS
now DATE;        -- stores the current date
nrofquotes NUMBER(3);    -- stores the number of quotes that have been activated into contracts
errors NUMBER(2);        -- stores the error type
CURSOR cur_oc IS SELECT * FROM ORDER_CALL WHERE contactID=ordcontact AND type=1;   -- cursor that checks all the quotes from order_call
order_row cur_oc%ROWTYPE; 
BEGIN 
SELECT sysdate INTO now FROM DUAL;   -- stores current date into now
SAVEPOINT SAVENOW;   -- creates a savepoint
OPEN cur_oc;
FETCH cur_oc INTO order_row;
nrofquotes:=0;      -- declares the nr of quotes to 0
errors := 0;
<<activatecontract>>
WHILE cur_oc%FOUND LOOP   -- loops the cursor through the table
	IF (now-order_row.start_date)>0 OR (now-order_row.order_date)>30 THEN  -- checks if the quote has expired or has a start date in the past
		DBMS_OUTPUT.PUT_LINE('Quote '|| order_row.orderID || ' could not been activated.');
		errors := errors+1;
	ELSE    -- if the quote can be activated, it activates it
		UPDATE ORDER_CALL SET ORDER_CALL.type=3 WHERE ORDER_CALL.orderID=order_row.orderID;
		DBMS_OUTPUT.PUT_LINE('Quote '|| order_row.orderID || ' has been activated.');
		nrofquotes := nrofquotes+1;    -- increases the nr of activated quotes
	END IF;
	FETCH cur_oc INTO order_row; -- read the next row
	
END LOOP;     -- ends the loop
CLOSE cur_oc;  -- closes the cursor after going through the whole table
IF errors>0 THEN    -- checks if there are any quotes that cannot be activated, outputs a message and rolls back to the savepoint
	DBMS_OUTPUT.PUT_LINE('The qoutes could not been activated. Please update the quotes and try to activate them after the update.');
	ROLLBACK TO SAVEPOINT SAVENOW;    -- rolls back to the savepoint
ELSE
	DBMS_OUTPUT.PUT_LINE(nrofquotes || ' quotes have been activated.');   -- if there were no errors, outputs the nr of quotes activated
END IF;
COMMIT;
END activateallcontracts;


-- fifth procedure - this procedure inserts a new order line into the ORDER_LINE table based on the order ID, the part number and the quantity given
PROCEDURE insertline (ordID IN NUMBER, prod IN NUMBER, qt IN NUMBER) 
IS 
BEGIN
INSERT INTO ORDER_LINE (orderID, part_no, qty) VALUES (ordID, prod, qt);   -- inserts the values into the ORDER_LINE table and outputs a message
DBMS_OUTPUT.PUT_LINE('Order Line for order '|| ordID || ' has been updated with product '|| prod || ' and quantity ' || qt);
END insertline;
END;
/


-- blocks for checking and testing the procedures:
BEGIN   -- checks if there is an engineer for product 101 - engineer should be available
	myproject.checkengineer(101);
END;
/
BEGIN   -- checks if there is an engineer for product 520 - there should be no engineer with a specialization in this product
	myproject.checkengineer(101);
END;
/
UPDATE ONSITE_SUPPORT SET TIME='24-APR-2014 11:00:00' WHERE engID=306;
BEGIN   -- checks if there is an engineer for product 320 - engineer should not be available because he has already been to an onsite call in the last 7 days
    myproject.checkengineer(320);
END;
/
BEGIN
	myproject.updqty(520,15);
END;
/
BEGIN -- the quote is already active so it should raise exception and return error 1
	myproject.actquote(100040);
END;
/
BEGIN -- the quote has a start date in past so it should raise exception and return error 2
	myproject.actquote(100078);
END;
/
 -- the quote has expired so it should raise exception and return error 3
BEGIN
	myproject.actquote(100131);
END;
/
BEGIN  -- the quote should be activated
	myproject.actquote(100145);
END;
/
BEGIN   -- quote 100143 has a start date in the past so it cannot be activated and should throw and error message
	myproject.activateallcontracts(1567);
END;
/
 -- there are 2 quotes for this customer that can be activated
BEGIN  
	myproject.activateallcontracts(1500);
END;
/
BEGIN
	myproject.insertline(100219, 520, 5);
END;
/
COMMIT;



-- Q7 2 PL/SQL functions
-- This function eases a sales person's job when a customer asks for a quick quote for only one product and returns the price; for example it can be used whenever a sales is communicating on the phone with a customer or whenever the sales person has a meeting with a customer 
CREATE OR REPLACE FUNCTION quickquote (product IN NUMBER, qty IN NUMBER, len IN NUMBER)
RETURN NUMBER
IS
	discnt NUMBER(1);   -- stores the discount that has to be applied
	price NUMBER(5,2);   -- stores the price of that 
BEGIN 	
	discnt :=0;    -- sets the discount to 0
	SELECT PRODUCT.sup_price 
		INTO price 
		FROM PRODUCT
		WHERE PRODUCT.part_no=product; 
	IF (FLOOR(len/12)<2) THEN     -- checks if the length of the quote is less thant 2 years and no discount should be applied 
		discnt:=0;	     -- sets the discount to 0
	ELSE                    -- if the quote has a length greater than 2 years checks which discount should be applied by the length and sets the discnt variable accordingly
		CASE	
			WHEN FLOOR(len/12)=2 THEN discnt:=3;
			WHEN FLOOR(len/12)=3 THEN discnt:=4;
			WHEN FLOOR(len/12)=4 THEN discnt:=5;
			ELSE discnt:=7;
		END CASE;
	END IF;
	RETURN ((price*qty*len)-(price*qty*len*(discnt/100)));   -- returns the price of the quote
END quickquote;
/

SELECT quickquote(188,4,24) FROM DUAL;


-- The function returns a table with all the active contracts of a customer
CREATE OR REPLACE FUNCTION activecontracts (customer IN NUMBER)    -- requires the customer ID
RETURN SYS_REFCURSOR           -- uses the sys_refcursor to return the recordset 
AS
	contract SYS_REFCURSOR;   -- declares the sys_refcursror contrac
BEGIN  
	OPEN contract            -- opens the cursor
	FOR SELECT ORDER_CALL.orderID, ORDER_CALL.start_date, ORDER_CALL.end_date --selects the columns required
		FROM ORDER_CALL 
		JOIN CONTACT_PERSON 
		ON ORDER_CALL.contactID=CONTACT_PERSON.contactID 
		AND ORDER_CALL.type=3     -- selects only the entries with type of the order_call (3 means it is a support contract)
		AND sysdate>start_date    -- selects only the entries with the start date in the past
		AND sysdate<end_date     -- selects only the entries with end date in future    - this means the contract is active
		AND customer=CONTACT_PERSON.customerID;
	RETURN contract;     -- returns the recordsets
END activecontracts;
/

SELECT activecontracts(513) FROM DUAL;


/*Q8. Triggers creation */ -- I have created sequences instead of uding auto-increment so I can learn them by using them
-- Sequence for generating the salesID 
CREATE SEQUENCE sales START WITH 100 INCREMENT BY 1;
-- Trigger that generates a new value for a new insertion in the SALES_PERSON table
CREATE OR REPLACE TRIGGER sales_adds BEFORE INSERT ON SALES_PERSON FOR EACH ROW
BEGIN 
	SELECT sales.nextval INTO :new.salesID FROM DUAL;
END;
/

-- Sequence for generating the customerID 
CREATE SEQUENCE cust START WITH 500 INCREMENT BY 1;
-- Trigger that generates a new value for a new insertion in the CUSTOMER table
CREATE OR REPLACE TRIGGER customer_adds BEFORE INSERT ON CUSTOMER FOR EACH ROW
BEGIN 
	SELECT cust.nextval INTO :new.customerID FROM DUAL;
END;
/

-- Sequence for generating the contactID 
CREATE SEQUENCE contact START WITH 1500 INCREMENT BY 1;
-- Trigger that generates a new value for a new insertion in the CONTACT_PERSON table
CREATE OR REPLACE TRIGGER contact_adds BEFORE INSERT ON CONTACT_PERSON FOR EACH ROW
BEGIN 
	SELECT contact.nextval INTO :new.contactID FROM DUAL;
END;
/

-- Sequence for generating the supplierID
CREATE SEQUENCE suppliers START WITH 3000 INCREMENT BY 1;
-- Trigger that generates a new value for a new insertion in the SUPPLIER table
CREATE OR REPLACE TRIGGER supplier_adds BEFORE INSERT ON SUPPLIER FOR EACH ROW
BEGIN 
	SELECT suppliers.nextval INTO :new.supplierID FROM DUAL;
END;
/

-- Sequence for generating the engID
CREATE SEQUENCE eng START WITH 300 INCREMENT BY 1;
-- Trigger that generates a new value for a new insertion in the ENGINEER table
CREATE OR REPLACE TRIGGER eng_adds BEFORE INSERT ON ENGINEER FOR EACH ROW
BEGIN 
	SELECT eng.nextval INTO :new.engID FROM DUAL;
END;
/

-- Sequence for generating supportID
CREATE SEQUENCE onsite START WITH 10000 INCREMENT BY 1;
-- Trigger that generates a new value for a new insertion in the ONSITE_SUPPORT table
CREATE OR REPLACE TRIGGER onsite_adds BEFORE INSERT ON ONSITE_SUPPORT FOR EACH ROW
BEGIN 
	SELECT onsite.nextval INTO :new.supportID FROM DUAL;
END;
/

-- Sequence for generating orderID
CREATE SEQUENCE orderc START WITH 100000 INCREMENT BY 1;
-- Trigger that generates a new value for a new insertion in the ONSITE_SUPPORT table
CREATE OR REPLACE TRIGGER order_adds BEFORE INSERT ON ORDER_CALL FOR EACH ROW
BEGIN 
	SELECT orderc.nextval INTO :new.orderID FROM DUAL;
END;
/

-- After Trigger that checks if the VAT ID inserted is valid; I assumed the standard VAT ID format for Ireland is IE + 7 digits and 2 letters (Ex: IE1234567FA).
CREATE OR REPLACE TRIGGER checkVAT AFTER    -- trigger declaration
INSERT OR UPDATE ON CUSTOMER 
FOR EACH ROW
DECLARE 
	vat NVARCHAR2(15) := :new.vatID;    -- stores the new value inserted for the VAT ID field in vat variable
BEGIN	
	IF vat NOT LIKE 'IE[0-9]__' AND LENGTH(vat) <> 11 THEN	-- checks the vat for the VAT ID format and its length (has to be 11)
	RAISE_APPLICATION_ERROR(-20001, 'The VAT ID ' || :new.vatID || ' is invalid. Please re-insert the customer with a valid VAT ID (IE + 7 digits + 2 characters)');  -- if vat does not have the required format it raises an application error and the new row is not stored
	END IF;
END;
/
-- for testing purposes
INSERT INTO ORDER_CALL (order_date, type, start_date, end_date, contactID) VALUES ('26-APR-2012', 1, '01-JUN-2014', '01-JUN-2018', 1502);

-- Before Trigger that checks the discount required for contracts and applies it
CREATE OR REPLACE TRIGGER mydisc BEFORE 
INSERT OR UPDATE ON ORDER_CALL FOR EACH ROW WHEN (new.start_date is NOT NULL)
DECLARE 
	dur NUMBER(2);    -- variable that stores the duration (length) in years 
BEGIN
	dur:=FLOOR(MONTHS_BETWEEN(:new.end_date,:new.start_date)/12); -- calculates the length in years
 	IF dur < 2 THEN    -- if the length is less than 2 years it sets the new discount value to 0
		:new.discount := 0;
	ELSE               -- if the length is greater than 2 years sets the discount accordingly
		CASE
			WHEN dur=2 THEN :new.discount := 3;
			WHEN dur=3 THEN :new.discount := 4;
			WHEN dur=4 THEN :new.discount := 5;
			WHEN dur>=5 THEN :new.discount := 7;
		END CASE;
	END IF;
END;
/
-- for testing purposes
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100220,520,1);

-- Before Trigger that updates the qty in the Product table based on the products ordered in the Order_Call table and sets the item_prices in the Order_Line table based on the type of the order and the respective sale prices or support price from the Product table
CREATE OR REPLACE TRIGGER updqty BEFORE   -- trigger declaration
INSERT OR UPDATE 
ON ORDER_LINE 
FOR EACH ROW
DECLARE
	ortype NUMBER(5);         -- stores the type of the order so that can modify the quantity only for type 2 (sale orders)
BEGIN 
	SELECT type 
		INTO ortype 
		FROM ORDER_CALL 
		WHERE order_call.orderID=:NEW.orderID;
	IF (ortype=2) THEN        -- checks if the order is of type 2
		UPDATE PRODUCT SET qty = qty - :NEW.qty WHERE part_no=:NEW.part_no;   -- updates the quantity in the product table by substracting the quantity of the newly added products 
		SELECT sale_price  -- updates the item price in the order_line table based on the price of the product from the product table
			INTO :NEW.item_price 
			FROM PRODUCT 
			WHERE part_no=:NEW.part_no;
	ELSE          -- if it is not an order sale, it only updates the price of the newly added product and doesn't modify the quantity
		SELECT sup_price 
			INTO :NEW.item_price 
			FROM PRODUCT 
			WHERE part_no=:NEW.part_no;	
	END IF;
END;
/

-- for testing purposes 
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100188,520,3);
INSERT INTO ORDER_LINE (orderID,part_no,qty) VALUES (100220,520,3);