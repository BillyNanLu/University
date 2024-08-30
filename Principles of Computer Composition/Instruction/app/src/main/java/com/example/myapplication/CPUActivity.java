package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CPUActivity extends AppCompatActivity implements View.onClickListener {
    // 定义字符串格式
    private final static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    MySQLHelper mySQLHelper;
    EditText etName, etFeature;
    Button btnSave, btnCancel, btnDelete;
    TextView tvDate;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cpu);
        // 定义界面控制变量
        tvDate = (TextView) this.findViewById(R.id.tvDate);
        etName = (EditText) this.findViewById(R.id.etName);
        etFeature = (EditText) this.findViewById(R.id.etFeature);
        btnSave = (Button) this.findViewById(R.id.btnSave);
        btnSave.setOnClickListener(this);
        btnCancel = (Button) this.findViewById(R.id.btnCancel);
        btnCancel.setOnClickListener(this);
        btnDelete = (Button) this.findViewById(R.id.btnDelete);
        btnDelete.setOnClickListener(this);

        // 初始化数据库访问对象

        mySQLHelper = new MySQLHelper(this, "diary.db", null, 1);
        // 获取日志列表页面传递过来的数据
        Intent it = getIntent();
        CPU cpu = (CPU) it.getSerializableExtra("cpu");
        tvDate.setText(cpu.releaseDate);
        etName.setText(cpu.cupName);
        etFeature.setText(cpu.cupFeature);

        // 根据日志的日期赋予日志保存和删除按钮操作权限
        if (cpu.releaseDate.equals(df.format(new Date()))) {
            btnSave.setEnabled(true);
            btnDelete.setEnabled(true);
        }
    }

    @Override
    public void onClick(View view) {
        // 利用界面控件数据信息初始化CPU类型变量
        CPU cpu = new CPU(tvDate.getText().toString()
                , etName.getText().toString(), etFeature.getText().toString());
        switch (view.getId()) {
            // 保存按钮单击代码
            case R.id.btnSave:
                if (mySQLHelper.queryByDate(cpu) == 0)
                    mySQLHelper.insert(cpu);
                else
                    mySQLHelper.update(cpu);
                break;
            // 取消按钮单机代码
            case R.id.btnDelete:
                mySQLHelper.delete(cpu);
                break;
        }
        // 完成操作跳转到日志列表页面
        Intent it = new Intent(CPUActivity.this, MainActivity.class);
        startActivity(it);
    }
}