package com.task07;

import java.util.Date;

public class Corporation {
	// 名称、地址、电话、总经理名称、成立时间
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
	
	// 对 Corporation 类进行设置和获取单个属性的值
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
	
	// 显示公司信息
	@SuppressWarnings("deprecation")
	public void show() {
		System.out.println("公司名称: " + coName);
		System.out.println("公司地址: " + coAddress);
		System.out.println("公司电话: " + coTel);
		System.out.println("总经理: " + CEO);
		System.out.println("成立时间: " +  coFoundationDate.getYear() + "年" +  coFoundationDate.getMonth() + "月" + coFoundationDate.getDate() + "日");
	}
}
