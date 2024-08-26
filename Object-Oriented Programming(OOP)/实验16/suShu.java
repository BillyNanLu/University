package com.task17;

public class suShu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i, k, m;
		for(k = 2; k<= 100; k++) {
			m = (int)Math.sqrt(k);
			for(i = 2; i <= m; i++) {
				if(k % i ==0) {
					break;
				}
			}
			if(i >= m + 1)
				System.out.println(k);
		}
	}

}
