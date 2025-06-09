/*
===============================================================================
DDL Script: Create Silver Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'silver' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/


create schema if not exists silver;


drop table if exists silver.crm_cust_info;
create table silver.crm_cust_info (
    cst_id              integer,
    cst_key             varchar(50),
    cst_firstname       varchar(50),
    cst_lastname        varchar(50),
    cst_marital_status  varchar(50),
    cst_gndr            varchar(50),
    cst_create_date     date,
	dwh_create_date TIMESTAMP DEFAULT NOW()
);


drop table if exists silver.crm_prd_info;
create table silver.crm_prd_info (
    prd_id       integer,
    prd_key      varchar(50),
    prd_nm       varchar(50),
    prd_cost     integer,
    prd_line     varchar(50),
    prd_start_dt timestamp,
    prd_end_dt   timestamp,
	dwh_create_date TIMESTAMP DEFAULT NOW()
);


drop table if exists silver.crm_sales_details;
create table silver.crm_sales_details (
    sls_ord_num  varchar(50),
    sls_prd_key  varchar(50),
    sls_cust_id  integer,
    sls_order_dt integer,
    sls_ship_dt  integer,
    sls_due_dt   integer,
    sls_sales    integer,
    sls_quantity integer,
    sls_price    integer,
	dwh_create_date TIMESTAMP DEFAULT NOW()
);


drop table if exists silver.erp_loc_a101;
create table silver.erp_loc_a101 (
    cid    varchar(50),
    cntry  varchar(50),
	dwh_create_date TIMESTAMP DEFAULT NOW()
);


drop table if exists silver.erp_cust_az12;
create table silver.erp_cust_az12 (
    cid    varchar(50),
    bdate  date,
    gen    varchar(50),
	dwh_create_date TIMESTAMP DEFAULT NOW()
);


drop table if exists silver.erp_px_cat_g1v2;
create table silver.erp_px_cat_g1v2 (
    id           varchar(50),
    cat          varchar(50),
    subcat       varchar(50),
    maintenance  varchar(50),
	dwh_create_date TIMESTAMP DEFAULT NOW()
);