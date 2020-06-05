package pl6;

public class Simbolo {
	
	public String nombre;
	public String tipo;
	public Number valor;
	
	public Simbolo(String nombre, String tipoDato, Number valor) {
		this.nombre = nombre;
		this.tipo = tipoDato;
		this.valor = valor;
	}

	public String getNombre() {
		return nombre;
	}
	
	public String getTipoDato() {
		return tipo;
	}
	
	public Number getValor() {
		return valor;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setTipoDato(String tipoDato) {
		this.tipo = tipoDato;
	}

	public void setValor(Number valor) {
		this.valor = valor;
	}

	@Override
	public String toString() {
		return "["+nombre + "; " + tipo + "; " + valor + "]";
	}
}