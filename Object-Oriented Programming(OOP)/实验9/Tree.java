package com.task09;

public class Tree implements Root, Bolo, Branch, Leaf {
	@Override
	public void root() {
		show("������", "��������");
	}
	
	@Override
	public void bolo() {
		show("����", "��������");
	}
	
	@Override
	public void branch() {
		show("������", "��������");
	}
	
	@Override
	public void leaf() {
		show("����", "�������");
	}
	
	void show(String part, String function) {      // �����µķ���
		System.out.println("λ�ã�" + part);
		System.out.println("���ܣ�" + function + ";");
	}
	
}
