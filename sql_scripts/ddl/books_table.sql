CREATE TABLE Книги (
    book_id INT PRIMARY KEY IDENTITY(1,1),
    Название VARCHAR(255) NOT NULL,
    authors_id INT,
    publisher_id INT,
    category_id INT,
    [Год публикации] INT,
    [isbn] VARCHAR(13)

    FOREIGN KEY (authors_id) REFERENCES Авторы (authors_id),
    FOREIGN KEY (publisher_id) REFERENCES Издатели (publisher_id),
    FOREIGN KEY (category_id) REFERENCES Жанры (category_id)
);
GO