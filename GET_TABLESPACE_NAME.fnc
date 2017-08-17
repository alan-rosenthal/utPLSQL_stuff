CREATE OR REPLACE FUNCTION AROSENTHAL.get_tablespace_name ( p_what_table VARCHAR2 )
   RETURN VARCHAR2
IS
   v_tablespace_name      user_tables.tablespace_name%TYPE;

BEGIN
   SELECT tablespace_name
     INTO v_tablespace_name
     FROM user_tables
    WHERE table_name LIKE UPPER(p_what_table);
       
   RETURN v_tablespace_name;
   
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      RAISE;

END get_tablespace_name;
/