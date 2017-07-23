create database WSO2_USER_DB;
use WSO2_USER_DB;
source /dbscripts/mysql.sql;
grant all on WSO2_USER_DB.* TO regadmin@"%" identified by "regadmin";
 
create database REGISTRY_DB;
use REGISTRY_DB;
source /dbscripts/mysql.sql;
grant all on REGISTRY_DB.* TO regadmin@"%" identified by "regadmin";
 
create database REGISTRY_LOCAL1;
use REGISTRY_LOCAL1;
source /dbscripts/mysql.sql;
grant all on REGISTRY_LOCAL1.* TO regadmin@"%" identified by "regadmin";
  
create database REGISTRY_LOCAL2;
use REGISTRY_LOCAL2;
source /dbscripts/mysql.sql;
grant all on REGISTRY_LOCAL2.* TO regadmin@"%" identified by "regadmin";

