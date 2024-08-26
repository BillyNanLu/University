package com.task07;

import java.util.Date;

public class Corporation {
	// ���ơ���ַ���绰���ܾ������ơ�����ʱ��
	private String coName;
	private String coAddress;
	private String coTel;
	private String CEO;
	private Date coFoundationDate;
	
	public Corporation(){}
	
	public Corporation(String coName, String coAddress, String coTel, String ceo, Date coFoundationDate) {
		this.coName = coName;
		this.coAddress = coAddress;
		this.coTel = coTel;
		CEO = ceo;
		this.coFoundationDate = coFoundationDate;
	}
	
	// �� Corporation ��������úͻ�ȡ�������Ե�ֵ
	public String getCoName() {
		return coName;
	}
	public void setCoName(String coName) {
		this.coName = coName;
	}
	public String getCoAddress() {
		return coAddress;
	}
	public void setCoAddress(String coAddress) {
		this.coAddress = coAddress;
	}
	public String getCoTel() {
		return coTel;
	}
	public void setCoTel(String coTel) {
		this.coTel = coTel;
	}
	public String getCEO() {
		return CEO;
	}
	public void setCEO(String ceo) {
		CEO = ceo;
	}
	public Date getCoFoundationDate() {
		return coFoundationDate;
	}
	public void setCofoundationDate(Date coFoundationDate) {
		this.coFoundationDate = coFoundationDate;
	}
	
	// ��ʾ��˾��Ϣ
	@SuppressWarnings("deprecation")
	public void show() {
		System.out.println("��˾����: " + coName);
		System.out.println("��˾��ַ: " + coAddress);
		System.out.println("��˾�绰: " + coTel);
		System.out.println("�ܾ���: " + CEO);
		System.out.println("����ʱ��: " +  coFoundationDate.getYear() + "��" +  coFoundationDate.getMonth() + "��" + coFoundationDate.getDate() + "��");
	}
}
