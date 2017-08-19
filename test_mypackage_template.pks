CREATE OR REPLACE PACKAGE test_mypackage_template
IS

	-- %suite (<title of test suite goes here>)


	-- %beforeall
	PROCEDURE global_setup;

	-- %afterall
	PROCEDURE global_cleanup;

	-- %beforeeach
	PROCEDURE before_each_test;

	-- %aftereach
	PROCEDURE after_each_test;

	-- %test(**********     <title of test goes here>)
	PROCEDURE test1;

   
END test_mypackage_template;
/


