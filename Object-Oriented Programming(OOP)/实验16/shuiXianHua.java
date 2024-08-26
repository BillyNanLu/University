package com.task17;

public class shuiXianHua {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int d1, d2, d3, i, j;
		for(i = 100; i <= 999; i++) {
			d3  = i % 10;
			j = i/10;
			d2 = j % 10;
			d1 = j / 10;
			if(i == d1*d1*d1 + d2*d2*d2 + d3*d3*d3)
				System.out.println(i);
		}
	}

}
