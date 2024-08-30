package Capacity;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class CapacityCal extends JFrame {
	// 定义全局变量 全局对象
	JLabel lblTitle = new JLabel("容量计算系统", JLabel.CENTER);
	JLabel lblHdisk = new JLabel("请输入硬盘容量（GB）", JLabel.CENTER);
	JLabel lblHCapacity = new JLabel("硬盘的实际容量（GB）",  JLabel.CENTER);
	JLabel lblMdisk = new JLabel("请输入手机内存容量（GB）", JLabel.CENTER);
	JLabel lblMCapacity = new JLabel("手机的实际容量（GB）",  JLabel.CENTER);
	
	JTextField txtHdisk = new JTextField(20);
	JTextField txtHCapacity = new JTextField(20);
	JTextField txtMdisk = new JTextField(20);
	JTextField txtMCapacity = new JTextField(20);
	
	JButton btnCal = new JButton("计算");
	JButton btnClear = new JButton("清空");
	JButton btnExit = new JButton("退出");
	
	JPanel pnlMain = new JPanel();
	JPanel pnlNorth = new JPanel();
	JPanel pnlCenter = new JPanel();
	JPanel pnlSouth = new JPanel();
	
	// 书写构造方法初始化对象变量
	public CapacityCal() {
//		btnCal.addActionListener(this);
//		btnClear.addActionListener(this);
//		btnExit.addActionListener(this);
		
		pnlNorth.setLayout(new FlowLayout(FlowLayout.CENTER,5,5));
		pnlNorth.setBackground(Color.BLUE);
		pnlNorth.add(lblTitle);
		
		pnlCenter.setLayout(new GridLayout(4, 2, 5, 5));
		pnlCenter.setBackground(Color.pink);
		pnlCenter.add(lblHdisk);
		pnlCenter.add(txtHdisk);
		pnlCenter.add(lblHCapacity);
		pnlCenter.add(txtHCapacity);
		pnlCenter.add(lblMdisk);
		pnlCenter.add(txtMdisk);
		pnlCenter.add(lblMCapacity);
		pnlCenter.add(txtMCapacity);
		
		pnlSouth.setLayout(new FlowLayout(FlowLayout.CENTER,5,5));
		pnlSouth.setBackground(Color.green);
		pnlSouth.add(btnCal);
		pnlSouth.add(btnClear);
		pnlSouth.add(btnExit);
		
		pnlMain.setLayout(new BorderLayout(5,5));
		pnlMain.setBackground(Color.red);
		pnlMain.add("North", pnlNorth);
		pnlMain.add("Center", pnlCenter);
		pnlMain.add("South", pnlSouth);
		
		this.setContentPane(pnlMain);
	}
	
	// 书写整个程序的入口新建对象并调用相关的方法
	public static void main(String[] args) {
		CapacityCal cc = new CapacityCal();
		cc.setTitle("容量计算程序");
		cc.setBounds(300, 300, 350, 280);
		cc.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		cc.setVisible(true);
	}
}
