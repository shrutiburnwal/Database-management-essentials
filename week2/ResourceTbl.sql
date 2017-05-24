drop table ResourceTbl;
CREATE TABLE ResourceTbl (
  resno   VARCHAR2(8)       NOT NULL,
  resname VARCHAR2(30)   NOT NULL,
  rate    DECIMAL(8, 2) NOT NULL,
  CONSTRAINT PK_ResourceTbl PRIMARY KEY (resno)
);
INSERT INTO ResourceTbl (resno, resname, rate) VALUES ('R100', 'attendant', '10.00');
INSERT INTO ResourceTbl (resno, resname, rate) VALUES ('R101', 'police', '15.00');
INSERT INTO ResourceTbl (resno, resname, rate) VALUES ('R102', 'usher', '10.00');
INSERT INTO ResourceTbl (resno, resname, rate) VALUES ('R103', 'nurse', '20.00');
INSERT INTO ResourceTbl (resno, resname, rate) VALUES ('R104', 'janitor', '15.00');
INSERT INTO ResourceTbl (resno, resname, rate) VALUES ('R105', 'food service', '10.00');
select * from ResourceTbl;

