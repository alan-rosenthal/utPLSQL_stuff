CREATE OR REPLACE PACKAGE test_get_tablespace_name
IS

	-- %suite (Test Suite - Test_Get_Tablespace_Name)


	-- %beforeall()
	PROCEDURE global_setup;

	-- %beforeeach
	PROCEDURE before_each_test;

	-- %aftereach
	PROCEDURE after_each_test;

	-- %afterall
	PROCEDURE global_cleanup;

	-- %test(**********     happy test)
	PROCEDURE happy_test;

	-- %test(**********     test no_data_found exception handler)
	PROCEDURE no_data_found_test;
	
	-- %test(**********     test too many tables found)
	PROCEDURE too_many_rows_round_test;

END test_get_tablespace_name;
/


