set FOREIGN_KEY_CHECKS = 0;
drop table Eventrequest;
set FOREIGN_KEY_CHECKS = 1;

create table Eventrequest ( evntNo      CHAR(8)       NOT NULL, 
dateHeld    DATE          NOT NULL, dateReq     DATE          NOT NULL,  
facNo       CHAR(8)       NOT NULL, custNo      CHAR(8)       NOT NULL,  
dateAuth    DATE, status      CHAR(20)      NOT NULL, estCost     DECIMAL(15, 2) NOT NULL, 
estAudience INTEGER       NOT NULL, budNo       CHAR(30),CONSTRAINT PK_Eventrequest PRIMARY KEY (evntNo), 
CONSTRAINT FK_Facility FOREIGN KEY (facNo) REFERENCES Facility (facNo), CONSTRAINT FK_Customer FOREIGN KEY (custNo) REFERENCES Customer (custNo),
constraint EventRequest_check_status check (status in ('Approved','Pending','Denied')),
		constraint EventRequest_check_estAudience check (estAudience > 0)
 );
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E100',  '25-Oct-2013',  '6-Jun-2013', 'F100', 'C100',  '08-Jun-2013', 'Approved', '5000.00', '80000', 'B1000');
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E101', '26-Oct-2013', '28-Jul-2013',  'F100', 'C100',   NULL, 'Pending', '5000.00', '80000', 'B1000');
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E102', '14-Sep-2013',  '28-Jul-2013',   'F100', 'C100', '31-Jul-2013', 'Approved', '5000.00', '80000', 'B1000');
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E103', '21-Sep-2013', '28-Jul-2013',  'F100', 'C100',   '01-Aug-2013', 'Approved', '5000.00', '80000', 'B1000');
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E104',  '03-Dec-2013', '28-Jul-2013',  'F101','C101',    '31-Jul-2013', 'Approved', '2000.00', '12000', 'B1000');
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E105', '05-Dec-2013', '28-Jul-2013',  'F101', 'C101',    '01-Aug-2013', 'Approved', '2000.00', '10000', 'B1000');
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E106',  '12-Dec-2013', '28-Jul-2013',  'F101', 'C101',   '31-Jul-2013', 'Approved', '2000.00', '10000', 'B1000');
INSERT INTO Eventrequest (evntNo,  dateHeld, dateReq,  facNo, custNo, dateAuth, status, estCost, estAudience, budNo) VALUES ('E107', '23-Nov-2013', '28-Jul-2013',  'F100', 'C105',    '31-Jul-2013', 'Denied', '10000.00', '5000', NULL);
select * from Eventrequest;
