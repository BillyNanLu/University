SELECT Rname FROM Reader
WHERE Rno NOT IN
(SELECT Rno FROM Lend WHERE LDate is not NULL)

/*344121138陆楠*/
