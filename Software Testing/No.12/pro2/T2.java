package pro2;

public class T2 {
	public int tran(int a, int b, int c) {
		int e = 1, f = 1, g = 1, h = 1;
		if ((a < b + c) || (b < a + c) || (c < a + b)) {
			if ((a == b) || (b == c) || (a == c)) {
				if ((a == b) && (b == c)) {
					return e;
				} else {
					return f;
				}
			} else {
				return e;
			}
		} else {
			return h;
		}
	}
}
