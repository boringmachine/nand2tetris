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
	
	CodeWriter(String outfile) throws IOException{
		this.outfile = outfile;
		file = new File(outfile);
		out = new FileOutputStream(file);
		writer = new OutputStreamWriter(out);
		data = new StringBuilder();
	}
	
	void setFileName(String fileName) throws IOException{
		this.outfile = fileName;
		file = new File(outfile);
		out = new FileOutputStream(file);
		writer = new OutputStreamWriter(out);
		data = new StringBuilder();
	}
	
	void writeArithmetic(String command) throws Exception{
		writer.write("@SP\n"+"AM=M-1\n"+"D=M\n");
		if(command.equals("add")){
			writer.write("@SP\n"+"AM=M-1\n"+"A=M\n");
			writer.write("D=A+D\n");
		}else if(command.equals("sub")){
			writer.write("@SP\n"+"AM=M-1\n"+"A=M\n");
			writer.write("D=A-D\n");
		}else if(command.equals("neg")){
			writer.write("D=!D\n"+"D=D+1\n");
		}else if(command.equals("eq")){
			writer.write("@SP\n"+"AM=M-1\n"+"A=M\n");
			writer.write("D=A-D\n");
			writer.write("D=-1;JNE\n");
		}else if(command.equals("gt")){
			writer.write("@SP\n"+"AM=M-1\n"+"A=M\n");
			writer.write("D=A-D\n");
			writer.write("D=-1;JLE\n");
		}else if(command.equals("lt")){
			writer.write("@SP\n"+"AM=M-1\n"+"A=M\n");
			writer.write("D=A-D\n");
			writer.write("D=-1;JGE\n");
		}else if(command.equals("and")){
			writer.write("@SP\n"+"AM=M-1\n"+"A=M\n");
			writer.write("D=A&D");
		}else if(command.equals("or")){
			writer.write("@SP\n"+"AM=M-1\n"+"A=M\n");
			writer.write("D=A|D");
		}else if(command.equals("not")){
			writer.write("D=!D\n");
		}else{
			throw new Exception();
		}
		writer.write("@SP\n"+"A=M\n"+"M=D\n"+"@SP\n"+"M=M+1\n");
	}
	
	void writePushPop(String command, String segment, int index) throws IOException{
		if(command.equals("push")){
			if(segment.equals("constant"))
				writer.write("@"+index+"\n"+"D=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n");
		}
	}
	
	void close() throws IOException{
		writer.close();
		out.close();
	}
}
