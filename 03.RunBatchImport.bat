@echo off

REM -------------------------------------------------------------------------------------------------------
REM  Export All Data from All Table
REM --------------------------------------------------------------------------------------------------------

bcp master.[dbo].spt_fallback_db in c:\bcp\spt_fallback_db.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].spt_fallback_dev in c:\bcp\spt_fallback_dev.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].spt_fallback_usg in c:\bcp\spt_fallback_usg.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].category_staging in c:\bcp\category_staging.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].category in c:\bcp\category.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].spt_monitor in c:\bcp\spt_monitor.csv -T -c -t -S xx\SQLEXPRESS 
bcp master.[dbo].MSreplication_options in c:\bcp\MSreplication_options.csv -T -c -t -S xx\SQLEXPRESS 
pause
