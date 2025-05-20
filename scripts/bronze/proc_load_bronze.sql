/*
===============================================================================
Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This script loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the 'COPY FROM' command to load data from csv Files to bronze tables.
===============================================================================
*/


truncate table bronze.crm_cust_info;
copy bronze.crm_cust_info
from '/postgresql/datawarehouse_project/datasets/source_crm/cust_info.csv'
with (format csv, header true, delimiter ',');

truncate table bronze.crm_prd_info;
copy bronze.crm_prd_info
from '/postgresql/datawarehouse_project/datasets/source_crm/prd_info.csv'
with (format csv, header true, delimiter ',');

truncate table bronze.crm_sales_details;
copy bronze.crm_sales_details
from '/postgresql/datawarehouse_project/datasets/source_crm/sales_details.csv'
with (format csv, header true, delimiter ',');

truncate table bronze.erp_loc_a101;
copy bronze.erp_loc_a101
from '/postgresql/datawarehouse_project/datasets/source_erp/loc_a101.csv'
with (format csv, header true, delimiter ',');

truncate table bronze.erp_cust_az12;
copy bronze.erp_cust_az12
from '/postgresql/datawarehouse_project/datasets/source_erp/cust_az12.csv'
with (format csv, header true, delimiter ',');

truncate table bronze.erp_px_cat_g1v2;
copy bronze.erp_px_cat_g1v2
from '/postgresql/datawarehouse_project/datasets/source_erp/px_cat_g1v2.csv'
with (format csv, header true, delimiter ',');
