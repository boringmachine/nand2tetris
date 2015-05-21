package VMtranslator;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.NoSuchElementException;

public class CodeWriter {

	File file;
	FileOutputStream out;
	OutputStreamWriter writer;
	StringBuilder data;
	String outfile;
	String thisFile;
	int labelCounter;

	CodeWriter(String thisFile, String outfile) throws IOException {
		this.thisFile = thisFile;
		this.outfile = outfile;
		file = new File(outfile);
		out = new FileOutputStream(file);
		writer = new OutputStreamWriter(out);
		data = new StringBuilder();
		int labelCounter = 0;
	}

	void setFileName(String fileName) throws IOException {
		this.outfile = fileName;
		file = new File(outfile);
		out = new FileOutputStream(file);
		writer = new OutputStreamWriter(out);
		data = new StringBuilder();
	}

	void writeArithmetic(String command) throws Exception {
		writer.write("@SP\n" + "AM=M-1\n" + "D=M\n");
		if (command.equals("add")) {
			writer.write("@SP\n" + "AM=M-1\n" + "A=M\n");
			writer.write("D=A+D\n");
		} else if (command.equals("sub")) {
			writer.write("@SP\n" + "AM=M-1\n" + "A=M\n");
			writer.write("D=A-D\n");
		} else if (command.equals("neg")) {
			writer.write("D=!D\n" + "D=D+1\n");
		} else if (command.equals("eq")) {
			writer.write("@SP\n" + "AM=M-1\n" + "A=M\n");
			writer.write("D=A-D\n");
			writer.write("@TRUE" + labelCounter + "\n");
			writer.write("D;JEQ\n");
			writer.write("D=0\n");
			writer.write("@FALSE" + labelCounter + "\n");
			writer.write("0;JMP\n");
			writer.write("(" + "TRUE" + labelCounter + ")\n");
			writer.write("D=-1\n");
			writer.write("(" + "FALSE" + (labelCounter++) + ")\n");

		} else if (command.equals("gt")) {
			writer.write("@SP\n" + "AM=M-1\n" + "A=M\n");
			writer.write("D=A-D\n");
			writer.write("@TRUE" + labelCounter + "\n");
			writer.write("D;JGT\n");
			writer.write("D=0\n");
			writer.write("@FALSE" + labelCounter + "\n");
			writer.write("0;JMP\n");
			writer.write("(" + "TRUE" + labelCounter + ")\n");
			writer.write("D=-1\n");
			writer.write("(" + "FALSE" + (labelCounter++) + ")\n");

		} else if (command.equals("lt")) {
			writer.write("@SP\n" + "AM=M-1\n" + "A=M\n");
			writer.write("D=A-D\n");
			writer.write("@TRUE" + labelCounter + "\n");
			writer.write("D;JLT\n");
			writer.write("D=0\n");
			writer.write("@FALSE" + labelCounter + "\n");
			writer.write("0;JMP\n");
			writer.write("(" + "TRUE" + labelCounter + ")\n");
			writer.write("D=-1\n");
			writer.write("(" + "FALSE" + (labelCounter++) + ")\n");
		} else if (command.equals("and")) {
			writer.write("@SP\n" + "AM=M-1\n" + "A=M\n");
			writer.write("D=A&D\n");
		} else if (command.equals("or")) {
			writer.write("@SP\n" + "AM=M-1\n" + "A=M\n");
			writer.write("D=A|D\n");
		} else if (command.equals("not")) {
			writer.write("D=!D\n");
		} else {
			throw new Exception();
		}
		writer.write("@SP\n" + "A=M\n" + "M=D\n" + "@SP\n" + "M=M+1\n");
	}

	void writePushPop(String command, String segment, int index)
			throws IOException {
		String reg = "";
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
				writer.write("@" + index + "\n"
						+ "D=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n");
			}  else if (segment.equals("static")) {
				writer.write("@"+thisFile+"."+index+"\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n");
			}  else if (!reg.isEmpty()) {
				writer.write("@" + index + "\n" + "D=A\n@" + reg
						+ "\nA=M+D\nD=M\n" + "@SP\nA=M\nM=D\n@SP\nM=M+1\n");

			} else {
				if (segment.equals("temp")) {
					writer.write("@R" + (index + add)
							+ "\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n");
				} else {
					writer.write("@" + (index + add)
							+ "\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n");
				}
			}
		} else if (command.equals("pop")) {
			if (segment.equals("static")) {
				writer.write("@SP\nAM=M-1\nD=M\n@" + thisFile + "." + index
						+ "\nM=D\n");
			} else if (!segment.equals("pointer") && !segment.equals("temp")) {
				writer.write("@" + index + "\nD=A\n@" + reg
						+ "\nD=M+D\n@R13\nM=D\n"
						+ "@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D\n");
			} else {
				writer.write("@SP\nAM=M-1\nD=M\n@" + (index + add) + "\nM=D\n");
			}

		}
	}

	void close() throws IOException {
		writer.close();
		out.close();
	}
}
