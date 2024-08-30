package mypro;

public class Test { // 1 + 3 + 5 + ... + 50  + 53 + 56 + ... + 100 = 1983
	public int one() {
		int i = 1, sum = 0;
		for (; i <= 49; i += 2) {
			sum += i;
		}
		for (i = 50; i <= 98; i += 3) {
			sum += i;
		}
		sum += 100;
		return sum;
	}
}
