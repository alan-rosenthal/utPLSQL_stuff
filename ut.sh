#!/usr/bin/sh

#sqlplus -silent arosenthal@viper <<EOF
sqlplus -silent alan/alan@oracle12c <<EOF
clear screen
set serveroutput on
set linesize 132

EXECUTE ut.run(ut_documentation_reporter(), a_color_console=>true);
EXIT


EOF


