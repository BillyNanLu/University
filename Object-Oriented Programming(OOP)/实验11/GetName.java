package com.task12;

import java.util.Scanner;

public class GetName {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		System.out.print("��������һ������: ");
		String name = input.next();
		int length = name.length();
		System.out.println("\n����: " + name.charAt(0));  // �����
		System.out.println("����: " + name.substring(1, length)); // �����
	}

}
