package com.task06;

public class PowermeterTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Powermeter powermeter = new Powermeter();
		powermeter.setRecord();
		powermeter.showRecord();
		powermeter.showUsedAmount();
		powermeter.calcUsedFee();
		powermeter.showFee();
	}

}
