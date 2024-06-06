CREATE PROCEDURE InsertCategory
    @Жанр VARCHAR(255)

AS 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Жанры WHERE Жанр = @Жанр)
    BEGIN 
        INSERT INTO Жанры (Жанр)
        VALUES (@Жанр)

        PRINT 'Данные добавлены в таблицу'
    
    END
    ELSE
    BEGIN
        PRINT 'Такой жанр уже есть в таблице'
    END
END