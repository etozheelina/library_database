CREATE PROCEDURE InsertPublishers
    @Название VARCHAR(100),
    @Адрес VARCHAR(255)

AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Издатели WHERE Название = @Название)
    BEGIN 
        INSERT INTO Издатели (Название, Адрес)
        VALUES (@Название, @Адрес)

        PRINT 'Данные добавлены в таблицу'

    END
    ELSE
    BEGIN 
        PRINT 'Издательство уже есть в таблице'
    END
END