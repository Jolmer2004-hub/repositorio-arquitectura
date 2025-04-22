package libcifrado;

public class JavaCifrado {
	public native String cifrar(String texto, int desplazamiento);
	public native String descifrar(String texto, int desplazamiento);
}
