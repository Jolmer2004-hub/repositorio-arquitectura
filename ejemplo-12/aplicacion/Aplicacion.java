package aplicacion;

import libcalculadora.JavaCalculadora;

public class Aplicacion{

	//Declaramos un objeto que representa a la biblioteca
	JavaCalculadora calculadora = null;

	static {
	System.loadLibrary("calc");
	}

	public Aplicacion(){
	this.calculadora = new JavaCalculadora();

	System.out.printf("La suma de 3 + 5 es: " + calculadora.sumar(3,5));
	}

	public static void main(String[] argumentos){
	new Aplicacion();
	}
}
