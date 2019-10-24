public class Hijo extends Padre {
  public String yoSoy() {
    return "Hijo";
  }

  public static void main(String[] args) {
    Padre h = new Hijo();
    h.quienSoy();
    Padre p = new Padre();
    p.quienSoy();
  }
}
