package VMtranslator;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class CodeWriter {

	private File file;
	private int labelCounter;
	private FileOutputStream out;
	private int returnCounter;
	private String thisFile;
	private OutputStreamWriter writer;

	CodeWriter(String thisFile, String outfile) throws IOException {
		this.thisFile = thisFile;
		file = new File(outfile);
		out = new FileOutputStream(file);
		writer = new OutputStreamWriter(out);
		labelCounter = 0;
		returnCounter = 0;
	}

	private void asm(String line) throws IOException {
		writer.write(line + "\n");
	}

	void close() throws IOException {
		writer.close();
		out.close();
	}

	private void pop(boolean flag) throws IOException {
		asm("@SP");
		asm("AM=M-1");
		if (flag) {
			asm("D=M");
		} else {
			asm("A=M");
		}
	}

	void popR14(String name) throws IOException {
		asm("@R14");
		asm("AM=M-1");
		asm("D=M");
		asm("@" + name);
		asm("M=D");
	}

	private void push() throws IOException {
		asm("@SP");
		asm("AM=M+1");
		asm("A=A-1");
		asm("M=D");
	}

	void pushReg() throws IOException {
		asm("@LCL");
		asm("D=M");
		push();
		asm("@ARG");
		asm("D=M");
		push();
		asm("@THIS");
		asm("D=M");
		push();
		asm("@THAT");
		asm("D=M");
		push();
	}

	void pushReg(String reg, int index) throws IOException {
		asm("@" + index);
		asm("D=A");
		asm("@" + reg);
		asm("A=M+D");
		asm("D=M");
		push();
	}

	void setFileName(String fileName) throws IOException {
		this.thisFile = fileName;
	}

	private String setReg(String segment) {
		switch (Parser.segmentType(segment)) {
		case LOCAL:
			return "LCL";
		case ARGUMENT:
			return "ARG";
		case THIS:
			return "THIS";
		case THAT:
			return "THAT";
		default:
			return "";

		}
	}

	void writeArithmetic(String command) throws Exception {
		pop(true);
		switch (Parser.arismeticType(command)) {
		case ADD:
			pop(false);
			asm("D=A+D");
			break;
		case SUB:
			pop(false);
			asm("D=A-D");
			break;
		case NEG:
			asm("D=!D");
			asm("D=D+1");
			break;
		case EQ:
		case GT:
		case LT:
			pop(false);
			asm("D=A-D");
			asm("@TRUE" + labelCounter);
			switch (Parser.arismeticType(command)) {
			case EQ:
				asm("D;JEQ");
				break;
			case LT:
				asm("D;JLT");
				break;
			case GT:
				asm("D;JGT");
				break;
			default:
			}
			asm("D=0");
			asm("@FALSE" + labelCounter);
			asm("0;JMP");
			asm("(" + "TRUE" + labelCounter + ")");
			asm("D=-1");
			asm("(" + "FALSE" + (labelCounter++) + ")");
			break;
		case AND:
			pop(false);
			asm("D=A&D");
			break;
		case OR:
			pop(false);
			asm("D=A|D");
			break;
		case NOT:
			asm("D=!D");
			break;
		default:
			return;
		}

		push();
	}

	void writeCall(String functionName, int numArgs) throws IOException {
		asm("@return-address" + returnCounter);
		asm("D=A");
		push();
		pushReg();
		asm("@" + (5 + numArgs));
		asm("D=A");
		asm("@SP");
		asm("D=M-D");
		asm("@ARG");
		asm("M=D");
		asm("@SP");
		asm("D=M");
		asm("@LCL");
		asm("M=D");
		writeGoto(functionName);
		writeLabel("return-address" + returnCounter);
		returnCounter++;
	}

	void writeFunction(String functionName, int numLocals) throws IOException {
		writeLabel(functionName);
		for (int i = 0; i < numLocals; i++) {
			asm("@SP");
			asm("AM=M+1");
			asm("A=A-1");
			asm("M=0");
		}
	}

	void writeGoto(String label) throws IOException {
		asm("@" + label);
		asm("0;JMP");
	}

	void writeIf(String label) throws IOException {
		pop(true);
		asm("@" + label);
		asm("D;JNE");
	}

	private void writeInfLoop() throws IOException {
		asm("(INF_LOOP)");
		asm("@INF_LOOP");
		asm("0;JMP");
	}

	void writeInit() throws IOException {
		asm("@256");
		asm("D=A");
		asm("@SP");
		asm("M=D");
		writeCall("Sys.init", 0);
		writeInfLoop();
	}

	void writeLabel(String label) throws IOException {
		asm("(" + label + ")");
	}

	void writePushPop(String command, String segment, int index) throws IOException {
		String reg = setReg(segment);
		thisFile = thisFile.replaceAll(".*/", "");
		int add = 0;

		switch (Parser.commandType(command)) {
		case C_PUSH:
			switch (Parser.segmentType(segment)) {
			case TEMP:
				add = 5;
				asm("@R" + (index + add));
				asm("D=M");
				push();
				break;
			case POINTER:
				add = 3;
				asm("@" + (index + add));
				asm("D=M");
				push();
				break;
			case LOCAL:
			case ARGUMENT:
			case THIS:
			case THAT:
				pushReg(reg, index);
				break;
			case CONSTANT:
				asm("@" + index);
				asm("D=A");
				push();
				break;
			case STATIC:
				asm("@" + thisFile + "." + index);
				asm("D=M");
				push();
				break;
			default:
				break;
			}
			break;
		case C_POP:
			switch (Parser.segmentType(segment)) {
			case STATIC:
				asm("@" + thisFile + "." + index);
				asm("D=A");
				asm("@R15");
				asm("M=D");
				pop(true);
				asm("@R15");
				asm("A=M");
				asm("M=D");
				break;
			case POINTER:
				add = 3;
				pop(true);
				asm("@" + (index + add));
				asm("M=D");
				break;
			case TEMP:
				add = 5;
				pop(true);
				asm("@" + (index + add));
				asm("M=D");
				break;
			default:
				asm("@" + index);
				asm("D=A");
				asm("@" + reg);
				asm("D=M+D");
				asm("@R13");
				asm("M=D");
				pop(true);
				asm("@R13");
				asm("A=M");
				asm("M=D");
				break;
			}
		default:
			break;
		}
	}

	void writeReturn() throws IOException {
		asm("@LCL");
		asm("D=M");
		asm("@R14");
		asm("M=D");
		asm("@5");
		asm("D=A");
		asm("@R14");
		asm("A=M-D");
		asm("D=M");
		asm("@R13");
		asm("M=D");
		pop(true);
		asm("@ARG");
		asm("A=M");
		asm("M=D");
		asm("@ARG");
		asm("D=M+1");
		asm("@SP");
		asm("M=D");
		popR14("THAT");
		popR14("THIS");
		popR14("ARG");
		popR14("LCL");
		asm("@R13");
		asm("A=M");
		asm("0;JMP");
	}
}
