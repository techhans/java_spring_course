package _230420;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class BufferedReaderExample01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			FileReader fr = new FileReader(".\\src\\_230420\\test.txt");
			BufferedReader br = new BufferedReader(fr);
			
			String line = "";
			for(int i=1;(line=br.readLine())!=null;i++) {
				// print each line
				System.out.println("[DEBUG]i:"+i+",line:"+line);

			}
			br.close();
			
		}catch(IOException e) {}
	}

}
