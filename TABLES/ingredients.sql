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

COMMENT ON TABLE  ingredients IS 'Таблица игредиентов'; 

COMMENT ON COLUMN ingredients.ID         	    IS 'Id игредиента';
COMMENT ON COLUMN ingredients.name         	    IS 'Наименование игредиента';
COMMENT ON COLUMN ingredients.amountbegin 		IS 'Количество товара на начало дня'; 
COMMENT ON COLUMN ingredients.supply      		IS 'Приход товара'; 
COMMENT ON COLUMN ingredients.consumption 		IS 'Рассход товара'; 
COMMENT ON COLUMN ingredients.amountnow        	IS 'Количество товара сейчас'; 
COMMENT ON COLUMN ingredients.measuresid      	iS 'Ид единицы измерения'; 
COMMENT ON COLUMN ingredients.COST     			IS 'Цена закупки '; 
COMMENT ON COLUMN ingredients.summabegin        IS 'Сумма остатка на начало дня '; 
COMMENT ON COLUMN ingredients.summanow          IS 'Сумма остатка на конец дня'; 
COMMENT ON COLUMN ingredients.used              IS 'Используется сейчас ингредиент или нет(1 - да, 0 -нет)'; 

--CREATE UNIQUE INDEX i_ingredients ON ingredients (ID,Name);   
DROP SEQUENCE ingredients_seq; 

CREATE SEQUENCE ingredients_seq
       START WITH 1
	   INCREMENT BY 1 ; 

INSERT INTO ingredients VALUES (ingredients_seq.NEXTVAL, 
								'Кофе Лавацца',
                                0,
                                1000,
                                0,
                                1000,
                                2,
                                17900,
                                0,
                                1000,
                                1);
                                
                         