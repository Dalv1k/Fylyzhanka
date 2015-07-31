DECLARE 
PROCEDURE add_ingredient 
(ingredient_name ingredients.NAME%TYPE)
IS 
	short_name EXCEPTION;
    p_name contragent.NAME%TYPE;
   -- PRAGMA EXCEPTION_INIT (short_name, -1403);
BEGIN 
	IF LENGTH(ingredient_name) < 5 
    	THEN RAISE short_name; 
	END IF;
	
    SELECT  c.NAME 
    INTO p_name
    FROM contragent c 
    WHERE c.id = 3559215
	  AND c.NAME = ingredient_name; 
    
    EXCEPTION 
    	WHEN short_name THEN 
        	DBMS_OUTPUT.Put_Line( 'Ñëèøêîì êîðîòêîå èìÿ' );
		WHEN OTHERS THEN 
        	IF SQLCODE = 100 THEN 
            DBMS_OUTPUT.Put_Line( 'Íè÷åãî íå íàéäåíî' ); 
            END IF;  
   
END;

BEGIN 
add_ingredient('tes2'); 
END;     
