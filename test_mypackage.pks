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

	-- %test(********** This is Test #1)
	PROCEDURE test_1;

	-- %test(********** This is Test #2)
	PROCEDURE test_2;

END test_mypackage;
/


