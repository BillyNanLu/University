package com.task07;

import java.util.Date;

public class CorporationTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Corporation corporation = new Corporation("Nan������", "�Ϻ����ֶ�����������·501���Ϻ����Ĵ���59��5909��", "021-38829981", "½�", newDate(2019,10,11));
		corporation.show();
		// ���úͻ�ȡ��������ֵ
		corporation.setCEO("½�");
		System.out.println("�ܾ���: " + corporation.getCEO());
		corporation.show();
	}

	private static Date newDate(int i, int j, int k) {
		// TODO Auto-generated method stub
		return null;
	}

}
