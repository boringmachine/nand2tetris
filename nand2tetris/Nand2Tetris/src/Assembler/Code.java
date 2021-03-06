package Assembler;

public class Code {

	static int comp(String str) {
		int c = 0x0;

		if (str.contains("M")) {
			c |= 0x40;
			str = str.replaceAll("M", "A");
		}

		if (str.equals("0"))
			c |= 0x2A;
		else if (str.equals("1"))
			c |= 0x3F;
		else if (str.equals("-1"))
			c |= 0x3A;
		else if (str.equals("D"))
			c |= 0x0C;
		else if (str.equals("A"))
			c |= 0x30;
		else if (str.equals("!D"))
			c |= 0x0D;
		else if (str.equals("!A"))
			c |= 0x31;
		else if (str.equals("-D"))
			c |= 0x0F;
		else if (str.equals("-A"))
			c |= 0x33;
		else if (str.equals("D+1"))
			c |= 0x1F;
		else if (str.equals("A+1"))
			c |= 0x37;
		else if (str.equals("D-1"))
			c |= 0x0E;
		else if (str.equals("A-1"))
			c |= 0x32;
		else if (str.equals("D+A") || str.equals("A+D"))
			c |= 0x02;
		else if (str.equals("D-A"))
			c |= 0x13;
		else if (str.equals("A-D"))
			c |= 0x07;
		else if (str.equals("D&A") || str.equals("A&D"))
			c |= 0x0;
		else if (str.equals("D|A") || str.equals("A|D"))
			c |= 0x15;

		return c << 6;

	}

	static int dest(String str) {
		int d = 0x0;
		if (str.contains("M"))
			d |= 0x1;
		if (str.contains("D"))
			d |= 0x2;
		if (str.contains("A"))
			d |= 0x4;
		return d << 3;
	}

	static int jump(String str) {
		int j = 0x0;
		if (str.contains("E") && !str.contains("N"))
			j |= 0x2;
		if (str.contains("G"))
			j |= 0x1;
		if (str.contains("L"))
			j |= 0x4;
		if (str.contains("N"))
			j |= 0x5;
		if (str.contains("P"))
			j |= 0x7;

		return j;
	}

}
