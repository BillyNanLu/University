package com.task06;

import java.util.Scanner;

public class Powermeter {
	int lastRecord;
	int currentRecord;
	double price = 0.6;
	double fee;
	
	//	设置上月电表、本月电表读数
	public void setRecord() {
		Scanner input = new Scanner(System.in);
		System.out.print("请输入上月电表读数：");
		lastRecord = input.nextInt();
		System.out.print("请输入本月电表读数：");
		currentRecord = input.nextInt();
	}
	
	//	显示上月电表、本月电表读数
	public void showRecord() {
		System.out.println("上月电表读数 ：      " + lastRecord + "本月电表读数：      " + currentRecord);
	}
	
	// 计算本月用电数
	public int calcUsedAmount() {
		int usedAmount = currentRecord - lastRecord;
		return usedAmount;
	}
	
	// 显示本月用电数
	public void showUsedAmount() {
		System.out.println("本月用电度数：      " + calcUsedAmount());
	}
	
	// 计算本月用电费用
	public void calcUsedFee() {
		int usedAmount = calcUsedAmount();
		fee = usedAmount * price;
	}
	
	// 显示本月用电费用
	public void showFee() {
		System.out.println("本月费用：      " + fee);
	}
}
