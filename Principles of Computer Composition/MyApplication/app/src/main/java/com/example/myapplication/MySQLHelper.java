package com.example.myapplication;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class MySQLHelper extends SQLiteOpenHelper {
    // 构造方法 根据需要创建数据库
    public MySQLHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, name, factory, version);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        // 创建短消息表
        String str = String.format("CREATE TABLE %s(%s integer primary key autioncrement"
                        + ", %s text not null"
                        + ", %s text not null"
                        + ", %s text"
                        + ", %s text)"
                , Sms.TableSms
                , Sms.FieldSmsId
                , Sms.FieldSmsDate
                , Sms.FieldSmsPhone
                , Sms.FieldSmsType
                , Sms.FieldSmsContent);
        sqLiteDatabase.execSQL(str);
        // 录入一条短信
        String strInsert = String.format("insert into %s(%s, %s, %s, %s) values('%s', '%s', '%s', '%s')"
                , Sms.TableSms
                , Sms.FieldSmsDate
                , Sms.FieldSmsPhone
                , Sms.FieldSmsType
                , Sms.FieldSmsContent
                , "2024-1-7"
                , "110"
                , "DB"
                , "32位数据总线");
        sqLiteDatabase.execSQL(strInsert);
        // 录入另外一条短信
        strInsert = String.format("insert into %s(%s, %s, %s, %s) values('%s', '%s', '%s', '%s')"
                , Sms.TableSms
                , Sms.FieldSmsDate
                , Sms.FieldSmsPhone
                , Sms.FieldSmsType
                , Sms.FieldSmsContent
                , "2024-1-6"
                , "120"
                , "CB"
                , "32位控制总线");
        sqLiteDatabase.execSQL(strInsert);
        // 录入另一条短信
        strInsert = String.format("insert into %s(%s, %s, %s, %s) values('%s', '%s', '%s', '%s')"
                , Sms.TableSms
                , Sms.FieldSmsDate
                , Sms.FieldSmsPhone
                , Sms.FieldSmsType
                , Sms.FieldSmsContent
                , "2024-1-5"
                , "119"
                , "AB"
                , "32位地址总线");
        sqLiteDatabase.execSQL(strInsert);
    }
    // 必须实现的方法
    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int il) {

    }

    // 录入消息
    public void insert(Sms sms) {
        SQLiteDatabase sqlDB = this.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put(Sms.FieldSmsDate, sms.smsDate);
        values.put(Sms.FieldSmsPhone, sms.smsPhone);
        values.put(Sms.FieldSmsType, sms.smsType);
        values.put(Sms.FieldSmsContent, sms.smsContent);
        sqlDB.insert(Sms.TableSms, Sms.FieldSmsId, values);
    }

    // 删除指定短消息
    public void delete(int _id) {
        SQLiteDatabase sqlDB = this.getWritableDatabase();
        String whereClause = String.format("%s=?", Sms.FieldSmsId);
        String[] whereArgs = {String.valueOf(_id)};
        sqlDB.delete(Sms.TableSms, whereClause, whereArgs);
    }

    // 查询短消息 根据条件模糊查询
    public Cursor query(Sms sms) {
        SQLiteDatabase sqlDB = this.getReadableDatabase();
        String whereClause = String.format("%s like ? and %s like ?"
                , Sms.FieldSmsDate, Sms.FieldSmsPhone);
        String[] whereArgs = {"%s"+sms.smsDate+"%", "%"+sms.smsPhone+"%"};
        Cursor cursor = sqlDB.query(Sms.TableSms, null, whereClause, whereArgs, null, null, null);
        return cursor;
    }

}
