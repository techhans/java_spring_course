package _230421;

import java.util.Arrays;
import java.util.Scanner;

public class BinarySearch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		Scanner in = new Scanner(System.in);
//		int key = Integer.parseInt(in.nextLine());
//		String[] s = in.nextLine().split("\\s+");
		
		int key = 7;
		int[] arr = {1,29,9,7,3,11,5,109,292,30};
		
		int n = arr.length;
		int[] data = new int[n];
		for(int i=0;i<n;i++) {
			//data[i] = Integer.parseInt(s[i]);
			//System.out.println("[DEBUG]arr["+i+"]:"+arr[i]);
			data[i] = arr[i];
		}
		Arrays.sort(data);
		int result = binarySearch(data,key);
		System.out.println("[DEBUG]result="+result);
		//in.close();
	}
	
	static int binarySearch(int arr[], int x) {
		int arrSize = arr.length;
		int upperBound = arrSize-1;
		int lowerBound = 0;
		int median;
		
		while(true) {
			if(upperBound<lowerBound) {
				return -1;
			}
			median = (upperBound+lowerBound)/2;
			
			if(arr[median]==x) {
				return median;
			}else if(arr[median]>x) {
				upperBound = median-1;
			}else {
				lowerBound = median+1;
			}
		}
	}
	static int sequentialSearch(int arr[], int x) {
		int n = arr.length;
		int key = x;
		int[] array = arr;
		int rt = 0;
		for(int i=0;i<n;i++) {
			if(array[i]==key) {
				rt = i;
				break;
			}
			rt= -1;
		}
		return rt;
	}
	
	
	
}
