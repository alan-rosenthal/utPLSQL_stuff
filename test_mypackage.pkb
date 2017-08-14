CREATE OR REPLACE PACKAGE body test_mypackage
IS

	-- %suite (<name of suite>)


	----------------------------------------------------------------------------
	--	Global Setup at Start of Test Suite
	----------------------------------------------------------------------------
	-- %beforeall
	PROCEDURE global_setup
	IS
	BEGIN
		NULL;
	END global_setup;

	----------------------------------------------------------------------------
	--	Setup Before Each Individual Test
	----------------------------------------------------------------------------
	-- %beforeeach
	PROCEDURE before_each_test
		IS
	BEGIN
		NULL;
	END before_each_test;

	----------------------------------------------------------------------------
	--	Clean Up After Each Individual Test
	----------------------------------------------------------------------------
	-- %aftereach
	PROCEDURE after_each_test
		IS
	BEGIN
		NULL;
	END after_each_test;

	----------------------------------------------------------------------------
	--	Procedure global_cleanup
	--		Global cleanup at the end of the test suite
	----------------------------------------------------------------------------
	-- %afterall
	PROCEDURE global_cleanup
		IS
	BEGIN
		NULL;
	END global_clean_up;

	----------------------------------------------------------------------------
	--	Procedure test_1
	--		A test example
	----------------------------------------------------------------------------
	-- %test(********** This is Test #1)
	PROCEDURE test_1
		IS
	BEGIN
		NULL;
	END test_1;

	----------------------------------------------------------------------------
	--	Procedure test_2
	--		A test example
	----------------------------------------------------------------------------
	-- %test(********** This is Test #2)
	PROCEDURE test_2
		IS
	BEGIN
		NULL;
	END test_2;

END test_mypackage;
/


