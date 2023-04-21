package _230420;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class IOExample02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			FileInputStream fis = new FileInputStream(args[0]);
			FileOutputStream fos = new FileOutputStream(args[1]);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

}
