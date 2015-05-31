package VMtranslator;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class CodeWriter {

	private File file;
	private FileOutputStream out;
	private OutputStreamWriter writer;
	private String thisFile;
	private int labelCounter;
	private int returnCounter;

	CodeWriter(String thisFile, String outfile) throws IOException {
		this.thisFile = thisFile;
		file = new File(outfile);
		out = new FileOutputStream(file);
		writer = new OutputStreamWriter(out);
		labelCounter = 0;
		returnCounter = 0;
	}

	void setFileName(String fileName) throws IOException {
		this.thisFile = fileName;
	}

	private void asm(String line) throws IOException {
		writer.write(line + "\n");
	}

	private void pop(boolean flag) throws IOException {
		if (flag) {
			asm("@SP");
			asm("AM=M-1");
			asm("D=M");
		} else {
			asm("@SP");
			asm("AM=M-1");
			asm("A=M");
		}
	}

	private void push() throws IOException {
		asm("@SP");
		asm("AM=M+1");
		asm("A=A-1");
		asm("M=D");
	}

	private void writeInfLoop() throws IOException {
		asm("(INF_LOOP)");
		asm("@INF_LOOP");
		asm("0;JMP");
	}

	void writeArithmetic(String command) throws Exception {
		pop(true);
		if (command.equals("add")) {
			pop(false);
			asm("D=A+D");
		} else if (command.equals("sub")) {
			pop(false);
			asm("D=A-D");
		} else if (command.equals("neg")) {
			asm("D=!D");
			asm("D=D+1");
		} else if (command.equals("eq") || command.equals("gt")
				|| command.equals("lt")) {
			pop(false);
			asm("D=A-D");
			asm("@TRUE" + labelCounter);
			if (command.equals("eq")) {
				asm("D;JEQ");
			} else if (command.equals("gt")) {
				asm("D;JGT");
			} else {
				asm("D;JLT");
			}
			asm("D=0");
			asm("@FALSE" + labelCounter);
			asm("0;JMP");
			asm("(" + "TRUE" + labelCounter + ")");
			asm("D=-1");
			asm("(" + "FALSE" + (labelCounter++) + ")");
		} else if (command.equals("and")) {
			pop(false);
			asm("D=A&D");
		} else if (command.equals("or")) {
			pop(false);
			asm("D=A|D");
		} else if (command.equals("not")) {
			asm("D=!D");
		} else {
			return;
		}
		push();
	}

	void writePushPop(String command, String segment, int index)
			throws IOException {
		String reg = "";
		thisFile = thisFile.replaceAll(".*/", "");
		int add = 3;
		if (segment.equals("temp"))
			add = 5;
		if (segment.equals("local"))
			reg = "LCL";
		else if (segment.equals("argument"))
			reg = "ARG";
		else if (segment.equals("this"))
			reg = "THIS";
		else if (segment.equals("that"))
			reg = "THAT";
		if (command.equals("push")) {
			if (segment.equals("constant")) {
				asm("@" + index);
				asm("D=A");
				push();
			} else if (segment.equals("static")) {
				asm("@" + thisFile + "." + index);
				asm("D=M");
				push();
			} else if (!reg.isEmpty()) {
				asm("@" + index);
				asm("D=A");
				asm("@" + reg);
				asm("A=M+D");
				asm("D=M");
				push();
			} else {
				if (segment.equals("temp")) {
					asm("@R" + (index + add));
					asm("D=M");
					push();
				} else {
					asm("@" + (index + add));
					asm("D=M");
					push();
				}
			}
		} else if (command.equals("pop")) {
			if (segment.equals("static")) {
				asm("@" + thisFile + "." + index);
				asm("D=A");
				asm("@R15");
				asm("M=D");
				pop(true);
				asm("@R15");
				asm("A=M");
				asm("M=D");

			} else if (!segment.equals("pointer") && !segment.equals("temp")) {
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
			} else {
				pop(true);
				asm("@" + (index + add));
				asm("M=D");
			}

		}
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

	void writeGoto(String label) throws IOException {
		asm("@" + label);
		asm("0;JMP");
	}

	void writeIf(String label) throws IOException {
		pop(true);
		asm("@" + label);
		asm("D;JNE");
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

	void popR14(String name) throws IOException {
		asm("@R14");
		asm("AM=M-1");
		asm("D=M");
		asm("@" + name);
		asm("M=D");
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

	void close() throws IOException {
		writer.close();
		out.close();
	}
}
