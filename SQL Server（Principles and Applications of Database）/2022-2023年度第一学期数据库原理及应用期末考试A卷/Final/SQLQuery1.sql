SELECT Book.BNo,Book.BName
FROM Reader,Book,Lend
WHERE Reader.Rname like 'уе%' And Book.BNo=Lend.BNo And LDate is not NULL AND RDate is NULL 

/*344121138 б╫И╙*/
