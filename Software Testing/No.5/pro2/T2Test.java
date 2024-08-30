package pro2;

import junit.framework.*;

public class T2Test  extends TestCase {
	public void testn() {
		Assert.assertEquals(1, new T2().n(4, 6, 1));
		Assert.assertEquals(0, new T2().n(3, 5, 11));
	}
}
