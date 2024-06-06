CREATE PROCEDURE InsertBooks
    @Название VARCHAR(255),
    @Имя_автора VARCHAR(255),
    @Фамилия_автора VARCHAR(255),
    @Название_издателя VARCHAR(100),
    @Название_жанра VARCHAR(255),
    @Год_публикации INT,
    @ISBN VARCHAR(13)

AS
BEGIN
    DECLARE @authors_id INT;
    DECLARE @publisher_id INT;
    DECLARE @category_id INT;
 
    SELECT @authors_id = authors_id
    FROM Авторы
    WHERE Имя = @Имя_автора AND Фамилия = @Фамилия_автора;

    SELECT @publisher_id = publisher_id
    FROM Издатели
    WHERE Название = @Название_издателя;

    SELECT @category_id = category_id
    FROM Жанры
    WHERE Жанр = @Название_жанра;


    IF NOT EXISTS (SELECT 1 FROM Книги WHERE Название = @Название)
    BEGIN
        INSERT INTO Книги (Название, authors_id, publisher_id, category_id, [Год публикации], [isbn])
        VALUES (@Название, @authors_id, @publisher_id, @category_id, @Год_публикации, @ISBN)

        PRINT 'Данные добавлены в таблицу'

    END
    ELSE
    BEGIN
        PRINT 'Книга уже есть в таблице'
    END
END