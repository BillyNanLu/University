package pro1;

import org.junit.Assert;

import junit.framework.TestCase;

public class T1Test extends TestCase {
	public void testm() {
		Assert.assertEquals(396, new T1().m(6, 11));
		Assert.assertEquals(2, new T1().m(5, 10));
		Assert.assertEquals(1, new T1().m(6, 0));
		Assert.assertEquals(248832, new T1().m(0, 11));
		Assert.assertEquals(1, new T1().m(0, 0));
	}
}
