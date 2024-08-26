package com.task17;

public class phone {
	public String downloadMusic() {
		return "就让这大雨全部落下";
	}
	public void playMusic() {
		System.out.println("正在播放: " + downloadMusic());
	}
	public void chargeCell() {
		cell cell = new cell();
		cell.brand = "Anycall";
		cell.getPower();
	}
}
