package com.task05;

// �ֻ���

public class Phone {
	public String downloadMusic() {
		return "ʧ��ɳ��";
	}
	public void playMusic() {
		System.out.println("���ڲ���: " + downloadMusic());
	}
	
	public void chargeCell() {
		Cell cell = new Cell();
		cell.brand = "Anycall";
		cell.getPower();
	}
}
