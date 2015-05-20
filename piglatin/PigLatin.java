import java.io.*;
import java.util.Scanner;

class PigLatin {
  public static void main(String[] args) {
    Scanner keyboard = new Scanner(System.in);
    String Str1, Str2;
    System.out.print("Enter word or phrase: " );
    Str1 = keyboard.nextLine();
    Str2 = Str1.substring(0,1);
    System.out.println("Translation"+ Str1.substring(1)+Str2 + "ay");
  }
}
