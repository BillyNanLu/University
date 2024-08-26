package com.task05;

// 手机类

public class Phone {
	public String downloadMusic() {
		return "失落沙洲";
	}
	public void playMusic() {
		System.out.println("正在播放: " + downloadMusic());
	}
	
	public void chargeCell() {
		Cell cell = new Cell();
		cell.brand = "Anycall";
		cell.getPower();
	}
}
