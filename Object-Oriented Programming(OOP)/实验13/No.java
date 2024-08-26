package com.task14;

import java.util.Scanner;

public class No {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		try {
			String a = in.nextLine();
			int i = Integer.parseInt(a);
			if (i <= 0) {
				throw new NumberFormatException();
			}
			long b = 1;
			for (;i > 1; i--) {
				b = i * b;
			}
			System.out.println("n!=" + b);
		} catch (NumberFormatException ne) {
			System.out.println("输入格式不对，请重新输入一个整数");
		}
	}

}
