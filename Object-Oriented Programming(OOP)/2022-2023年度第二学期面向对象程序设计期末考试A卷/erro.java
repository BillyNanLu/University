package task;
// 344121138 ½�
import java.util.Scanner;

public class erro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner in = new Scanner(System.in);
		try {
			String str = in.nextLine();
			double doub = Double.parseDouble(str);
		} catch(NumberFormatException ne) {
			System.out.println("�쳣1");
			ne.printStackTrace();
		} catch(Exception e) {
			System.out.println("�쳣2");
			e.printStackTrace();
		} finally {
			System.out.println("�쳣�����걸");
		}
	}

}
//344121138 ½�
