package pro1;

public class T2 {
	public int hs2(int x, int z, int y) {
		int k = 0;
		int j = 0;
		if (x > 3 && z < 10) {
			k = x * y - 1;
			j = k;
		}
		if ( x == 4 && y > 5)
			j = x * y + 10;
		j = j / 3;
		return j;
	}
}
