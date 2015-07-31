 
CREATE TABLE menu   
(id					NUMBER,
 NAME				varchar2(20) NOT null,
 price		        NUMBER 		 NOT null,
 productid          NUMBER, 
 CONSTRAINT menu_id 			 PRIMARY KEY (id)); 

COMMENT ON TABLE  menu IS 'Таблица меню заведения '; 

COMMENT ON COLUMN menu.ID      IS 'Id меню'; 
COMMENT ON COLUMN menu.NAME    IS 'Наименование пункта меню'; 
COMMENT ON COLUMN menu.price   IS 'Цена в копейках'; 
COMMENT ON COLUMN menu.productid   IS 'ID с таблицы продуктов'; 

CREATE SEQUENCE menu_seq
       START WITH 1
	   INCREMENT BY 1 ;

CREATE OR REPLACE TRIGGER menu_id  
BEFORE INSERT ON menu 
FOR EACH ROW 
BEGIN 
IF :new.id IS NULL
   THEN SELECT menu_seq.NEXTVAL INTO :NEW.id FROM dual;  
END IF;   
END;  

INSERT INTO menu VALUES (menu_seq.NEXTVAL, 'Еспрессо',1000,1);
COMMIT;										
SELECT * FROM kekuh_products p; 

