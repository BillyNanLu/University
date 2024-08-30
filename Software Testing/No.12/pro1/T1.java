package pro1;

public class T1 {
	public int sort(int a, int b) {
		int x = 0;
		int k = 1;
		if (a > 5 && b > 10) {
			x = k * a * a * b;
		} else {
			if (b > 0 && a > 0) {
				x = (int)Math.sqrt(a + k);
			} else {
				x = (int)Math.pow(x + b + k, 5);
			}
		}
		return x;
	}
}
