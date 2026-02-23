/*

==============================================================================================

Bulk Upload data from data sources to the data warehouse
=============================================================================================

Script Purpose:
  This script loads data from data surces CRM and ERP -- checking if it already exists.
  If the data exists, data is replaced and overwritten.

Warning:
  Running this script will overwrite any data already existing in the tables .
  All data in the tables will be overwritten. Proceed with caution and ensure you have proper backups before running this script.
*/



-- Truncate and Bulk Load data from cust_info.csv file to bronze.crm_cust_info table --
TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\MANISH\Downloads\Compressed\dbc9660c89a3480fa5eb9bae464d6c07_2\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- Truncate and Bulk Load data from prd_info.csv file to bronze.crm_prd_info table --
TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\MANISH\Downloads\Compressed\dbc9660c89a3480fa5eb9bae464d6c07_2\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- Truncate and Bulk Load data from sales_details.csv file to bronze.crm_sales_details table --
TRUNCATE TABLE bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\MANISH\Downloads\Compressed\dbc9660c89a3480fa5eb9bae464d6c07_2\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- Truncate and Bulk Load data from cust_az12.csv file to bronze.erp_cust_az12 table --
TRUNCATE TABLE bronze.erp_cust_az12;
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\MANISH\Downloads\Compressed\dbc9660c89a3480fa5eb9bae464d6c07_2\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- Truncate and Bulk Load data from loc_a101.csv file to bronze.erp_loc_a101 table --
TRUNCATE TABLE bronze.erp_loc_a101;
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\MANISH\Downloads\Compressed\dbc9660c89a3480fa5eb9bae464d6c07_2\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- Truncate and Bulk Load data from px_cat_g1v2.csv file to bronze.erp_px_cat_g1v2 table --
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\MANISH\Downloads\Compressed\dbc9660c89a3480fa5eb9bae464d6c07_2\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
