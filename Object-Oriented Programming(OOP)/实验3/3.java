package com.task04;

public class max {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	// double x = 0, y = 0, z = 0, max = 0;
	int i;
	int [] arg = {99, 82, 98};
	int max;
	max = arg[0];
	// x = Double.parseDouble(args[0]);
	// y = Double.parseDouble(args[1]);
	// z = Double.parseDouble(args[2]);
	for (i = 1; i < arg.length; i++) {
		if (max < arg[i]){
			max = arg[i];
		}
	}
	System.out.println(max);
	}

}
