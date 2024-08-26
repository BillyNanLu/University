package com.task16;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Lottery  extends JFrame implements ActionListener{

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new Lottery();
	}
	
	int num1, num2, num3, input;
	JPanel p;
	JLabel lblMsg;
	JLabel lblResult1;
	JLabel lblResult2;
	JTextField txtNum;
	JButton btn;
	
	public Lottery() {
		super("模拟彩票系统");
		p = new JPanel();
		lblMsg = new JLabel("请输入您要购买的数字(1-20)");
		lblResult1 = new JLabel("请单击“开奖”按钮");
		lblResult2 = new JLabel("在此显示中奖号码");
		txtNum = new JTextField(4);
		btn = new JButton("开 奖");
		btn.addActionListener(this);
		p.add(lblMsg);
		p.add(txtNum);
		p.add(btn);
		p.add(lblResult1);
		p.add(lblResult2);
		this.setContentPane(p);
		this.setSize(400, 300);
		this.setVisible(true);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

	public void actionPerformed(ActionEvent e) {
		input = Integer.parseInt(txtNum.getText());
		num1 = (int)(Math.random()*20) + 1;
		do {
			num2 = (int)(Math.random()*20);
		} while(num2 == num1);
		do {
			num3 = (int)(Math.random()*20) + 1;
		} while((num3 == num1)||(num3 == num2));
		if(input == num1) {
			lblResult1.setText("恭喜您，中了一等奖！");
		} else if(input == num2) {
			lblResult1.setText("恭喜您，中了二等奖！");
		} else if(input == num3) {
			lblResult1.setText("恭喜您，中了三等奖！");
		} else {
			lblResult1.setText("谢谢您的购买，下次好运！");
			lblResult2.setText("一等奖是" + num1);
			lblResult2.setText(lblResult2.getText() + "二等奖是" + num2);
			lblResult2.setText(lblResult2.getText() + "三等奖是" + num3);
		}
	}

}
