package com.example.myapplication;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.media.MediaRecorder;

public class MySQLHelper extends SQLiteOpenHelper {
    // 构造方法 根据需要创建数据库
    public MySQLHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super (context, name, factory, version);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        // 创建日志表
        String str = String.format("Create table %s(%s integer primary key autoincrement"
                        + ", %s text not null"
                        + ", %s text not null"
                        + ", %s text)"
                , CPU.FieldTableCPU
                , CPU.FieldCPUId
                , CPU.FieldReleaseDate
                , CPU.FieldCPUName
                , CPU.FieldCPUFeature);
        sqLiteDatabase.execSQL(str);

        // 录入一条测试日志数据
        String strInsert = String.format("insert into %s(%s, %s, %s) values('%s', '%s', '%s')"
                , CPU.FieldTableCPU
                , CPU.FieldCPUId
                , CPU.FieldReleaseDate
                , CPU.FieldCPUName
                , CPU.FieldCPUFeature
                , "2022-01-06"
                , "高通骁龙8+"
                , "强大的性能、优秀的图形处理能力、高效的能源效率");

    }

    // 必须实现的方法
    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

    }

    // 录入日志
    public void insert(CPU cpu) {
        SQLiteDatabase sqlDB = this.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put(CPU.FieldReleaseDate, cpu.releaseDate);
        values.put(CPU.FieldCPUName, cpu.cupName);
        values.put(CPU.FieldCPUFeature, cpu.cupFeature);
        sqlDB.insert(CPU.FieldTableCPU, CPU.FieldCPUId, values);
    }

    // 更新指定日期日志
    public void update(CPU cpu) {
        SQLiteDatabase sqlDB = this.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put(CPU.FieldCPUName, cpu.cupName);
        values.put(CPU.FieldCPUFeature, cpu.cupFeature);
        String whereClause = String.format("%s=?", CPU.FieldReleaseDate);
        String[] whereArgs = {cpu.releaseDate};
        sqlDB.update(CPU.FieldTableCPU, values, whereClause, whereArgs);
    }

    // 删除指定日期日志
    public void delete(CPU cpu) {
        SQLiteDatabase sqlDB = this.getWritableDatabase();
        String whereClause = String.format("%s=?", CPU.FieldReleaseDate);
        String[] whereArgs = {cpu.releaseDate};
        sqlDB.delete(CPU.FieldTableCPU, whereClause, whereArgs);
    }

    // 查询所有日志
    public Cursor query() {
        SQLiteDatabase sqlDB = this.getReadableDatabase();
        Cursor cursor = sqlDB.query(CPU.FieldTableCPU, null, null, null, null, null, null);
        return cursor;
    }

    // 查询指定日期日志
    public int queryByDate(CPU cpu) {
        SQLiteDatabase sqlDB = this.getReadableDatabase();
        String whereClause = String.format("s=?", CPU.FieldReleaseDate);
        String[] whereArgs = {cpu.releaseDate};
        Cursor cursor = sqlDB.query(CPU.FieldTableCPU, null, whereClause, whereArgs, null, null, null);
        return cursor.getCount();
    }
}
