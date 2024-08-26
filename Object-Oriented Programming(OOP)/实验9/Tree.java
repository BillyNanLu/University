package com.task09;

public class Tree implements Root, Bolo, Branch, Leaf {
	@Override
	public void root() {
		show("土壤中", "吸收养份");
	}
	
	@Override
	public void bolo() {
		show("地面", "传递养份");
	}
	
	@Override
	public void branch() {
		show("树干上", "传递养份");
	}
	
	@Override
	public void leaf() {
		show("树梢", "光合作用");
	}
	
	void show(String part, String function) {      // 增加新的方法
		System.out.println("位置：" + part);
		System.out.println("功能：" + function + ";");
	}
	
}
