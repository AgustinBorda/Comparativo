public class Basura {
  static int i = 0;
  static int j = 0;
  @Override
  protected void finalize() throws Throwable
  {
      for (int i=0;i<10;i++) {
        Object object = new Object();
      }
      j++;
      System.out.println(j);
  }

  public static void main(String[] args) {
    while(true) {
      i++;
      Object o = new Object();
    }
  }
}
