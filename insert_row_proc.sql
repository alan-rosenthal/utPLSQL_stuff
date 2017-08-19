CREATE OR REPLACE PROCEDURE insert_row(p_n NUMBER, p_d DATE, p_v VARCHAR2)
IS

BEGIN
   INSERT INTO four(n, d, v)
        VALUES (p_n, p_d, TRIM(UPPER(p_v)));
        
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      RAISE;
        
END insert_row;