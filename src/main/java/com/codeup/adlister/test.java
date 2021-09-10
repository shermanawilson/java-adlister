package com.codeup.adlister;

import org.mindrot.jbcrypt.BCrypt;

public class test {
    public static void main(String[] args) {
        String hash = "$2a$10$nOacRf932ak.aMkBQ.ywX.ht76uSzOV9UTwHWF5aVsP5B9z0uXPIa";
        BCrypt.checkpw("pass", hash);
        boolean passwordsMath = BCrypt.checkpw("boib", hash);
        System.out.println(passwordsMath);
    }
}
