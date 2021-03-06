package Assembler;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class Parser {

	static final int A_COMMAND = 0x1;
	static final int C_COMMAND = 0x2;
	static final int L_COMMAND = 0x4;

	// TODO check the output
	public static void main(String args[]) throws IOException {
		Parser a = new Parser("Max.asm");
		System.out.println(a.data);
		while (a.hasMoreCommands()) {
			a.advance();
			System.out.println("TYPE  :" + a.commandType());
			System.out.println("CMD   :" + a.command);
			System.out.println("SYMBOL:" + a.symbol());
			System.out.println("DEST  :" + a.dest());
			System.out.println("COMP  :" + a.comp());
			System.out.println("JUMP  :" + a.jump());
			System.out.println();
		}
	}

	private String command;
	private String data;
	private File file;

	private FileInputStream in;
	private InputStreamReader reader;
	private Scanner scan;

	private String symbol;

	Parser(String filename) throws IOException {
		this.file = new File(filename);
		in = new FileInputStream(file);
		reader = new InputStreamReader(in);
		char[] data = new char[(int) file.length()];
		reader.read(data);
		this.data = (new String(data)).replaceAll(" ", "").replaceAll("//.*\n?", "");
		reader = new InputStreamReader(new ByteArrayInputStream(this.data.getBytes("UTF-8")));
		scan = new Scanner(this.data).useDelimiter("\\p{Space}+");
	}

	void advance() throws IOException {
		try {
			command = scan.next();
		} catch (NoSuchElementException e) {
		}
	}

	int commandType() {
		if (command.startsWith("@"))
			return A_COMMAND;
		else if (command.startsWith("("))
			return L_COMMAND;
		else
			return C_COMMAND;
	}

	String comp() {
		if (commandType() == C_COMMAND) {
			return command.replaceAll(";.*", "").replaceAll(".*=$?", "");
		}
		return "";
	}

	String dest() {
		if (commandType() == C_COMMAND) {
			if (command.matches("^(D|A|M)+=.+")) {
				return command.replaceAll("\\=.+", "");
			}
		}
		return "";
	}

	boolean hasMoreCommands() throws IOException {
		return scan.hasNext(".+");
	}

	String jump() {
		if (commandType() == C_COMMAND) {
			return command.replaceAll(".*;$?", "").replaceAll(".*(D|M|A|1)$", "");
		}
		return "";
	}

	String symbol() {
		if (commandType() == A_COMMAND) {
			symbol = command.replaceFirst("@", "");
		} else if (commandType() == L_COMMAND) {
			symbol = command.replace("(", "").replace(")", "");
		}

		return symbol;
	}
}
