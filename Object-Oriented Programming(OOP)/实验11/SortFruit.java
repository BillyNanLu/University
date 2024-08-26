package com.task12;

import java.util.*;

public class SortFruit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String fruit[] = new String[5];
		Scanner input = new Scanner(System.in);
		for(int i = 0; i < fruit.length; i++) {
			System.out.print("请输入第" + (i + 1) + "种水果: ");
			fruit[i] = input.next();
		}
		Arrays.sort(fruit);
		System.out.println("\n 这些水果在字典中出现的顺序是: ");
		for(int i = 0; i <fruit.length; i++) {
			System.out.println(fruit[i]);
		}
	}

}
