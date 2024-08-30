package pro1;

import junit.framework.*;

public class T1Test extends TestCase {
	public void testsjx() {
		Assert.assertEquals(4, new T1().sjx(5, 3, 1));
//		Assert.assertEquals(3, new T1().sjx(3, 3, 4));
	}
}
