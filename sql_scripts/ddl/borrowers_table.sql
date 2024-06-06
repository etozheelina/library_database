CREATE TABLE Читатели (
    borrower_id INT PRIMARY KEY IDENTITY(1,1),
    Имя VARCHAR (255) NOT NULL,
    Фамилия VARCHAR(255) NOT NULL,
    Адрес VARCHAR(255),
    Телефон VARCHAR(100)
);
GO