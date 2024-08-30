package com.example.myapplication;

import java.io.*;

public class CPU  implements Serializable {
    // 1. 声明变量
    int _id;
    String releaseDate;
    String cupName;
    String cupFeature;

    // 定义常量
    public static String FieldTableCPU = "tblCPU";
    public static String FieldCPUId = "_id";
    public static String FieldReleaseDate = "releaseDate";
    public static String FieldCPUName = "cupName";
    public static String FieldCPUFeature = "cupFeature";

    // 构造方法重载实现数据的输入
    public CPU() {
        super();
    }

    public CPU(String date) {
        super();
        this.releaseDate = date;
    }

    public CPU(String date, String name) {
        super();
        this.releaseDate = date;
        this.cupName = name;
    }

    public CPU(String date, String name, String feature) {
        super();
        this.releaseDate = date;
        this.cupName = name;
        this.cupFeature = feature;
    }

}
