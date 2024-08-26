package com.task05;

public class Teacher {
	String name;	// 姓名
	String course;	// 教授课程
	String dep;		// 专业方向
	int teaYear;	// 教龄
	public String toString() {
		return name + "\n 教授课程: " + course + "\n 专业方向: " + dep + "\n 教龄: " + teaYear;
	}
}
