package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.cursoradapter.widget.SimpleCursorAdapter;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;

public class MainActivity extends AppCompatActivity {
    ListView listSms;
    MySQLHelper mySQLHelper;
    Cursor cursor;
    EditText etDate, etPhone;
    SimpleCursorAdapter adapter;
    Sms sms = new Sms("", "");

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        listSms = (ListView) this.findViewById(R.id.lstSms);
        etDate = (EditText) this.findViewById(R.id.etDate);
        etPhone = (EditText) this.findViewById(R.id.etPhone);

        // 初始化数据库访问对象
        mySQLHelper = new MySQLHelper(this, "sms.db", null, 1);
        // 查询所有短消息
        cursor = mySQLHelper.query(sms);
        display();
    }
}