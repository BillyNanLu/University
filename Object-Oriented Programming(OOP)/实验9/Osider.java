package com.task09;

public class Osider extends Tree implements Flower {
	@Override
	public void flower() {
		super.show("����û�л�", "��");
	}
	
	@Override
	public void leaf() {
		super.leaf();
		System.out.println("��ɫ:��ɫ");
	}
}
