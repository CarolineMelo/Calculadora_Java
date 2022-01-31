package br.com.rd.calculadora;


public class Calcular {

	private int var1;
	private int var2;
	
	Calcular(int v1, int v2){
		this.var1 = v1;
		this.var2 = v2;
		
	}
	
	public int somar() {
		return this.var1 + this.var2;
	}
	
	public int subtrair() {
		return this.var1 - this.var2;
	}
	public int dividir() {
		return this.var1 / this.var2;
	}
	public int multiplicar() {
		return this.var1 * this.var2;
	}
}
