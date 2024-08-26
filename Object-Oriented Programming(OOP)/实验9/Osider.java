package com.task09;

public class Osider extends Tree implements Flower {
	@Override
	public void flower() {
		super.show("柳树没有花", "无");
	}
	
	@Override
	public void leaf() {
		super.leaf();
		System.out.println("绿色:绿色");
	}
}
