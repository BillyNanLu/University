package com.task14;

public class TException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			System.out.print(3 / 0);
		} catch (ArithmeticException ae) {
			ae.printStackTrace();
		}
	}

}
