package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testm() {
		Assert.assertEquals(396, new T1().sort(6, 11));
		Assert.assertEquals(2, new T1().sort(5, 1));
		Assert.assertEquals(1, new T1().sort(5, 0));
		Assert.assertEquals(2, new T1().sort(6, 10));
		Assert.assertEquals(161051, new T1().sort(0, 10));
	}
}
