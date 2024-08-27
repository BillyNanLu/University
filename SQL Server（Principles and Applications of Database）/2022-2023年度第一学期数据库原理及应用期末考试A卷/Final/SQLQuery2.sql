SELECT Reader.RName,Book.BNum
FROM Reader,Book,Lend
WHERE Reader.RNo=Lend.RNo AND Book.BNo=Lend.BNo AND LDate is not NULL

/*344121138Â½éª*/
