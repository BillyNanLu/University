// 键盘输入

package BitOperation;

import java.util.*;

public class Test2 {
	public static void main(String[] args) {
		int yu, huo,  fei1, fei2, yihuo;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please input the first number：");
		int n1 = sc.nextInt();
		System.out.println("Please input the second number：");
		int n2 = sc.nextInt();
		
		yu = n1 & n2;
		huo = n1 | n2;
		fei1 = ~n1;
		fei2 = ~n2;
		yihuo = n1 ^ n2;
		
		System.out.println(n1 + " & " + n2 +  " = " + yu);
		System.out.println(n1 + " & " + n2 +  " = " + huo);
		System.out.println("~" + n1 + " = " + fei1);
		System.out.println("~" + n2 + " = " + fei2);
		System.out.println(n1 + " ^ " + n2 + " = " + yihuo);
	}
}
