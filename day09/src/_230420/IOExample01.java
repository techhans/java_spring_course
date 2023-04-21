package _230420;

import java.io.*;
import java.util.Arrays;

public class IOExample01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		byte[] inSrc = {0,1,2,3,4,5,6,7,8,9};
		byte[] outSrc = null;
		
		ByteArrayInputStream input = null;
		ByteArrayOutputStream output = null;
		
		input = new ByteArrayInputStream(inSrc);
		output = new ByteArrayOutputStream();
		
		int data = 0;
		
		while((data=input.read())!=-1) {
			System.out.println("[DEBUG]data:"+data);
			output.write(data); // void write(int b)
		}
		System.out.println("[DEBUG]output:"+output);
		outSrc = output.toByteArray(); // 스트림의 내용을 byte배열 리턴
		
		System.out.println("[DEBUG]Input Source:"+Arrays.toString(inSrc));
		System.out.println("[DEBUG]Ouput Source:"+Arrays.toString(outSrc));
		
		
		
	}

}
