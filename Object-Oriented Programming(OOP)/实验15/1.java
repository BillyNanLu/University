package com.task16;

import java.awt.*;
import javax.swing.*;

public class ComponentDemo extends JFrame{
	public static void main(String[]args) {
		new ComponentDemo();
	}
	JPanel p;
	JTextField number;
	JTextField name;
	JTextField age;
	JTextArea summary;
	JButton ok;
	JButton cancel;
	public ComponentDemo() {
		super("ѧ����Ϣ�Ǽǽ���");
		p = new JPanel();
		number = new JTextField(5);
		name = new JTextField(18);
		age = new JTextField("20");
		summary = new JTextArea("���ڴ�������˼�飡", 4, 20);
		ok = new JButton("ȷ��");
		cancel = new JButton("ȡ��");
		p.add(new JLabel("ѧ��: "));
		p.add(number);
		p.add(new JLabel("����: "));
		p.add(name);
		p.add(new JLabel("����: "));
		p.add(age);
		p.add(new JLabel("���˼��: "));
		p.add(summary);
		p.add(ok);
		p.add(cancel);
		this.setContentPane(p);
		this.setSize(400, 300);
		this.setVisible(true);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

	}
}
