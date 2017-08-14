CREATE OR REPLACE PACKAGE test_mypackage
IS

	-- %suite (<name of suite>)


	-- %beforeall()
	PROCEDURE global_setup;

	-- %beforeeach
	PROCEDURE before_each_test;

	-- %aftereach
	PROCEDURE after_each_test;

	-- %afterall
	PROCEDURE global_cleanup;

	-- %test(this is a test)
	PROCEDURE test_1;

END test_mypackage;
/


