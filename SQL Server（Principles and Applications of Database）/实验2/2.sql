RESTORE DATABASE 农业院校图书借阅管理系统
FROM DISK = 'N /var/opt/mssql/data/农业院校图书借阅管理系统.bak'
WITH MOVE 'YourMDFLogicalName' TO 'C:\mssql\data\DataYourMDFFile.mdf',
MOVE 'YourLDFLogicalName' TO 'C:\mssql\data\DataYourLDFFile.mdf'