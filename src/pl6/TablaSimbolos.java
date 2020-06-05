package pl6;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import java_cup.internal_error;

public class TablaSimbolos extends HashMap<String, Simbolo> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private PilaTablasSimbolos pila;

	public TablaSimbolos(PilaTablasSimbolos pila) {
		super();
		this.pila = pila;
	}
	
	public Simbolo get(String clave) {
		Simbolo simb_encontrado = null;
		
		if( this.containsKey(clave)) {
			simb_encontrado = super.get(clave);
		} else {
			TablaSimbolos ts = null;
			Iterator<TablaSimbolos> it = pila.iterator();
			while (it.hasNext() && simb_encontrado==null) {
				ts = it.next();
				if (ts.containsKey(clave)) {
					simb_encontrado = ts.get(clave);
				}
			}
		}
		
		return simb_encontrado ;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		
		int count = 0;
		
		for(Map.Entry<String, Simbolo> entry : this.entrySet()) {
		    Simbolo value = entry.getValue();
		    sb.append(value.toString());
		    count++;
		    if (this.entrySet().size()!=count) {
				sb.append(",");
			}
		}
		return "["+sb.toString()+"]";
	}

}
