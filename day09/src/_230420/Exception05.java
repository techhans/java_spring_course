package _230420;

public class Exception05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			startInstall();
			copyFiles();
			//deleteTempFiles();			
		}catch(Exception e) {
			e.printStackTrace();
			deleteTempFiles();
		}finally {
			System.out.println("[DEBUG]finally statement");
			deleteTempFiles();
		}
	} // main END
	static void startInstall() {
		// 프로그램 설치에 필요한 준비를 위한 코드
		System.out.println("[DEBUG]startInstall()");
	}
	static void copyFiles() {
		// 파일들을 복사하는 코드
		System.out.println("[DEBUG]copyFiles()");
	}
	static void deleteTempFiles() {
		// 임시파일들을 삭제하는 코드
		System.out.println("[DEBUG]deleteTempFiles()");
	}
	
	
	

}
