/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


-- drop the 'datawarehouse' database if it exists
drop database if exists datawarehouse;

-- create the 'datawarehouse' database
create database datawarehouse;

-- connect to the new database
\c datawarehouse;

-- create schemas
create schema if not exists bronze;
create schema if not exists silver;
create schema if not exists gold;
