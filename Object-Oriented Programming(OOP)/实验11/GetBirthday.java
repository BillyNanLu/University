package com.task12;

import java.util.Scanner;

public class GetBirthday {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print("�������û������֤����: ");
		Scanner input = new Scanner(System.in);
		String id = input.next();
		String year = "";
		String month = "";
		String day = "";
		if(id.length() != 18) {
			System.out.println("\n ���֤������Ч!");
		} else {
			year = id.substring(6, 10);
			month = id.substring(10, 12);
			day = id.substring(12, 14);
			System.out.println("\n ���û�������: " + year + "��" + month + "��" + day + "��");
		}
	}

}
