package pro1;

public class T1 {
	public int sort(int x, int y) {
		int sum = 0, i;
		for (i = 0; i <= 5; i++) {
			if (x > 0) {
				sum += i;
				break;
			}
			else {
				if (y > 0) {
					sum = sum + 2 * i;
				} else {
					sum = sum + 3 * i;
				}
			}
		}
		return sum;
	}
}
