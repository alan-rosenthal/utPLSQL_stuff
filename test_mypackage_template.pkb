CREATE OR REPLACE PACKAGE body test_mypackage_template
IS

	----------------------------------------------------------------------------
	--	Procedure (optional) - global_setup
   --    Global Setup at Start of Test Suite
	----------------------------------------------------------------------------
	PROCEDURE global_setup
	IS
	BEGIN
      NULL;
	END global_setup;

	----------------------------------------------------------------------------
	--	Procedure (optional) - global_cleanup
   --    Global cleanup at the end of the test suite
	----------------------------------------------------------------------------
	PROCEDURE global_cleanup
	IS
	BEGIN
      NULL;
	END global_cleanup;

	----------------------------------------------------------------------------
	--	Procedure (Optional) - before_each_test
   --    Setup Before Each Individual Test
	----------------------------------------------------------------------------
	PROCEDURE before_each_test
	IS
	BEGIN
      NULL;
	END before_each_test;

	----------------------------------------------------------------------------
	--	Procedure (optional) - after_each_test
   --    Clean Up After Each Individual Test 
	----------------------------------------------------------------------------
	PROCEDURE after_each_test
	IS
	BEGIN
		NULL;
	END after_each_test;

	----------------------------------------------------------------------------
	--	Procedure test1 
	--		A test case
	----------------------------------------------------------------------------
	PROCEDURE test1 
	IS
	BEGIN
      NULL;
   END test1;

END test_mypackage_template;
/


