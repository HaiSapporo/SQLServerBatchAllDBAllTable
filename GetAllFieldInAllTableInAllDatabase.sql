DECLARE @Table_Name VarChar(100),
                    @Column_Name VarChar(100)
SET @Table_Name = ''
SET @Column_Name = ''
SELECT RowNumber = Row_Number() Over(PARTITION BY T.[Name]
                                     ORDER BY T.[Name], C.column_id),
                                SCHEMA_NAME(T.schema_id) AS SchemaName,
                                T.[Name] AS TABLE_NAME,
                                C.[Name] AS Field_Name,
                                sysType.name,
                                C.max_length,
                                C.is_nullable,
                                C.is_identity,
                                C.scale,
                                C.precision
FROM Sys.Tables AS T
LEFT JOIN Sys.Columns AS C ON (T.[Object_Id] = C.[Object_Id])
LEFT JOIN sys.types AS sysType ON (C.user_type_id = sysType.user_type_id)
WHERE (TYPE = 'U')
  AND (C.Name Like '%' + @Column_Name + '%')
  AND (T.Name Like '%' + @Table_Name + '%')
