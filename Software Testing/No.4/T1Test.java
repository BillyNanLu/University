package pro1;

import junit.framework.*;

public class T1Test extends TestCase{
	
	public void testm() {
		Assert.assertEquals(-2, new T1().m(3,  0,  -6));
		Assert.assertEquals(1, new T1().m(2, 0, 0));
	}
}
