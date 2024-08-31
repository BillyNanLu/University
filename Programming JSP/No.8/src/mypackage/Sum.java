package mypackage;

public class Sum {
	int n;
	public void setN(int n) {
		this.n = n;
	}
	public int getN() {
		return n;
	}
	public int getSum() {
		int sum = 0;
		for (int j = 0; j <= n; j++)
			sum = sum + j;
		return sum;
	}
}
