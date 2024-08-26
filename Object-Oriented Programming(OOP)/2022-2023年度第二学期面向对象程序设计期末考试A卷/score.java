package task;
// 344121138 陆楠
import javax.swing.*;

public class score {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double score = 0.0;
		score = Double.parseDouble(JOptionPane.showInputDialog("请输入百分制得成绩", new Double(score)));
		if(score > 100)
			System.out.println("请您输入有效的百分制成绩(0-100)");
		else if(score > 90)
			System.out.println("A");
		else if(score > 80)
			System.out.println("B");
		else if(score > 70)
			System.out.println("C");
		else if(score > 60)
			System.out.println("D");
		else if(score > 0)
			System.out.println("E");
		else
			System.out.println("请您输入有效的百分制成绩");
	}

}
