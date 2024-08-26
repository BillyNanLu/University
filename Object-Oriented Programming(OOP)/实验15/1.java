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
		super("学生信息登记界面");
		p = new JPanel();
		number = new JTextField(5);
		name = new JTextField(18);
		age = new JTextField("20");
		summary = new JTextArea("请在此输入个人简介！", 4, 20);
		ok = new JButton("确定");
		cancel = new JButton("取消");
		p.add(new JLabel("学号: "));
		p.add(number);
		p.add(new JLabel("姓名: "));
		p.add(name);
		p.add(new JLabel("年龄: "));
		p.add(age);
		p.add(new JLabel("个人简介: "));
		p.add(summary);
		p.add(ok);
		p.add(cancel);
		this.setContentPane(p);
		this.setSize(400, 300);
		this.setVisible(true);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

	}
}
