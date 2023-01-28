SELECT * FROM sys.fn_helpcollations() where name like '%Latin1_General_CS_AS%'
GO

CREATE DATABASE Sonar
GO

USE Sonar
GO

SELECT CONVERT (VARCHAR(50), DATABASEPROPERTYEX('Sonar','collation'));
ALTER DATABASE Sonar COLLATE Latin1_General_CS_AS;
GO

SELECT is_read_committed_snapshot_on FROM sys.databases WHERE name='Sonar';
ALTER DATABASE Sonar SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE;
GO

CREATE LOGIN sonar WITH PASSWORD = 'sonar123*';
GO

EXEC master..sp_addsrvrolemember @loginame = N'sonar', @rolename = N'sysadmin'
GO