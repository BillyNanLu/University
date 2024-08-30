package pro2;

public class T2 {
	public int m(int a, int b, int c) {
		int x = 0;
		int y = 0;
		while (a > 0) {
			if (b > 0) {
				x = y + 2;
				break;
			} else {
				if (c > 0) {
					x = y + 10;
				} else {
					x = y + 20;
					break;
				}
			}
		}
		return x;
	}
}
