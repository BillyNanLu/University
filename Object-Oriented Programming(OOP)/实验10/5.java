package com.task10;

import java.util.*;

public class Array5_finusmbg {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] a = new int[6];
		a[0] = 85;
		a[1] = 63;
		a[2] = 72;
		a[3] = 18;
		a[4] = 10;
		int i, j , x = 80;
		for(i = 0; i < a.length; i++) {
			if(a[i] < x)
				break;
		}
		for(j = a.length - 1; j >= i; j--) {
			a[j] = a[j - 1];
		}
		a[i] = x;
		Arrays.sort(a);
		for(i = a.length - 1; i >= 0; i--) {
			System.out.print(a[i] + " ");
		}
	}

}
