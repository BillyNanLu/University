package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testm() {
		Assert.assertEquals(396, new T1().m(6, 11));
		Assert.assertEquals(2, new T1().m(5, 10));
		Assert.assertEquals(1, new T1().m(6, 0));
	}
}
