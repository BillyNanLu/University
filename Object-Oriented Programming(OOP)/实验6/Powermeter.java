package com.task06;

import java.util.Scanner;

public class Powermeter {
	int lastRecord;
	int currentRecord;
	double price = 0.6;
	double fee;
	
	//	�������µ�����µ�����
	public void setRecord() {
		Scanner input = new Scanner(System.in);
		System.out.print("���������µ�������");
		lastRecord = input.nextInt();
		System.out.print("�����뱾�µ�������");
		currentRecord = input.nextInt();
	}
	
	//	��ʾ���µ�����µ�����
	public void showRecord() {
		System.out.println("���µ����� ��      " + lastRecord + "���µ�������      " + currentRecord);
	}
	
	// ���㱾���õ���
	public int calcUsedAmount() {
		int usedAmount = currentRecord - lastRecord;
		return usedAmount;
	}
	
	// ��ʾ�����õ���
	public void showUsedAmount() {
		System.out.println("�����õ������      " + calcUsedAmount());
	}
	
	// ���㱾���õ����
	public void calcUsedFee() {
		int usedAmount = calcUsedAmount();
		fee = usedAmount * price;
	}
	
	// ��ʾ�����õ����
	public void showFee() {
		System.out.println("���·��ã�      " + fee);
	}
}
