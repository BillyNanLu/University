package com.task17;

public class phone {
	public String downloadMusic() {
		return "���������ȫ������";
	}
	public void playMusic() {
		System.out.println("���ڲ���: " + downloadMusic());
	}
	public void chargeCell() {
		cell cell = new cell();
		cell.brand = "Anycall";
		cell.getPower();
	}
}
