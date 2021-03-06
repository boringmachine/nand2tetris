package Assembler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public class Assembler {

	public static void main(String argv[]) throws IOException {
		Assembler asm = new Assembler(argv[0], "tmp.bin");
		asm.createSymbolTable();
		asm.writeCode();

	}

	private int counter = 0;
	private ByteBuffer data;
	private File file;
	private int finalAddress;
	private int index = 0;
	private String infile;
	private FileOutputStream out;
	private Parser parser;
	private SymbolTable table;

	private OutputStreamWriter writer;

	Assembler(String infile, String outfile) throws IOException {
		this.infile = infile;
		file = new File(outfile);
		out = new FileOutputStream(file);
		writer = new OutputStreamWriter(out);
		table = new SymbolTable();
		data = ByteBuffer.allocate(0x10000);
		finalAddress = 0x10;
	}

	byte[] aCommand(String symbol) {
		byte[] bytes = ByteBuffer.allocate(4).putInt(0x7FFF & table.getAddress(symbol)).array();
		byte[] code = { bytes[2], bytes[3] };
		return code;
	}

	byte[] cCommand(String dest, String comp, String jump) {
		byte[] bytes = ByteBuffer.allocate(4).putInt(0xE000 | Code.dest(dest) | Code.comp(comp) | Code.jump(jump)).array();
		byte[] code = { bytes[2], bytes[3] };
		return code;
	}

	void createSymbolTable() throws IOException {
		parser = new Parser(infile);
		ArrayList<String> defaultCommandList = new ArrayList<String>();
		defaultCommandList.addAll(new SymbolTable().keySet());
		while (parser.hasMoreCommands()) {
			int address = 0;
			parser.advance();
			if (parser.commandType() == Parser.L_COMMAND) {
				address = counter;
				table.addEntry(parser.symbol(), address);
				defaultCommandList.add(parser.symbol());
			} else {
				counter++;
			}
		}
		parser = new Parser(infile);
		while (parser.hasMoreCommands()) {
			int address = finalAddress;
			parser.advance();
			if (parser.symbol().matches("\\d+(\\.\\d+)?")) {
				address = Integer.parseInt(parser.symbol());
			} else if (parser.commandType() == Parser.L_COMMAND) {
			} else {
				if (!table.contains(parser.symbol())) {
					address = finalAddress;
				}
			}
			// TODO
			if (parser.commandType() == Parser.A_COMMAND) {
				if (!defaultCommandList.contains(parser.symbol())) {
					table.addEntry(parser.symbol(), address);
					finalAddress++;
				}
			}
		}
	}

	void writeCode() throws IOException {
		parser = new Parser(infile);
		while (parser.hasMoreCommands()) {
			parser.advance();
			byte[] code = new byte[2];
			if (parser.commandType() == Parser.A_COMMAND) {
				code = aCommand(parser.symbol());
				index += 2;
				data.put(code);
			} else if (parser.commandType() == Parser.C_COMMAND) {
				code = cCommand(parser.dest(), parser.comp(), parser.jump());
				index += 2;
				data.put(code);
			}
		}

		byte[] codes = new byte[index];
		byte[] datas = data.array();
		for (int i = 0; i < index; i++) {
			codes[i] = datas[i];
		}

		out.write(codes);
		out.close();
	}
}
