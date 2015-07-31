DROP TABLE measures; 
CREATE TABLE measures (
id 			 NUMBER(3) 			NOT NULL, 
sname		 VARCHAR2(5	)		NOT NULL, 
NAME 		 VARCHAR2(50)		NOT NULL ,  
CONSTRAINT measures_id PRIMARY KEY (id), 
CONSTRAINT measures_unique_name UNIQUE (NAME),
CONSTRAINT measures_unique_sname UNIQUE (sname)
); 

COMMENT ON TABLE  measures 			IS '������� ���������'; 
COMMENT ON COLUMN measures.id 		IS 'Id ������� ���������';
COMMENT ON COLUMN measures.sname 	IS '������� ������������ ������� ���������';
COMMENT ON COLUMN measures.name 	IS '������ ������������ ������� ���������';

DROP SEQUENCE measures_seq;
CREATE SEQUENCE measures_seq 
	 START WITH 1
	   INCREMENT BY 1 ;
       
INSERT INTO measures VALUES (measures_seq.NEXTVAL, '��.', '����');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, '�.', '�����');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, '��.', '����������');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, '��.', '����������');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, '�.', '����');    
INSERT INTO measures VALUES (measures_seq.NEXTVAL, '��.', '���������');   
SELECT * 
FROM measures;