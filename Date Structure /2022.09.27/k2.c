#define MAXSIZE 1000
typedef struct
{
    char no[20];
    char name[50];
    float price;
}book;
typedef struct 
{
    book *elem;
    int length;
}SqList;

