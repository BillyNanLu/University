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
		super("ģ���Ʊϵͳ");
		p = new JPanel();
		lblMsg = new JLabel("��������Ҫ���������(1-20)");
		lblResult1 = new JLabel("�뵥������������ť");
		lblResult2 = new JLabel("�ڴ���ʾ�н�����");
		txtNum = new JTextField(4);
		btn = new JButton("�� ��");
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
			lblResult1.setText("��ϲ��������һ�Ƚ���");
		} else if(input == num2) {
			lblResult1.setText("��ϲ�������˶��Ƚ���");
		} else if(input == num3) {
			lblResult1.setText("��ϲ�����������Ƚ���");
		} else {
			lblResult1.setText("лл���Ĺ����´κ��ˣ�");
			lblResult2.setText("һ�Ƚ���" + num1);
			lblResult2.setText(lblResult2.getText() + "���Ƚ���" + num2);
			lblResult2.setText(lblResult2.getText() + "���Ƚ���" + num3);
		}
	}

}
