package com.task10;

import java.util.*;

public class Array4_smallbig {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [] a = new int[10];
		Scanner input = new Scanner(System.in);
		for(int i = 0; i<10; i++) {
			System.out.print("�������" + (i + 1) + "����: ");
			a[i] = input.nextInt();
		}
		Arrays.sort(a);
		System.out.print("�ɴ�С�������Ϊ: ");
		for(int i = a.length - 1; i >= 0; i--){
			System.out.print(a[i] + " ");
		}
	}

}
