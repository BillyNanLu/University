package BitOperation;

public class Test1 {
	public static void main(String[] args) {
		// System.out.println("Hello");
		int n1, n2, yu, huo, yihuo, fei1, fei2;
		n1 = 7;
		n2 = 3;
		yu = n1 & n2;
		huo = n1 | n2;
		yihuo = n1 ^ n2;
		fei1 = ~n1;
		fei2 = ~n2;
		
		System.out.println("7 & 3 = " + yu);
		System.out.println("7 | 3 = " + huo);
		System.out.println("7 ^ 3 = " + yihuo);
		System.out.println("~7 = " + fei1);
		System.out.println("~3 = " + fei2);
	}
}
