CREATE OR REPLACE PACKAGE test_insert_row_proc
IS

	-- %suite (*****     Test INSERT_ROW procedure)


	-- %beforeall()
	PROCEDURE global_setup;

	-- %beforeeach
	PROCEDURE before_each_test;

	-- %aftereach
	PROCEDURE after_each_test;

	-- %afterall
	PROCEDURE global_cleanup;

	-- %test(**********     Test empty table)
	PROCEDURE empty_table;

   -- %test(**********     Test 1 row in table, column by column approach)
   PROCEDURE one_row;
   
   -- %test(**********     Test 3rows in table, cursor data embedded in package approach)
   PROCEDURE three_rows;
   
   -- %test(**********     Test 3rows in table, comparing to temp test table approach)
   PROCEDURE five_rows;
   
   -- %test(**********     Test unique index)
   PROCEDURE unique_index;
   
END test_insert_row_proc;
/


