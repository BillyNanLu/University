package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testm() {
		Assert.assertEquals(1, new T1().m(2, 0, 0));
		Assert.assertEquals(1, new T1().m(1, 1, 1));
		Assert.assertEquals(3, new T1().m(1, 1, 2));
	}
}
