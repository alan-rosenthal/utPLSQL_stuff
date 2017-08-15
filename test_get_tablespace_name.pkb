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
	--	Procedure test_2
	--		A test example
	----------------------------------------------------------------------------
	PROCEDURE no_data_found_test
		IS
		n     user_tables.tablespace_name%TYPE;
		
	BEGIN
      n := get_tablespace_name('onex');

   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         NULL;
         
      WHEN OTHERS THEN
         RAISE;
         
	END no_data_found_test;

END test_get_tablespace_name;
/


