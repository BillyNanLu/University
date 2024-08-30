package score;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Score extends JFrame implements ActionListener{
	String id, name, result, grade;
	double php, js, mysql, total, average;
	
	
	// 1. 定义全局变量 全局对象
	//  制作一个标签 放置标题
	JLabel lblTitle = new JLabel("学生成绩统计系统", JLabel.CENTER);
	
	// 标签数组
	JLabel [] lbl = new JLabel[7];
	String [] lblStr = {"No:", "Name:", "PHP:", "JavaScript+JQuery:", "MySQL:", "Total Score:", "Averag Score:" };

	// 文本框数组
	JTextField [] txt = new JTextField[7];

	
	// 按钮数组
	JButton [] btn = new JButton[3];
	String [] btnStr = {"Calc", "Clear", "Exit"};

	
	// 面板数组
	JPanel [] pnl = new JPanel[4];
	Color [] c = {Color.BLUE, Color.pink, Color.green, Color.red};
	LayoutManager [] lm = {
			new BorderLayout(5, 5),  // 东西南北中布局
			new FlowLayout(FlowLayout.CENTER, 5, 5),  // 自左向右 自上而下
			new GridLayout(7, 2, 5, 5),  // 7行2列表格
			new FlowLayout(FlowLayout.CENTER, 5, 5)  // 自左向右 自上而下
	};
	String[] posStr = {"North", "Center", "South"};  // 三个子面板的方位数组
	
	
	// 2. 书写构造方法 为所有标签、文本框、按钮初始化
	public Score() {
		// 为4个面板初始化
		for (int i = 0; i < pnl.length; i++) {
			pnl[i] = new JPanel(lm[i]);  // 为4个面板上分别设置4个布局
			pnl[i].setBackground(c[i]);  // 为4个面板上分别设置4个颜色
		}
		
		// 北面板上放置标题
		pnl[1].add(lblTitle);
		
		// 中面板上放置7个标签及7个文本框
		for (int i = 0; i < lbl.length; i++) {
			lbl[i] = new JLabel(lblStr[i], JLabel.CENTER);  // 在7个标签上分别放置7个标题
			txt[i] = new JTextField(20);  // 初始化7个文本框
			if(i == 5 || i == 6)
				txt[i].setEditable(false);
		}
		pnl[2].add(lbl[0]);
		pnl[2].add(txt[0]);
		pnl[2].add(lbl[1]);
		pnl[2].add(txt[1]);
		pnl[2].add(lbl[2]);
		pnl[2].add(txt[2]);
		pnl[2].add(lbl[3]);
		pnl[2].add(txt[3]);
		pnl[2].add(lbl[4]);
		pnl[2].add(txt[4]);
		pnl[2].add(lbl[5]);
		pnl[2].add(txt[5]);
		pnl[2].add(lbl[6]);
		pnl[2].add(txt[6]);
		
		// 在南面板上放置3个按钮
		for (int i = 0; i < btn.length; i++) {
			btn[i] = new JButton(btnStr[i]);  // 在三个按钮上分别放置3个标题
			btn[i].addActionListener(this);  // 为3个按钮添加监听器
			pnl[3].add(btn[i]);  // 在南面板依次放入按钮
		}
		
		// 在主面板上放置3个子面板
		for (int i = 0; i < pnl.length - 1; i++) {
			pnl[0].add(posStr[i], pnl[i + 1]);  // 在主面板上依次放入子面板
		}
		
		// 在窗体网格上放置主面板
		this.setContentPane(pnl[0]);
	}
	

	// 3. 新建整个程序的入口 调用超类方法显示整个窗口内容
	public static void main(String [] args) {
		Score sc = new Score();
		sc.setTitle("学生成绩统计系统");  // 窗口标题
		sc.setBounds(700, 400, 400, 350);  // 窗口大小
		sc.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		sc.setVisible(true);
	}
	
	
	// 4. 重写超类的抽象方法 实现程序的算法
	@Override
	public void actionPerformed(ActionEvent ae) {
		// TODO Auto-generated method stub
		if (ae.getSource() == btn[0]) {
			out1();
			
			grade();
			
			out2();
		}
		else if (ae.getSource() == btn[1]) {
			clear();
		} else System.exit(0);   // 退出程序	
	}
	
	
	
	
	public void out1() {
		total = Double.parseDouble(txt[2].getText()) + Double.parseDouble(txt[3].getText()) + Double.parseDouble(txt[4].getText());
		average = total / 3;
		txt[5].setText(String.format("%.2f", total));
		txt[6].setText(String.format("%.2f", average));
	}
	
	public void grade() {
		if (average >= 90)
			grade = "优秀";
		else if (average >= 80 && average <= 89)
			grade = "良好";
		else if (average >= 70 && average <= 79)
			grade = "中等";
		else if (average >= 60 && average <= 69)
			grade = "合格";
		else
			grade = "不及格";
	}
	
	public void clear() {
		for (int i = 0; i < txt.length; i++) {
			txt[i].setText("");   // 清空5个文本框
		}
		txt[0].requestFocus();   // 将光标移回第一个文本框
	}
	
	public void out2() {
		result = "学号为：" + txt[0].getText() + "，姓名为：" + txt[1].getText() + "的等级是：" + grade;
		JOptionPane.showMessageDialog(null, result);
	}

}
























