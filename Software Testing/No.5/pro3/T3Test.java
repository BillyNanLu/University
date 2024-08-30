package pro3;

import junit.framework.*;

public class T3Test  extends TestCase {
	public void testo() {
		Assert.assertEquals(396, new T3().o(6, 11));
		Assert.assertEquals(2, new T3().o(4, 1));
		Assert.assertEquals(0, new T3().o(-1, -1));
	}
}
