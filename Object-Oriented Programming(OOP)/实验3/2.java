package com.task04;

import javax.swing.*;

public class leapyear {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double year = 0.0;
		year = Double.parseDouble(JOptionPane.showInputDialog("请输入要判断的年份: ", new Double(year)));
		// year = Integer.parseInt(args[0]);
		boolean leap = false;
		// System.out.println("请输入要判断的年份: ");
		// System.out.println("您输入的年份为"+year);
		if ((year % 4 == 0) && (year % 100 != 0))
			leap = true;
		else if (year % 400 == 0)
			leap = true;
		else
			leap = false;
		if (leap == true)
			System.out.println(year+"is leap year");
		else
			System.out.println(year+"is not leap year");


	}

}
