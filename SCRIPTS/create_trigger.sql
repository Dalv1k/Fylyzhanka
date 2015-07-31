   
CREATE OR REPLACE TRIGGER ingredients_id  
BEFORE INSERT ON ingredients 
FOR EACH ROW 
BEGIN 
IF :new.id IS NULL
    THEN SELECT ingredients_seq.NEXTVAL INTO :NEW.id FROM dual; 
END IF;
END; 

