//1.自定义包
package soft221;

//2.导入系统包
import java.lang.*;
import java.io.*;
import java.awt.*;
import javax.swing.*;
import java.awt.event.*;  //事件第一步：导入基本事件包

//3.书写主类，实现一个登录窗口(事件第二步在单继承后实现事件接口)
public class LoginWin extends JFrame implements ActionListener{
	//3.1制作一个标签，放置标题
	JLabel lblTitle=new JLabel("王者荣耀登录系统");

	//3.2制作标签数组
	JLabel [] lbl=new JLabel[4];
	String [] lblStr={"用户名：","密码：","密码确认","ZxPq"}; //标签上的文本
	
	//3.3制作文本框数组
	JTextField []  txt=new JTextField[4];
	
	//3.4制作按钮数组
	JButton [] btn=new JButton[3];
	String [] btnStr={"登录","取消","退出"};
	
	//3.5制作面板数组
	JPanel [] pnl=new JPanel[4];
	Color [] c={Color.red,Color.pink,Color.green,Color.blue};
	LayoutManager [] lm={
			new BorderLayout(5,5),//东西南北中布局
			new FlowLayout(FlowLayout.CENTER,5,5),//自左向右，自上而下
			new GridLayout(4,2,5,5),//4行2列的表格
			new FlowLayout(FlowLayout.CENTER,5,5)};//自左向右，自上而下
	String [] posStr={"North","Center","South"};//三个子面板的方位数组
	
	//3.6制作备用密码框数组
		JPasswordField [] pwd=new JPasswordField[2];
	
	//3.7书写构造方法，为所有标签、文本框、按钮初始化
	public LoginWin(){
		//3.7.1为4个面板实初始化
		for(int i=0;i<pnl.length;i++){
			pnl[i]=new JPanel(lm[i]);//在4个面板上分别设置4个布局
			pnl[i].setBackground(c[i]);//为4个面板上分别设置4个颜色
		}
		
		//3.7.2在北面板上放置标题
		pnl[1].add(lblTitle);
		
		//3.7.3在中面板上放置4个标签及4个文本框
		for(int i=0;i<lbl.length;i++){
			lbl[i]=new JLabel(lblStr[i],JLabel.CENTER);//在4个标签上分别放置4个标题	
			if (i<2){
				pwd[i]=new JPasswordField(20);//初始化2个密码框
			}			
			txt[i]=new JTextField(20);//初始化4个文本框
		}
		pnl[2].add(lbl[0]);
		pnl[2].add(txt[0]);
		pnl[2].add(lbl[1]);
		pnl[2].add(pwd[0]);
		pnl[2].add(lbl[2]);
		pnl[2].add(pwd[1]);
		pnl[2].add(lbl[3]);
		pnl[2].add(txt[3]);
		
		//3.7.4在南面板上放置3个按钮
		for(int i=0;i<btn.length;i++){
			btn[i]=new JButton(btnStr[i]);//在3个按钮上分别放置3个标题
			btn[i].addActionListener(this);//事件第三步：为3个按钮添加动作监听器
			pnl[3].add(btn[i]);//在南面板依次放入按钮
		}
		
		//3.7.5在主面板上放置3个子面板
		for(int i=0;i<pnl.length-1;i++){			
			pnl[0].add(posStr[i],pnl[i+1]);//在主面板上依次放入子面板
		}
		//pnl[0].add("North",pnl[1]);
		//pnl[0].add("Center",pnl[2]);
		//pnl[0].add("South",pnl[3]);
		
		//3.7.6在窗体的网格上放置主面板
		this.setContentPane(pnl[0]);
	}
	
	//3.8 新建整个程序的入口，调用超类方法显示整个窗口内容。
	public static void main(String [] args){
		LoginWin lw=new LoginWin();
		lw.setTitle("王者荣耀登录系统");//窗口标题
		lw.setBounds(400,400,300,250);//窗口大小
		lw.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//窗口关闭
		lw.setVisible(true);//窗口可见
	}
	
	//3.9事件的第四步： 重写超类的抽象事件方法，实现程序的算法
	public void actionPerformed(ActionEvent ae){
		if (ae.getSource()==btn[0]){
			if (txt[0].getText().equals("admin") && 
					pwd[0].getText().equals("123456") && 
					pwd[1].getText().equals("123456") && 
					txt[3].getText().equals("ZxPq")){
				JOptionPane.showMessageDialog(null, "登录成功",
						"Successful",JOptionPane.INFORMATION_MESSAGE);
			}else{
				JOptionPane.showMessageDialog(null, "登录失败",
						"Failure",JOptionPane.ERROR_MESSAGE);
			}				
		}else if(ae.getSource()==btn[1]){
			for(int i=0;i<txt.length;i++){
				txt[i].setText("");//清空4个文本框
				if(i<2){
					pwd[i].setText("");//清空2个密码框
				}
			}
			txt[0].requestFocus();//将光标移回第一个文本框
		}else{
			System.exit(0);//退出应用程序
		}
	}
}