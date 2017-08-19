CREATE OR REPLACE PACKAGE body test_insert_row_proc
IS

	----------------------------------------------------------------------------
	--	Global Setup at Start of Test Suite
	----------------------------------------------------------------------------
	PROCEDURE global_setup
	IS
      
	BEGIN
      NULL;
         
	END global_setup;

	----------------------------------------------------------------------------
	--	Procedure global_cleanup
	--		Global cleanup at the end of the test suite
	----------------------------------------------------------------------------
	PROCEDURE global_cleanup
	IS
	
	BEGIN
      NULL;

   EXCEPTION
      WHEN OTHERS THEN
         RAISE;
         
	END global_cleanup;

	----------------------------------------------------------------------------
	--	Setup Before Each Individual Test
	----------------------------------------------------------------------------
	PROCEDURE before_each_test
	IS
	
	BEGIN
      DELETE FROM four
       WHERE 1=1;
       
      DELETE FROM test_four
       WHERE 1=1;

	END before_each_test;

	----------------------------------------------------------------------------
	--	Clean Up After Each Individual Test 
	----------------------------------------------------------------------------
	PROCEDURE after_each_test
	IS
	
	BEGIN
		NULL;
	
	END after_each_test;

	----------------------------------------------------------------------------
	--	Procedure empty_table 
	--		A test example
	----------------------------------------------------------------------------
	PROCEDURE empty_table 
	IS
      n     NUMBER;
      
	BEGIN
		SELECT COUNT(*)
		  INTO n
		  FROM four;
		ut.expect( n ).to_equal( 0 );
		
	END empty_table;
	
	-----------------------------------------------------------------------------
	-- Procedure one_row
	--    Insert a single row
	-----------------------------------------------------------------------------
	PROCEDURE one_row
	IS
      n     NUMBER;
      v_n   four.n%TYPE;
      v_d   four.d%TYPE;
      v_v   four.v%TYPE;
      
	BEGIN
      insert_row(3.14159, TO_DATE('15-JUN-1959', 'DD-MON-YYYY'), 'Happy Birthday');
      
      SELECT COUNT(*)
        INTO n
        FROM four;
      ut.expect( n ).to_equal( 1 );
      
      SELECT n, d, v
        INTO v_n, v_d, v_v
        FROM four;
      ut.expect( v_n ).to_equal( 3.14159 );
      ut.expect( v_d ).to_equal( TO_DATE('15-JUN-1959', 'DD-MON-YYYY') );
      ut.expect( v_v ).to_equal( 'HAPPY BIRTHDAY' ); 
      
   END one_row;
      
	-----------------------------------------------------------------------------
	-- Procedure three_rows
	--    Insert three rows into table
	-----------------------------------------------------------------------------
	PROCEDURE three_rows
	IS
      n           NUMBER;
      actual_cur  sys_refcursor;
      expect_cur  sys_refcursor;
 
	BEGIN
      insert_row(123, TO_DATE('15-JUN-1959', 'DD-MON-YYYY'), 'Alan');
      insert_row(456, TO_DATE('01-MAY-1961', 'DD-MON-YYYY'), 'Ellin');
      insert_row(789, TO_DATE('22-NOV-1990', 'DD-MON-YYYY'), 'Sarah');

      OPEN actual_cur FOR SELECT n, d, v 
                            FROM four 
                        ORDER BY d;
                        
      OPEN expect_cur FOR SELECT n, d, v
                            FROM (SELECT 123 as n, TO_DATE('15-JUN-1959', 'DD-MON-YYYY') as d, 'ALAN' as v FROM DUAL
                                  UNION
                                  SELECT 456 as n, TO_DATE('01-MAY-1961', 'DD-MON-YYYY') as d, 'ELLIN' as v FROM DUAL
                                  UNION
                                  SELECT 789 as n, TO_DATE('22-NOV-1990', 'DD-MON-YYYY') as d, 'SARAH' as v FROM DUAL)
                         ORDER BY d;
      ut.expect( actual_cur ).to_equal( expect_cur );     
            
   END three_rows;

	-----------------------------------------------------------------------------
	-- Procedure five_rows
	--    Insert five_rows into table
	-----------------------------------------------------------------------------
	PROCEDURE five_rows
	IS
      n           NUMBER;
      actual_cur1  sys_refcursor;
      expect_cur1  sys_refcursor;
 
	BEGIN
      INSERT INTO test_four ( n, d, v ) VALUES (123, TO_DATE('15-JUN-1959', 'DD-MON-YYYY'), 'ALAN');
      INSERT INTO test_four ( n, d, v ) VALUES (456, TO_DATE('01-MAY-1961', 'DD-MON-YYYY'), 'ELLIN');
      INSERT INTO test_four ( n, d, v ) VALUES (789, TO_DATE('19-Jun-1995', 'DD-MON-YYYY'), 'RACHEL');
      INSERT INTO test_four ( n, d, v ) VALUES (012, TO_DATE('22-NOV-1990', 'DD-MON-YYYY'), 'SARAH');
      INSERT INTO test_four ( n, d, v ) VALUES (345, TO_DATE('04-Sep-1992', 'DD-MON-YYYY'), 'EMILY');
      
      insert_row(123, TO_DATE('15-JUN-1959', 'DD-MON-YYYY'), ' Alan      ');
      insert_row(456, TO_DATE('01-MAY-1961', 'DD-MON-YYYY'), '  Ellin    ');
      insert_row(789, TO_DATE('19-Jun-1995', 'DD-MON-YYYY'), '   Rachel  ');
      insert_row(012, TO_DATE('22-NOV-1990', 'DD-MON-YYYY'), '    Sarah  ');
      insert_row(345, TO_DATE('04-Sep-1992', 'DD-MON-YYYY'), '     Emily ');
      
      OPEN actual_cur1 FOR SELECT n, d, v 
                            FROM four 
                        ORDER BY d;
                        
      OPEN expect_cur1 FOR SELECT n, d, v
                            FROM test_four
                        ORDER BY d;
                         
      ut.expect( actual_cur1 ).to_equal( expect_cur1 );     
            
   END five_rows;

----------------------------------------------------------------------------
	--	Procedure unqiue_index 
	--		A test example
	----------------------------------------------------------------------------
	PROCEDURE unique_index 
	IS
      
	BEGIN
      insert_row(999, TO_DATE('01-Jan-2017', 'DD-MON-YYYY'), 'aaa');
      insert_row(123, TO_DATE('01-Jan-2017', 'DD-MON-YYYY'), 'bbb');
      insert_row(321, TO_DATE('01-Jan-2017', 'DD-MON-YYYY'), 'ccc');
		
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX THEN
         NULL;
         
      WHEN OTHERS THEN
         RAISE;
         
	END unique_index;
	


END test_insert_row_proc;
/


