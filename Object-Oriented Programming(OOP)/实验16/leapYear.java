package com.task17;

import javax.swing.JOptionPane;

public class leapYear {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double year = 0.0;
		year = Double.parseDouble(JOptionPane.showInputDialog("������Ҫ�жϵ���ݣ�", new Double(year)));
		boolean leap = false;
		System.out.println("����������Ϊ" + year);
		if((year % 400 == 0)&& (year % 100 != 0))
			leap = true;
		else if(year % 400 == 0)
			leap = true;
		else
			leap = false;
		if(leap == true)
			System.out.println(year + "is leap year");
		else
			System.out.println(year + "is not leap year");
	}

}
