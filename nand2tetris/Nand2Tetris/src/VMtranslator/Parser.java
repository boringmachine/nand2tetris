package VMtranslator;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class Parser {
	static ArithmeticType arismeticType(String command) {
		if (command.equals("add")) {
			return ArithmeticType.ADD;
		} else if (command.equals("sub")) {
			return ArithmeticType.SUB;
		} else if (command.equals("neg")) {
			return ArithmeticType.NEG;
		} else if (command.equals("eq")) {
			return ArithmeticType.EQ;
		} else if (command.equals("gt")) {
			return ArithmeticType.GT;
		} else if (command.equals("lt")) {
			return ArithmeticType.LT;
		} else if (command.equals("and")) {
			return ArithmeticType.AND;
		} else if (command.equals("or")) {
			return ArithmeticType.OR;
		} else if (command.equals("not")) {
			return ArithmeticType.NOT;
		} else {
			return ArithmeticType.OTHER;
		}
	}

	static CommandType commandType(String type) {
		if (type.equals("push"))
			return CommandType.C_PUSH;
		else if (type.equals("pop"))
			return CommandType.C_POP;
		else if (type.equals("label"))
			return CommandType.C_LABEL;
		else if (type.equals("goto"))
			return CommandType.C_GOTO;
		else if (type.equals("if-goto"))
			return CommandType.C_IF;
		else if (type.equals("function"))
			return CommandType.C_FUNCTION;
		else if (type.equals("return"))
			return CommandType.C_RETURN;
		else if (type.equals("call"))
			return CommandType.C_CALL;
		else if (type.matches("add|sub|neg|eq|gt|lt|not|and|or"))
			return CommandType.C_ARITHMETIC;
		else
			return CommandType.C_OTHER;
	}

	// debug
	public static void main(String args[]) throws IOException {
		Parser a = new Parser("SimpleAdd.vm");
		System.out.println(a.data);
		while (a.hasMoreCommands()) {
			a.advance();
			System.out.println("CMD   :" + a.command);
			System.out.println("TYPE  :" + a.type);
			System.out.println("TYPE  :" + a.commandType(a.type));
			System.out.println("ARG1  :" + a.arg1);
			System.out.println("ARG2  :" + a.arg2);

			System.out.println();
		}
	}

	static SegmentType segmentType(String segment) {
		if (segment.equals("argument")) {
			return SegmentType.ARGUMENT;
		} else if (segment.equals("local")) {
			return SegmentType.LOCAL;
		} else if (segment.equals("static")) {
			return SegmentType.STATIC;
		} else if (segment.equals("constant")) {
			return SegmentType.CONSTANT;
		} else if (segment.equals("this")) {
			return SegmentType.THIS;
		} else if (segment.equals("that")) {
			return SegmentType.THAT;
		} else if (segment.equals("pointer")) {
			return SegmentType.POINTER;
		} else if (segment.equals("temp")) {
			return SegmentType.TEMP;
		} else {
			return SegmentType.OTHER;
		}
	}

	private String arg1;
	private String arg2;
	String command;
	StringBuilder data;
	private File file;

	private FileInputStream in;

	private InputStreamReader reader;

	private Scanner scan;

	String type;

	Parser(String filename) throws IOException {
		this.file = new File(filename);
		in = new FileInputStream(file);
		reader = new InputStreamReader(in);
		char[] data = new char[(int) file.length()];
		reader.read(data);
		this.data = new StringBuilder().append((new String(data)).replaceAll("//.*\n?", ""));
		reader = new InputStreamReader(new ByteArrayInputStream(this.data.toString().getBytes(("UTF-8"))));
		scan = new Scanner(this.data.toString());
	}

	void advance() {
		arg1 = "";
		arg2 = "";
		try {
			while ((command = scan.nextLine()).matches("\\r|\\r\\n||\\n||\\n\\r"))
				;
			String[] cmds = command.split(" ");
			type = cmds[0].toLowerCase().replaceAll("\\p{Space}+", "");
			if (cmds.length > 1) {
				arg1 = cmds[1].replaceAll("\\p{Space}+", "");
			}

			if (cmds.length > 2) {
				arg2 = cmds[2].replaceAll("\\p{Space}+", "");
			}

		} catch (NoSuchElementException e) {
		}
	}

	String arg1() {
		return arg1;
	}

	String arg2() {
		return arg2;
	}

	boolean hasMoreCommands() {
		return scan.hasNext(".+");
	}
}
