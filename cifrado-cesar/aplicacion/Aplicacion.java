package aplicacion;

import libcifrado.JavaCifrado;
import java.util.Scanner;

public class Aplicacion{

	JavaCifrado cesar = null;

	static{
	System.loadLibrary("cifrado");
	}

	public Aplicacion(){

	cesar = new JavaCifrado();
	Scanner sc = new Scanner(System.in);

	System.out.println("1. Cifrar\n2. Descifrar");
	int opcion = sc.nextInt();
	sc.nextLine();

	System.out.print("Texto: ");
	String input = sc.nextLine();

	System.out.print("Desplazamiento: ");
	int desplazamiento = sc.nextInt();
	String resultado;

		if (opcion == 1) {
    		resultado = cesar.cifrar(input, desplazamiento);
		} else{
   		resultado = cesar.descifrar(input, desplazamiento);
		}

		System.out.println("Resultado: " + resultado);
       		sc.close();
	}
	public static void main(String[] argumentos){
        new Aplicacion();
     	}
}
