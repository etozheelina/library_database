CREATE TABLE Авторы (
    authors_id INT PRIMARY KEY IDENTITY (1,1),
    Имя VARCHAR(100) NOT NULL,
    Фамилия VARCHAR(100) NOT NULL,
    [Дата рождения] DATE,
    Страна VARCHAR(255)
);
GO