package com.task10;

public class Array1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] num = new int[50];
		int i = 2;
		int j = 0;
		while (i <= 100) {  // 数字在100以内
			num[j] = i;
			i = i + 2;
			j++;
		}
		for(i = 0; i < num.length; i++)
			System.out.println("num["+i+"]=" + num[i]);
	}

}
