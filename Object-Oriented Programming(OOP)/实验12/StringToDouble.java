package com.task13;

import java.util.Scanner;

public class StringToDouble {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		try {
			String str = in.nextLine();
			double doub = Double.parseDouble(str);
		} catch(NumberFormatException ne) {
			System.out.println("异常1");
			ne.printStackTrace();
		} catch(Exception e) {
			System.out.println("异常2");
			e.printStackTrace();
		} finally {
			System.out.println("异常处理完备");
		}
	}

}
