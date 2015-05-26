package VMtranslator;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.HashMap;

public class VMtranslator {

	// debug
	public static void main(String args[]) throws Exception {
		File file = new File("VM/"+args[0]);
		String filePath;
		boolean fileIsDir = false;
		if(file.isDirectory()){
			OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(new File("VM/"+args[0]+".vm")));
			StringBuilder asm = new StringBuilder();
			String files[] = listFiles(file);
			HashMap<String, Parser> list = new HashMap<String, Parser>();
			for(String fileStr : files){
				if(fileStr.endsWith("vm")){
					list.put(fileStr, new Parser("VM/"+args[0]+"/"+fileStr));
					if(fileStr.equals("Sys.vm")){
						asm.append(list.get("Sys.vm").data.toString()+"\n");
						list.remove("Sys.vm");
					}
				}
			}
			for(Parser p : list.values()){
				asm.append(p.data.toString()+"\n");
			}
			writer.write(asm.toString());
			writer.close();
			filePath = "VM/"+args[0]+".vm";
			fileIsDir = true;
		} else {
			filePath = "VM/"+args[0];
		}
		
		Parser parser1 = new Parser(filePath);
		// Parser parser2 = new Parser("VM/SimpleAdd.vm");

		CodeWriter writer = new CodeWriter(args[0]+".vm", "Asm/" + args[0] + ".asm");
		if(fileIsDir){
			writer.writeInit();
		}
		while (parser1.hasMoreCommands()) {
			parser1.advance();
			System.out.println(parser1.command);
			if (parser1.commandType() == Parser.C_ARITHMETIC) {
				writer.writeArithmetic(parser1.type);
			} else if(parser1.commandType() == Parser.C_GOTO){
				writer.writeGoto(parser1.arg1());
			} else if(parser1.commandType() == Parser.C_IF) {
				writer.writeIf(parser1.arg1());
			} else if(parser1.commandType() == Parser.C_LABEL){
				writer.writeLabel(parser1.arg1());
			} else if(parser1.commandType() == Parser.C_FUNCTION){
				writer.writeFunction(parser1.arg1(), Integer.parseInt(parser1.arg2()));
			} else if(parser1.commandType() == Parser.C_CALL){
				writer.writeCall(parser1.arg1(), Integer.parseInt(parser1.arg2()));
			} else if(parser1.commandType() == Parser.C_RETURN){
				writer.writeReturn();
			}
			
			else {
				writer.writePushPop(parser1.type, parser1.arg1(),
						Integer.parseInt(parser1.arg2()));
			}

		}
		writer.close();
	}

	public static String[] listFiles(final File folder) {
		StringBuilder files = new StringBuilder();
	    for (final File fileEntry : folder.listFiles()) {
            files.append(fileEntry.getName()+":");
	    }
	    return files.toString().split(":");
	}
}
