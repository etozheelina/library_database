CREATE PROCEDURE InsertBorrowings
    @Название_книги VARCHAR(255),
    @Имя_читателя VARCHAR(255),
    @Фамилия_читателя VARCHAR(255),
    @Дата_выдачи DATE,
    @Дата_возврата DATE

AS
BEGIN
    DECLARE @book_id INT;
    DECLARE @borrower_id INT;

    SELECT @book_id = book_id
    FROM Книги
    WHERE Название = @Название_книги;

    SELECT @borrower_id = borrower_id
    FROM Читатели
    WHERE Имя = @Имя_читателя AND Фамилия = @Фамилия_читателя;

    IF NOT EXISTS (SELECT 1 FROM Аренда WHERE borrower_id = @borrower_id)
    BEGIN
        INSERT INTO Аренда (book_id, borrower_id, [Дата выдачи], [Дата возврата])
        VALUES (@book_id, @borrower_id, @Дата_выдачи, @Дата_возврата)

        PRINT 'Данные добавлены в таблицу'

    END 
    ELSE
    BEGIN
        PRINT 'Данный читатель уже есть в таблице'
    END
END