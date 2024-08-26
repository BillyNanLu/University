package com.task10;

public class Array2_Phone {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [] a = {2800, 2900, 2750, 3100};
		int x = a[0];
		for (int i = 1; i < a.length; i++) {
			if (x > a[i]) {
				x = a[i];
			}
		}
		System.out.println("×îµÍ¼ÛÎª" + x);
	}

}
