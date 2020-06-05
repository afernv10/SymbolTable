package pl6;

import java.util.Iterator;
import java.util.LinkedList;

public class PilaTablasSimbolos extends LinkedList<TablaSimbolos> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		Iterator<TablaSimbolos> it = this.iterator();
		while (it.hasNext()) {
			sb.append(it.next());
			if (it.hasNext()) {
				sb.append(",");
			}
		}
		return "Pila: ["+sb.toString() + "]";
	}
}
