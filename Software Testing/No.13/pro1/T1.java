package pro1;

public class T1 {
	public int sjx(int a, int b, int c) {
		int shape = 0;
		if ((a + b > c) && (a + c > b) && (b + c > a)) {
			if (a == b || a == c || b == c) {
				if (a == b && b == c) {
					shape = 1;
				} else {
					shape = 2;
				}
			} else {
				shape = 3;
			}
			
		} else {
			shape = 4;
		}
		return shape;
	}
}



// 4 ��Ϊ����
// 3 һ������
// 2 ��������
// 1 �ȱ�����
