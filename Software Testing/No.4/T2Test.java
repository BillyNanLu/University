package pro2;

import junit.framework.*;

public class T2Test extends TestCase {
	public void testm() {
		Assert.assertEquals(396, new T2().m(6, 11));
		Assert.assertEquals(1, new T2().m(1, 2));
		Assert.assertEquals(-1, new T2().m(-1, -2));
	}
} 
