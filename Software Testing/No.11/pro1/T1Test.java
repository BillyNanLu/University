package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testsort() {
		Assert.assertEquals(0, new T1().sort(1, 0, 0));
		Assert.assertEquals(3, new T1().sort(2, 1, 2));
		Assert.assertEquals(1, new T1().sort(2, 0, 0));
		Assert.assertEquals(3, new T1().sort(1, 0, 2));
	}
}
