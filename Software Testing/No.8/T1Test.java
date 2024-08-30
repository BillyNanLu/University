package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testm() {
		Assert.assertEquals(2, new T1().m(2, 0));
		Assert.assertEquals(10, new T1().m(2, 1));
		Assert.assertEquals(20, new T1().m(2, 2));
	}
}
