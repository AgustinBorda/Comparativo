public class Usuario extends Thread{
	Cuenta cuenta;	

	public Usuario(Cuenta c) {
		cuenta = c;
	}

	@Override
	public void run() {
		this.cuenta.deposita(5000);
		this.cuenta.retira(600);	
	}

	public static void main(String[] args) {
		Cuenta cuenta = new Cuenta(0);
		for(int i=1;i<10;i++) {
			Usuario usuario = new Usuario(cuenta);
			usuario.start();
		}
		cuenta.printSaldo();
	}
}
