SELECT 'bcp ' + DB_NAME() + '.[dbo].' + st.NAME + ' out c:\bcp\' + st.NAME + '.csv -T -c -t -S xxxx\SQLEXPRESS ' -- Please change xxxx\SQLEXPRESS for your server
FROM sys.tables st
-- Detail please refer: https://www.freeprogrammingcoupon.com/
