package com.task12;

import java.util.Scanner;

public class GetName {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		System.out.print("输入任意一个姓名: ");
		String name = input.next();
		int length = name.length();
		System.out.println("\n姓氏: " + name.charAt(0));  // 获得姓
		System.out.println("名字: " + name.substring(1, length)); // 获得名
	}

}
