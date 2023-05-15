CREATE TABLE Items2 (
    ItemID int NOT NULL UNIQUE,
    Nosaukums varchar(255) NOT NULL,
    Apraksts varchar(255),
    PRIMARY KEY(ItemID)
);

CREATE TABLE Users (
    PersonID int NOT NULL UNIQUE,
    Uzvards varchar(255) NOT NULL,
    Vards varchar(255),
    Adrese varchar(255),
    PRIMARY KEY(PersonID)
);

CREATE TABLE Orders (
    OrderID int NOT NULL UNIQUE,
    Datums DATE NOT NULL,
    Summa DECIMAL(8,2) NOT NULL,
    Produkti varchar(255) NOT NULL,
    PersonID int NOT NULL UNIQUE,
    PRIMARY KEY(OrderID),
    FOREIGN KEY (PersonID) REFERENCES Users(PersonID)
);


INSERT INTO Items2 (ItemID, Nosaukums, Apraksts)
VALUES (0001, 'IPhone','Made in China');


INSERT INTO Users (PersonID, Uzvards, Vards, Adrese)
VALUES (0001, 'Klāvs','Ivanovs', 'Brenguļi, Brenguļu pagasti, LV-4245');

INSERT INTO Orders (OrderID, Datums, Summa, Produkti, PersonID)
VALUES (0001, '2023-05-15', 1199.98, '1, 1', 0001);

SELECT * FROM Orders;
