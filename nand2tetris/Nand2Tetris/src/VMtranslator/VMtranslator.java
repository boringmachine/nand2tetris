package VMtranslator;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;

public class VMtranslator {

	public static String[] listFiles(final File folder) {
		StringBuilder files = new StringBuilder();
		for (final File fileEntry : folder.listFiles()) {
			files.append(fileEntry.getName() + ":");
		}
		return files.toString().split(":");
	}

	public static void main(String args[]) throws Exception {
		File file = new File(args[0]);
		String filePath = args[0];
		boolean fileIsDir = false;
		if (file.isDirectory()) {
			OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(new File(filePath + ".vm")));
			StringBuilder asm = new StringBuilder();
			String files[] = listFiles(file);
			for (String fileStr : files) {
				if (fileStr.endsWith(".vm")) {
					asm.append("#" + fileStr + "\n" + new Parser(args[0] + "/" + fileStr).data.toString() + "\n");
				}
			}
			writer.write(asm.toString());
			writer.close();
			filePath = args[0] + ".vm";
			fileIsDir = true;
		}

		Parser parser = new Parser(filePath);
		CodeWriter writer = new CodeWriter(filePath, filePath.replaceAll(".vm$", ".asm"));
		if (fileIsDir) {
			writer.writeInit();
		}
		while (parser.hasMoreCommands()) {
			parser.advance();
			System.out.println(parser.command);
			if (parser.command.startsWith("#")) {
				String command = parser.command;
				command = command.replace("#", "");
				writer.setFileName(command);
			}
			switch (Parser.commandType(parser.type)) {
			case C_ARITHMETIC:
				writer.writeArithmetic(parser.type);
				break;
			case C_GOTO:
				writer.writeGoto(parser.arg1());
				break;
			case C_IF:
				writer.writeIf(parser.arg1());
				break;
			case C_LABEL:
				writer.writeLabel(parser.arg1());
				break;
			case C_FUNCTION:
				writer.writeFunction(parser.arg1(), Integer.parseInt(parser.arg2()));
				break;
			case C_CALL:
				writer.writeCall(parser.arg1(), Integer.parseInt(parser.arg2()));
				break;
			case C_RETURN:
				writer.writeReturn();
				break;
			case C_PUSH:
				writer.writePushPop(parser.type, parser.arg1(), Integer.parseInt(parser.arg2()));
				break;
			case C_POP:
				writer.writePushPop(parser.type, parser.arg1(), Integer.parseInt(parser.arg2()));
				break;
			default:
				break;
			}
		}
		writer.close();
	}
}
