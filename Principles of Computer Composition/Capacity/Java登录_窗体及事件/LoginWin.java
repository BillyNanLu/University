//1.�Զ����
package soft221;

//2.����ϵͳ��
import java.lang.*;
import java.io.*;
import java.awt.*;
import javax.swing.*;
import java.awt.event.*;  //�¼���һ������������¼���

//3.��д���࣬ʵ��һ����¼����(�¼��ڶ����ڵ��̳к�ʵ���¼��ӿ�)
public class LoginWin extends JFrame implements ActionListener{
	//3.1����һ����ǩ�����ñ���
	JLabel lblTitle=new JLabel("������ҫ��¼ϵͳ");

	//3.2������ǩ����
	JLabel [] lbl=new JLabel[4];
	String [] lblStr={"�û�����","���룺","����ȷ��","ZxPq"}; //��ǩ�ϵ��ı�
	
	//3.3�����ı�������
	JTextField []  txt=new JTextField[4];
	
	//3.4������ť����
	JButton [] btn=new JButton[3];
	String [] btnStr={"��¼","ȡ��","�˳�"};
	
	//3.5�����������
	JPanel [] pnl=new JPanel[4];
	Color [] c={Color.red,Color.pink,Color.green,Color.blue};
	LayoutManager [] lm={
			new BorderLayout(5,5),//�����ϱ��в���
			new FlowLayout(FlowLayout.CENTER,5,5),//�������ң����϶���
			new GridLayout(4,2,5,5),//4��2�еı��
			new FlowLayout(FlowLayout.CENTER,5,5)};//�������ң����϶���
	String [] posStr={"North","Center","South"};//���������ķ�λ����
	
	//3.6�����������������
		JPasswordField [] pwd=new JPasswordField[2];
	
	//3.7��д���췽����Ϊ���б�ǩ���ı��򡢰�ť��ʼ��
	public LoginWin(){
		//3.7.1Ϊ4�����ʵ��ʼ��
		for(int i=0;i<pnl.length;i++){
			pnl[i]=new JPanel(lm[i]);//��4������Ϸֱ�����4������
			pnl[i].setBackground(c[i]);//Ϊ4������Ϸֱ�����4����ɫ
		}
		
		//3.7.2�ڱ�����Ϸ��ñ���
		pnl[1].add(lblTitle);
		
		//3.7.3��������Ϸ���4����ǩ��4���ı���
		for(int i=0;i<lbl.length;i++){
			lbl[i]=new JLabel(lblStr[i],JLabel.CENTER);//��4����ǩ�Ϸֱ����4������	
			if (i<2){
				pwd[i]=new JPasswordField(20);//��ʼ��2�������
			}			
			txt[i]=new JTextField(20);//��ʼ��4���ı���
		}
		pnl[2].add(lbl[0]);
		pnl[2].add(txt[0]);
		pnl[2].add(lbl[1]);
		pnl[2].add(pwd[0]);
		pnl[2].add(lbl[2]);
		pnl[2].add(pwd[1]);
		pnl[2].add(lbl[3]);
		pnl[2].add(txt[3]);
		
		//3.7.4��������Ϸ���3����ť
		for(int i=0;i<btn.length;i++){
			btn[i]=new JButton(btnStr[i]);//��3����ť�Ϸֱ����3������
			btn[i].addActionListener(this);//�¼���������Ϊ3����ť��Ӷ���������
			pnl[3].add(btn[i]);//����������η��밴ť
		}
		
		//3.7.5��������Ϸ���3�������
		for(int i=0;i<pnl.length-1;i++){			
			pnl[0].add(posStr[i],pnl[i+1]);//������������η��������
		}
		//pnl[0].add("North",pnl[1]);
		//pnl[0].add("Center",pnl[2]);
		//pnl[0].add("South",pnl[3]);
		
		//3.7.6�ڴ���������Ϸ��������
		this.setContentPane(pnl[0]);
	}
	
	//3.8 �½������������ڣ����ó��෽����ʾ�����������ݡ�
	public static void main(String [] args){
		LoginWin lw=new LoginWin();
		lw.setTitle("������ҫ��¼ϵͳ");//���ڱ���
		lw.setBounds(400,400,300,250);//���ڴ�С
		lw.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//���ڹر�
		lw.setVisible(true);//���ڿɼ�
	}
	
	//3.9�¼��ĵ��Ĳ��� ��д����ĳ����¼�������ʵ�ֳ�����㷨
	public void actionPerformed(ActionEvent ae){
		if (ae.getSource()==btn[0]){
			if (txt[0].getText().equals("admin") && 
					pwd[0].getText().equals("123456") && 
					pwd[1].getText().equals("123456") && 
					txt[3].getText().equals("ZxPq")){
				JOptionPane.showMessageDialog(null, "��¼�ɹ�",
						"Successful",JOptionPane.INFORMATION_MESSAGE);
			}else{
				JOptionPane.showMessageDialog(null, "��¼ʧ��",
						"Failure",JOptionPane.ERROR_MESSAGE);
			}				
		}else if(ae.getSource()==btn[1]){
			for(int i=0;i<txt.length;i++){
				txt[i].setText("");//���4���ı���
				if(i<2){
					pwd[i].setText("");//���2�������
				}
			}
			txt[0].requestFocus();//������ƻص�һ���ı���
		}else{
			System.exit(0);//�˳�Ӧ�ó���
		}
	}
}