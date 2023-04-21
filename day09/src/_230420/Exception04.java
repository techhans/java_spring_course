package _230420;

public class Exception04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("[DEBUG] 1");
		System.out.println("[DEBUG] 2");
		try {
			System.out.println("[DEBUG] 3");
			System.out.println("[DEBUG] 0/0"+0/0);
			System.out.println("[DEBUG] 4");
		}catch(ArithmeticException ae) {
			if(ae instanceof ArithmeticException) {
				System.out.println("[DEBUG] true");
			}
				System.out.println("[DEBUG] ArithmeticException");
		}catch(Exception e) {
			System.out.println("[DEBUG] Exception");
			// try~catch END
		}
		System.out.println("[DEBUG] 6");
		// main method END
		
		
		
	}

}
