package com.task07;

import java.util.Date;

public class CorporationTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Corporation corporation = new Corporation("Nan工作室", "上海市浦东新区银城中路501号上海中心大厦59层5909室", "021-38829981", "陆楠", newDate(2019,10,11));
		corporation.show();
		// 设置和获取单个属性值
		corporation.setCEO("陆楠");
		System.out.println("总经理: " + corporation.getCEO());
		corporation.show();
	}

	private static Date newDate(int i, int j, int k) {
		// TODO Auto-generated method stub
		return null;
	}

}
