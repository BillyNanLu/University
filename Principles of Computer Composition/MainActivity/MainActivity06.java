package com.example.myapplication;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity06 extends AppCompatActivity {
	private SQLiteDatabase sqlDB;
	EditText etName, etPass;
	Button btnLogin;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main06);
		// 创建数据库
		sqlDB = openOrCreateDatabase("diary.db", MODE_PRIVATE, null);
		// 创建之前先创建数据表
		sqlDB.execSQL("drop table if exists tblUser");
		// 创建数据表
		String str = "create table tblUser(_id integer primary key autoincrement" 
				+ ",userName text NOT NULL" 
				+ ",userPassword text NOT NULL)";
		sqlDB.execSQL(str);
		// 录入一个测试用户
		String strSql = "insert into tblUser(userName, userPassword) values('admin', '123')";
		sqlDB.execSQL(strSql);
		
		etName = (EditText) findViewById(R.id.etName);
		etPass = (EditText) findViewById(R.id.etPass);
		// 用户登录
		btnLogin = (Button) findViewById(R.id.btnLogin);
		btnLogin.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				String strSql = String.format("select * from tblUser" + 
								"where userName='%s' and userPassword='%s'"
							, etName.getText().toString()
							, etPass.getText().toString());
				Cursor cursor = sqlDB.rawQuery(strSql, null);
				if (cursor.getCount() > 0)
					Toast.makeText(MainActivity06.this, "欢迎您", 1).show();
				else
					Toast.makeText(MainActivity06.this, "对不起，非法用户", 1).show();
				// 关闭Cursor对象
				cursor.close();
			}
		});
	}
}