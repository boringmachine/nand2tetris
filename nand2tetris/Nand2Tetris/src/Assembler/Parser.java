package Assembler;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.Scanner;

public class Parser {

	File file;
	FileInputStream in;
	InputStreamReader reader;
	String command;
	String symbol;
	String data;	
	
	static final int A_COMMAND = 0x1;
	static final int C_COMMAND = 0x2;
	static final int L_COMMAND = 0x4;
	
	Scanner scan;
	
	Parser(String filename) throws IOException{
		this.file = new File(filename);
		in = new FileInputStream(file);
		reader = new InputStreamReader(in);
		char[] data = new char[(int) file.length()];
		reader.read(data);
		this.data = (new String(data)).replaceAll(" ", "").replaceAll("//.*\n?", "");
		reader = new InputStreamReader(new ByteArrayInputStream(this.data.getBytes("UTF-8")));
		scan = new Scanner(this.data).useDelimiter("\\p{Space}+");
	}
	
	boolean hasMoreCommands() throws IOException{
		return reader.ready();
	}
	
	void advance() throws IOException{
		command = scan.next();
	}
	
	
	int commandType(){
		if(command.startsWith("@")) return A_COMMAND ;
		else if(command.startsWith("(")) return L_COMMAND;
		else return C_COMMAND;
	}
	
	String symbol() {
		if(commandType() == A_COMMAND){
			symbol = command.replaceFirst("@", "");
		} else if(commandType() == L_COMMAND){
			symbol = command.replace("(", "").replace(")", "");
		}
		
		return symbol;
	}
	
	
	String dest () {
		if(commandType() == C_COMMAND){
			if(command.matches("^(D|A|M)+=.+")){
				return command.replaceAll("\\=.+", "");
			}
		}
		return "";
	}
	
	String comp () {
		if(commandType() == C_COMMAND){
			return command.replaceAll(";.*","").replaceAll(".*=$?", "");
		}
		return "";
	}
	
	String jump () {
		if(commandType() == C_COMMAND){
			return command.replaceAll(".*;$?", "").replaceAll(".*(D|M|A|1)$", "");
		}
		return "";
	}
	
//TODO check the output
	public static void main(String args[]) throws IOException{
		Parser a = new Parser("Max.asm");
		System.out.println(a.data);
		while(a.hasMoreCommands()){
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
}