package org.gradle.tests0;

import org.junit.Test;

public class Test1 {
    @Test
    public void myTest() throws Exception {
        Thread.sleep(200);
        if (false) {
           org.junit.Assert.assertTrue(false);
        }
    }
}