package pro1;

public class T1 {
	public int sort(int a, int b, int x) {
		if (a > 1 && b == 0)
			x = (int)x / a;
		if (a == 2 || x > 1)
			x = x + 1;
		return x;
	}
}
