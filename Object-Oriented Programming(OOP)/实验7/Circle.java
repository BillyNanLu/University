package com.task07;

public class Circle {
	// 计算圆的面积
	public double calculate(float r) {
		return Math.PI * r * r;
	}
	
	// 计算圆柱体的体积
	public double calculate(float r, float h) {
		return Math.PI * r * r * h;
	}
}
