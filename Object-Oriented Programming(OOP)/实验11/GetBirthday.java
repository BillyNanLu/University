package com.task12;

import java.util.Scanner;

public class GetBirthday {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print("请输入用户的身份证号码: ");
		Scanner input = new Scanner(System.in);
		String id = input.next();
		String year = "";
		String month = "";
		String day = "";
		if(id.length() != 18) {
			System.out.println("\n 身份证号码无效!");
		} else {
			year = id.substring(6, 10);
			month = id.substring(10, 12);
			day = id.substring(12, 14);
			System.out.println("\n 该用户生日是: " + year + "年" + month + "月" + day + "日");
		}
	}

}
