#!/usr/bin/sh

sqlplus -silent arosenthal@viper <<EOF
clear screen
set serveroutput on

exec ut.run(ut_documentation_reporter(), a_color_console=>true);
exit


EOF


