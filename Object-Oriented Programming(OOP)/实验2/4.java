package cms.test02;

public class Triangle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		init();
	}

	private static void init(){
		for(int i = 0; i < 8; i++){
			for(int j = 0; j <= i; j++){
				System.out.print(" *");
			}
			System.out.println();
		}
	}
}
