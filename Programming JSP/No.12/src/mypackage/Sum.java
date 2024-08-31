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
		for (int i = 0; i < n; i++)
			sum += i;
		return sum;
	}
}
