package com.task10;

import java.util.*;

public class Array4_smallbig {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [] a = new int[10];
		Scanner input = new Scanner(System.in);
		for(int i = 0; i<10; i++) {
			System.out.print("请输入第" + (i + 1) + "个数: ");
			a[i] = input.nextInt();
		}
		Arrays.sort(a);
		System.out.print("由大到小排序后结果为: ");
		for(int i = a.length - 1; i >= 0; i--){
			System.out.print(a[i] + " ");
		}
	}

}
