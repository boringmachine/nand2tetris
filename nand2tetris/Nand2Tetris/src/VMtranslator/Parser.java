package VMtranslator;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class Parser {
	File file;
	FileInputStream in;
	InputStreamReader reader;
	String command;
	String type;
	String arg1;
	String arg2;
	StringBuilder data;

	static final int C_ARITHMETIC = 0x1;
	static final int C_PUSH = 0x2;
	static final int C_POP = 0x4;
	static final int C_LABEL = 0x8;
	static final int C_GOTO = 0x10;
	static final int C_IF = 0x20;
	static final int C_FUNCTION = 0x40;
	static final int C_RETURN = 0x80;
	static final int C_CALL = 0x100;

	Scanner scan;

	Parser(String filename) throws IOException {
		this.file = new File(filename);
		in = new FileInputStream(file);
		reader = new InputStreamReader(in);
		char[] data = new char[(int) file.length()];
		reader.read(data);
		this.data = new StringBuilder().append((new String(data)).replaceAll(
				"//.*\n?", ""));
		reader = new InputStreamReader(new ByteArrayInputStream(this.data
				.toString().getBytes(("UTF-8"))));
		scan = new Scanner(this.data.toString());
	}

	boolean hasMoreCommands() {
		return scan.hasNext(".+");
	}

	void advance() {
		try {
			while ((command = scan.nextLine())
					.matches("\\r|\\r\\n||\\n||\\n\\r"))
				;
			String[] cmds = command.split(" ");
			type = cmds[0].toLowerCase();
			if (cmds.length > 1)
				arg1 = cmds[1].toLowerCase();
			else {
				arg1 = "";
			}
			if (cmds.length > 2)
				arg2 = cmds[2].toLowerCase();
			else {
				arg2 = "";
			}
		} catch (NoSuchElementException e) {
		}
	}

	int commandType() {
		if (type.equals("push"))
			return C_PUSH;
		else if (type.equals("pop"))
			return C_POP;
		else if (type.equals("label"))
			return C_LABEL;
		else if (type.equals("goto"))
			return C_GOTO;
		else if (type.equals("if"))
			return C_IF;
		else if (type.equals("function"))
			return C_FUNCTION;
		else if (type.equals("return"))
			return C_RETURN;
		else if (type.equals("call"))
			return C_CALL;
		else
			return C_ARITHMETIC;
	}

	String arg1() {
		return arg1;
	}

	String arg2() {
		return arg2;
	}

	// debug
	public static void main(String args[]) throws IOException {
		Parser a = new Parser("SimpleAdd.vm");
		System.out.println(a.data);
		while (a.hasMoreCommands()) {
			a.advance();
			System.out.println("CMD   :" + a.command);
			System.out.println("TYPE  :" + a.type);
			System.out.println("TYPE  :" + a.commandType());
			System.out.println("ARG1  :" + a.arg1);
			System.out.println("ARG2  :" + a.arg2);

			System.out.println();
		}
	}
}
