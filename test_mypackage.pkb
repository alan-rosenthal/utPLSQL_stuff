CREATE OR REPLACE PACKAGE body test_mypackage
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
	--	Procedure test_1
	--		A test example
	----------------------------------------------------------------------------
	PROCEDURE test_1
		IS
	BEGIN
		NULL;
	END test_1;

END test_mypackage;
/


