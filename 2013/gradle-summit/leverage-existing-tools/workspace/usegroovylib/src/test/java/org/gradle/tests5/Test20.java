package org.gradle.tests5;

import org.junit.Test;

public class Test20 {
    @Test
    public void myTest() throws Exception {
        Thread.sleep(5);
        if (false) {
           org.junit.Assert.assertTrue(false);
        }
    }
}