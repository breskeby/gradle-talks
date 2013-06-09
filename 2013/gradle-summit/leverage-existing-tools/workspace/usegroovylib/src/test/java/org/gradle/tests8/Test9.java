package org.gradle.tests8;

import org.junit.Test;

public class Test9 {
    @Test
    public void myTest() throws Exception {
        Thread.sleep(5);
        if (false) {
           org.junit.Assert.assertTrue(false);
        }
    }
}