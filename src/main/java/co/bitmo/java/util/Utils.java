package co.bitmo.java.util;

import java.security.SecureRandom;

public class Utils {

  private static final String ALPHABET = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  
  public static String generateRandomString(int length) {
    SecureRandom random = new SecureRandom();
    StringBuilder sb = new StringBuilder(length);

    for (int i = 0; i < length; i++) {
      int randomIndex = random.nextInt(ALPHABET.length());
      sb.append(ALPHABET.charAt(randomIndex));
    }

    return sb.toString();
  }

  public static String generateRandomString() {
    return generateRandomString(8);
  }

}//fin de utils