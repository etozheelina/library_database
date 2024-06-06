CREATE PROCEDURE InsertAuthors
    @Имя VARCHAR(100),
    @Фамилия VARCHAR(100),
    @Дата_рождения DATE,
    @Страна VARCHAR(255)

AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Авторы WHERE Имя = @Имя AND Фамилия = @Фамилия)
    BEGIN
        INSERT INTO Авторы (Имя, Фамилия, [Дата рождения], Страна)
        VALUES (@Имя, @Фамилия, @Дата_рождения, @Страна)

        PRINT 'Данные добавлены в таблицу'

    END
    ELSE
    BEGIN
        PRINT 'Автор уже есть в таблице'
    END
END