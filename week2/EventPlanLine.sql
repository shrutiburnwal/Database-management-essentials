SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE EventPlanLine;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE EventPlanLine (planNo    CHAR(8)   NOT NULL,
lineNo    CHAR(8)   NOT NULL,
timeStart DATE NOT NULL,
timeEnd   DATE NOT NULL,
numberFLD INTEGER   NOT NULL,
locNo     CHAR(8)   NOT NULL,
resno     CHAR(8)   NOT NULL,
CONSTRAINT PK_EventPlanLine PRIMARY KEY (planNo, lineNo),
CONSTRAINT FKKEventPlan FOREIGN KEY (planNo) REFERENCES EventPlan (planNo),
CONSTRAINT FKKLocation FOREIGN KEY (locNo) REFERENCES Location (locNo),
CONSTRAINT FK_ResourceTbl FOREIGN KEY (resno) REFERENCES ResourceTbl (resno),constraint EventPlanLine_check_startBeforeEnd check (timeStart < timeEnd) );
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P100', '1','25-Oct-2013 8:00','25-Oct-2013 17:00','2', 'L100','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P100', '2','25-Oct-2013 12:00','25-Oct-2013 17:00','2', 'L101','R101');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P100', '3','25-Oct-2013 7:00','25-Oct-2013 16:30','1', 'L102','R102');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P100', '4','25-Oct-2013 18:00','12-Dec-2013 22:00','1', 'L100','R102');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P101', '1','03-Dec-2013 18:00','03-Dec-2013 20:00','2', 'L103','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P101', '2','03-Dec-2013 18:30','03-Dec-2013 19:00','2', 'L105','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P101', '3','03-Dec-2013 19:00','03-Dec-2013 20:00','4', 'L103','R103');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P102', '1','05-Dec-2013 18:00','05-Dec-2013 19:00','2', 'L103','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P102', '2','05-Dec-2013 18:00','05-Dec-2013 21:00','2', 'L105','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P102', '3','05-Dec-2013 19:00','05-Dec-2013 22:00','4', 'L103','R103');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P103', '1','12-Dec-2013 18:00','12-Dec-2013 21:00','2', 'L103','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P103', '2','12-Dec-2013 18:00','12-Dec-2013 21:00','4', 'L105','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P103', '3','12-Dec-2013 19:00','12-Dec-2013 22:00','2', 'L103','R103');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P104', '1','26-Oct-2013 18:00','26-Oct-2013 22:00','4', 'L101','R104');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P104', '2','26-Oct-2013 18:00','26-Oct-2013 22:00','4', 'L100','R104');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P105', '1','25-Oct-2013 18:00','25-Oct-2013 22:00','4', 'L101','R104');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P105', '2','25-Oct-2013 18:00','25-Oct-2013 22:00','4', 'L100','R104');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P199', '1','10-Dec-2013 8:00','10-Dec-2013 12:00','1', 'L100','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P349', '1','12-Dec-2013 12:00','12-Dec-2013 15:30','1', 'L103','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P85', '1','25-Oct-2013 9:00','25-Oct-2013 17:00','5', 'L100','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P85', '2','25-Oct-2013 8:00','25-Oct-2013 17:00','2', 'L102','R101');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P85', '3','25-Oct-2013 10:00','25-Oct-2013 17:00','3', 'L104','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P95', '1','26-Oct-2013 8:00','26-Oct-2013 17:00','4', 'L100','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P95', '2','26-Oct-2013 9:00','26-Oct-2013 17:00','4', 'L102','R101');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P95', '3','26-Oct-2013 10:00','26-Oct-2013 15:00','4', 'L106','R100');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P95', '4','26-Oct-2013 13:00','26-Oct-2013 17:00','2', 'L100','R103');
INSERT INTO EventPlanLine(planNo, lineNo, timeStart, timeEnd,   numberFLD, locNo, resno) VALUES ('P95', '5','26-Oct-2013 13:00','26-Oct-2013 17:00','2', 'L101','R104');
select * from EventPlanLine;
