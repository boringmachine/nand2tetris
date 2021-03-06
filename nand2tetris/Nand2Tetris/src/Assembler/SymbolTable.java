package Assembler;

import java.util.LinkedHashMap;

public class SymbolTable extends LinkedHashMap<String, Integer> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	SymbolTable() {
		for (int i = 0; i < 16; i++) {
			put("R" + Integer.toString(i), i);
		}
		put("SP", 0x0);
		put("LCL", 0x1);
		put("ARG", 0x2);
		put("THIS", 0x3);
		put("THAT", 0x4);
		put("SCREEN", 0x4000);
		put("KBD", 0x6000);
	}

	void addEntry(String symbol, Integer address) {
		if (!containsKey(symbol)) {
			put(symbol, address);
		} else {
			remove(symbol);
			put(symbol, address);
		}

	}

	boolean contains(String symbol) {
		return containsKey(symbol);
	}

	int getAddress(String symbol) {
		return get(symbol);
	}
}
