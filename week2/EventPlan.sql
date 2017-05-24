set FOREIGN_KEY_CHECKS = 0;
drop table EventPlan;
set FOREIGN_KEY_CHECKS = 1;

create table EventPlan ( planNo CHAR(8) NOT NULL, 
evntNo CHAR(8) NOT NULL, workDate DATE  NOT NULL,
notes VARCHAR2(80), activity CHAR(10) NOT NULL,
empNo  CHAR(8),CONSTRAINT PK_EventPlan PRIMARY KEY (planNo), 
CONSTRAINT FK_EventRequest FOREIGN KEY (evntNo) REFERENCES EventRequest (evntNo), 
CONSTRAINT FK_Employee FOREIGN KEY (empNo) REFERENCES Employee (empNo) );
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P100', 'E100', '25-Oct-2013', 'Standard operation', 'Operation', 'E102');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P101', 'E104', '03-Dec-2013', 'Watch for gate crashers',  'Operation', 'E100');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P102', 'E105',  '05-Dec-2013', 'Standard operation',  'Operation', 'E102');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P103', 'E106', '12-Dec-2013', 'Watch for seat switching',  'Operation', '');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P104', 'E101', '26-Oct-2013', 'Standard cleanup',  'Cleanup', 'E101');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P105', 'E100',  '25-Oct-2013', 'Light cleanup', 'Cleanup', 'E101');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P199', 'E102', '10-Dec-2013', 'Standard operation',  'Operation', 'E101');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P299', 'E101', '26-Oct-2013', NULL,  'Operation', 'E101');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P349', 'E106', '12-Dec-2013', NULL,  'Cleanup', 'E101');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P85', 'E100', '25-Oct-2013', 'Standard operation',  'Setup', 'E102');
insert into EventPlan (planNo, evntNo,  workDate, notes,  activity, empNo) values ('P95', 'E101',  '26-Oct-2013', 'Extra security',  'Setup', 'E102');
select * from EventPlan;
