package mypro;

public class Test2 {
	public int two() {
		int m = 0;
		for (int i = 1; i < 6; i++) {
			int n = 1;
			for (int j = 1; j < i + 1; j++) {
				n = n * j;
			}
			m = m + n;
		}
		return m;
	}
}
