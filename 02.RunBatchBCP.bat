@echo off

REM -------------------------------------------------------------------------------------------------------
REM  Export All Data from All Table
REM --------------------------------------------------------------------------------------------------------

bcp master.[dbo].spt_fallback_db out c:\bcp\spt_fallback_db.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].spt_fallback_dev out c:\bcp\spt_fallback_dev.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].spt_fallback_usg out c:\bcp\spt_fallback_usg.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].category_staging out c:\bcp\category_staging.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].category out c:\bcp\category.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].spt_monitor out c:\bcp\spt_monitor.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].MSreplication_options out c:\bcp\MSreplication_options.csv -T -c -t -S xx\SQLEXPRESS 
pause
