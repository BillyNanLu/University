package mypro;

import junit.framework.Assert;
import junit.framework.TestCase;

public class Test2Test extends TestCase {
	public void testone() {
		Assert.assertEquals(153, new Test2().two());
	}
}
