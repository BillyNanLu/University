USE BookDB
CREATE TABLE Lend
(
    LID int NOT NULL,
    RNo varchar(12) NOT NULL,
    BNO varchar(20) NOT NULL,
    LDate datetime NOT NULL,
    RDate datetime,
) 
GO