package pro1;

public class T1 {
	public int m(int iRecordNum, int iType) {
		int x = 0;
		int y = 0;
		if ((iRecordNum--) > 0) {
			if (iType == 0) {
				x = y + 2;
			}
			else {
				if (iType == 1) {
					x = y + 10;
				}
				else {
					x = y + 20;
				}
			}
		}
		return x;
	}
}
