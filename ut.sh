#!/usr/bin/sh

sqlplus -silent arosenthal/okcwam0#@viper <<EOF
clear screen
set serveroutput on

exec ut.run(ut_documentation_reporter(), a_color_console=>true);
exit


EOF


