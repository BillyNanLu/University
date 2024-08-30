package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testsort() {
		Assert.assertEquals(15, new T1().sort(1, 0));
		Assert.assertEquals(30, new T1().sort(0, 1));
		Assert.assertEquals(45, new T1().sort(0, 0));
	}
}
