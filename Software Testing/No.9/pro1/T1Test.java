package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testsort() {
		Assert.assertEquals(0, new T1().sort(0, 0));
		Assert.assertEquals(2, new T1().sort(2, 0));
		Assert.assertEquals(10, new T1().sort(2, 1));
		Assert.assertEquals(20, new T1().sort(2, 2));
	}
}
