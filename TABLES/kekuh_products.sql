--DROP TABLE kekuh_products;
--�������  �������, � ����� 
CREATE TABLE kekuh_products 
(id					NUMBER,
 NAME				varchar2(20) NOT null,
 ingredientsid		NUMBER 		 NOT null,
 amount				number(10,2) NOT null,
 CONSTRAINT kekuh_products_id 			 PRIMARY KEY (id),
 CONSTRAINT kekuh_products_ingredientsid 
    FOREIGN KEY (ingredientsid)
	REFERENCES kekuh_ingredients (id)); 

COMMENT ON TABLE  kekuh_products IS '������� ��������� ���� '; 

COMMENT ON COLUMN kekuh_products.ID         	IS 'Id ��������'; 
COMMENT ON COLUMN kekuh_products.NAME         	IS '������������ ��������'; 
COMMENT ON COLUMN kekuh_products.ingredientsid  IS '��� �����������';
COMMENT ON COLUMN kekuh_products.amount         IS '���������� �����������'; 

CREATE SEQUENCE kekuh_products_seq
       START WITH 1
	   INCREMENT BY 1 ;

CREATE OR REPLACE TRIGGER kekuh_products_id  
BEFORE INSERT ON kekuh_products 
FOR EACH ROW 
BEGIN 
IF :new.id IS NULL
   THEN SELECT kekuh_products_seq.NEXTVAL INTO :NEW.id FROM dual;  
END IF;   
END; 

COMMIT; 

INSERT INTO kekuh_products VALUES (kekuh_products_seq.NEXTVAL, '��������', 22,8.3);
										
SELECT * FROM kekuh_products p; 

