package _230420;

public class Exception01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Exception e = new Exception("고의로 예외 발생"); 
			throw e; // 예외 발생
			// throw new Exception("고의로 예외 발생)
		}catch(Exception e) {
			System.out.println("[DEBUG] e.getMessage():"+e.getMessage());
			e.printStackTrace();
		}
		System.out.println("프로그램 정상종료");
	}

}
