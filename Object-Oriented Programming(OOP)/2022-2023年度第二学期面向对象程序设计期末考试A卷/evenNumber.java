package task;
// 344121138 Â½éª

public class evenNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] num = new int[50];
		int i = 2;
		int j = 0;
		while(i <= 100) {
			num[j] = i;
			i = i + 2;
			j++;
		}
		for(i = 0; i < num.length; i++)
			System.out.println("num["+i+"] =" + num[i]);
	}

}
//344121138 Â½éª
// Êä³ö¼ûÓÒ±ß
