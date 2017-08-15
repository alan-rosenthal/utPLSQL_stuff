CREATE OR REPLACE PACKAGE body test_get_tablespace_name
IS

	-- %suite (<name of suite>)


	----------------------------------------------------------------------------
	--	Global Setup at Start of Test Suite
	----------------------------------------------------------------------------
	PROCEDURE global_setup
	IS
	
	BEGIN
		NULL;
	END global_setup;

	----------------------------------------------------------------------------
	--	Setup Before Each Individual Test
	----------------------------------------------------------------------------
	PROCEDURE before_each_test
	IS
	
	BEGIN
		NULL;
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
	--	Procedure global_cleanup
	--		Global cleanup at the end of the test suite
	----------------------------------------------------------------------------
	PROCEDURE global_cleanup
	IS
	
	BEGIN
		NULL;
	END global_cleanup;

	----------------------------------------------------------------------------
	--	Procedure test
	--		A test example
	----------------------------------------------------------------------------
	PROCEDURE happy_test
	IS
      n     user_tables.tablespace_name%TYPE;
      
	BEGIN
      n := get_tablespace_name('one');
      ut.expect( n ).to_equal( 'USERS' );
    
   END happy_test;

	----------------------------------------------------------------------------
	--	Procedure no_data_found_test
	----------------------------------------------------------------------------
   PROCEDURE no_data_found_test
   IS
      n                       user_tables.tablespace_name%TYPE;
      exception_didnt_fire    EXCEPTION;
      PRAGMA EXCEPTION_INIT   (exception_didnt_fire, -20000);
      
   BEGIN
      n := get_tablespace_name('not_a_table');
      RAISE exception_didnt_fire;
      
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         NULL;
         
      WHEN exception_didnt_fire THEN
         RAISE;
         
      WHEN OTHERS THEN
         RAISE;
         
   END no_data_found_test;
   
   ---------------------------------------------------------------------------
	--	Procedure too_many_rows_round_test
	----------------------------------------------------------------------------
   PROCEDURE too_many_rows_round_test
   IS
      n                       user_tables.tablespace_name%TYPE;
      exception_didnt_fire    EXCEPTION;
      PRAGMA EXCEPTION_INIT   (exception_didnt_fire, -20000);
      
   BEGIN
      n := get_tablespace_name('one');
      RAISE exception_didnt_fire;
      
   EXCEPTION
      WHEN TOO_MANY_ROWS THEN             -- If more than one is found, then this is the correct way to handle that error.
         NULL;
         
      WHEN exception_didnt_fire THEN      -- If no exception fires, then that is bad.
         RAISE;
         
      WHEN OTHERS THEN                    -- If any other exception fires, then that is bad.
         RAISE;
         
   END too_many_rows_round_test;


END test_get_tablespace_name;
/


