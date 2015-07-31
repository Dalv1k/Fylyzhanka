DROP TABLE measures; 
CREATE TABLE measures (
id 			 NUMBER(3) 			NOT NULL, 
sname		 VARCHAR2(5	)		NOT NULL, 
NAME 		 VARCHAR2(50)		NOT NULL ,  
CONSTRAINT measures_id PRIMARY KEY (id), 
CONSTRAINT measures_unique_name UNIQUE (NAME),
CONSTRAINT measures_unique_sname UNIQUE (sname)
); 

COMMENT ON TABLE  measures 			IS 'Таблица измерений'; 
COMMENT ON COLUMN measures.id 		IS 'Id единицы измерения';
COMMENT ON COLUMN measures.sname 	IS 'Краткое наименование единицы измерения';
COMMENT ON COLUMN measures.name 	IS 'Полное наименование единицы измерения';

DROP SEQUENCE measures_seq;
CREATE SEQUENCE measures_seq 
	 START WITH 1
	   INCREMENT BY 1 ;
       
INSERT INTO measures VALUES (measures_seq.NEXTVAL, 'шт.', 'штук');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, 'г.', 'грамм');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, 'кг.', 'киллограмм');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, 'мг.', 'миллиграмм');
INSERT INTO measures VALUES (measures_seq.NEXTVAL, 'л.', 'литр');    
INSERT INTO measures VALUES (measures_seq.NEXTVAL, 'мл.', 'миллилитр');   
SELECT * 
FROM measures;