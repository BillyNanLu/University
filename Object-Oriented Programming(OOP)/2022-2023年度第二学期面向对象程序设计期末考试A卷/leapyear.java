package task;
// 344121138 Â½éª

public class leapyear {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int year = 2000; year <= 2050; year++) {
			if(((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
				System.out.println(year);
		}
	}

}
//344121138 Â½éª
