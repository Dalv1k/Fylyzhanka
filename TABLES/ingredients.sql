DROP TABLE ingredients;
CREATE TABLE ingredients 
(id 							number			NOT null, 
 NAME 		 					varchar2(256) 	NOT null,
 amountbegin 					number(15),
 supply      					NUMBER(15),
 consumption 					NUMBER (15), 
 amountnow    					NUMBER (15), 
 measuresid      				number(3), 
 COST		 					NUMBER (15), 
 summabegin     				NUMBER (15), 
 summanow						NUMBER (15), 
 used           				CHAR(1),
 CONSTRAINT ingredients_id PRIMARY KEY (id), 
 CONSTRAINT measures_fk FOREIGN KEY (measuresid) REFERENCES measures(id)); 

COMMENT ON TABLE  ingredients IS '������� �����������'; 

COMMENT ON COLUMN ingredients.ID         	    IS 'Id ����������';
COMMENT ON COLUMN ingredients.name         	    IS '������������ ����������';
COMMENT ON COLUMN ingredients.amountbegin 		IS '���������� ������ �� ������ ���'; 
COMMENT ON COLUMN ingredients.supply      		IS '������ ������'; 
COMMENT ON COLUMN ingredients.consumption 		IS '������� ������'; 
COMMENT ON COLUMN ingredients.amountnow        	IS '���������� ������ ������'; 
COMMENT ON COLUMN ingredients.measuresid      	iS '�� ������� ���������'; 
COMMENT ON COLUMN ingredients.COST     			IS '���� ������� '; 
COMMENT ON COLUMN ingredients.summabegin        IS '����� ������� �� ������ ��� '; 
COMMENT ON COLUMN ingredients.summanow          IS '����� ������� �� ����� ���'; 
COMMENT ON COLUMN ingredients.used              IS '������������ ������ ���������� ��� ���(1 - ��, 0 -���)'; 

--CREATE UNIQUE INDEX i_ingredients ON ingredients (ID,Name);   
DROP SEQUENCE ingredients_seq; 

CREATE SEQUENCE ingredients_seq
       START WITH 1
	   INCREMENT BY 1 ; 

INSERT INTO ingredients VALUES (ingredients_seq.NEXTVAL, 
								'���� �������',
                                0,
                                1000,
                                0,
                                1000,
                                2,
                                17900,
                                0,
                                1000,
                                1);
                                
                         