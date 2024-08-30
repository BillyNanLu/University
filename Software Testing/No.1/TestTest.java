package mypro;

import junit.framework.Assert;
import junit.framework.TestCase;

public class TestTest extends TestCase {
	public void testone() {
		Assert.assertEquals(1983, new Test().one());
	}
}
