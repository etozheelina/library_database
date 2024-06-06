CREATE TABLE Аренда (
    borrowing_id INT PRIMARY KEY IDENTITY(1,1),
    book_id INT,
    borrower_id INT,
    [Дата выдачи] DATE,
    [Дата возврата] DATE,

    FOREIGN KEY (book_id) REFERENCES Книги (book_id),
    FOREIGN KEY (borrower_id) REFERENCES Читатели (borrower_id)
);
GO
