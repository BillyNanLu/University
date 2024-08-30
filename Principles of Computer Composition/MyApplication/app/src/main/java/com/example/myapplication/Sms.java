package com.example.myapplication;

import java.io.Serializable;

public class Sms implements Serializable {
    // 定义数据表字段变量
    int _id;
    String smsDate="", smsPhone="", smsType="", smsContent="";

    // 定义数据表字段产量
    static String FieldSmsDate = "smsDate";
    static String FieldSmsPhone = "smsPhone";
    static String FieldSmsType = "smsType";
    static String FieldSmsContent = "smsContent";
    static String FieldSmsId = "_id";
    static String TableSms = "tblSms";

    public Sms() {
        super();
    }

    public Sms(String date, String phone) {
        super();
        this.smsDate = date;
        this.smsPhone = phone;
    }

    public Sms(String date, String phone, String type) {
        super();
        this.smsDate = date;
        this.smsPhone = phone;
        this.smsType = type;
    }

    public Sms(String date, String phone, String type, String content) {
        super();
        this.smsDate = date;
        this.smsPhone = phone;
        this.smsType = type;
        this.smsContent = content;
    }

    public Sms(int _id, String date, String phone, String type, String content) {
        super();
        this._id = _id;
        this.smsDate = date;
        this.smsPhone = phone;
        this.smsType = type;
        this.smsContent = content;
    }
}
