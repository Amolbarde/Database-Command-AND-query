# SQL Privilages (GRANT & REVOKE)
 
 . What is SQL privilages?
 -> SQL privilages are permission given to user to perform specific operation on a database.
 
# Examples
 . Read Data
 . Insert Data
 . Modify Data
 . Delete Data
 
# Types of Privilages
 
 1. System Privilages
 - control overall database actions
   Examples:
   . CREATE DATABASE
   . CREATE USER
   
 2. Object Privilages
 - control access on table , view, etc.
   PRIVILAGES
   ----------
   .SELECT -> READ DATA
   .INSERT -> Add new data
   .UPDATE -> Modify Data
   .DELETE -> remove data
   .ALL    -> ALL permission
   
# GRANT STATEMENT(GIVE PERMISSION)

GRANT privilage_name
ON
database_name.table_name
TO 'username'@'host';

#Example 1
GRANT SELECT 
ON
compony.emp
TO
'amol'@'localhost';
//USER CAN ONLY READ DATA


#Example 2
GRANT SELECT, INSERT, UPDATE
ON
compony.emp
TO
'amol'@'loclhost';



#Example 3
GRANT ALL PRIVILAGES
ON
compony.*
TO
'amol'@'localhost';
//FULL ACCESS
