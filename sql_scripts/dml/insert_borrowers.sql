CREATE PROCEDURE InsertBorrowers
    @Имя VARCHAR(255),
    @Фамилия VARCHAR(255),
    @Адрес VARCHAR (255),
    @Телефон VARCHAR (100)

AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Читатели WHERE Имя = @Имя AND Фамилия = @Фамилия)
    BEGIN
        INSERT INTO Читатели (Имя, Фамилия, Адрес, Телефон)
        VALUES (@Имя, @Фамилия, @Адрес, @Телефон)

        PRINT 'Данные добавлены в таблицу'

    END
    ELSE
    BEGIN
        PRINT 'Читатель уже есть в таблице'
    END
END