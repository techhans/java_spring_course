package _230419;

public class StaticBlockTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SBTest.test();
		SBTest a = new SBTest();		
		SBTest b = new SBTest();
	}

}
class SBTest{
	static int A ;
	static {
		test();
		A++;
		System.out.println("static block  : " + A);
	}

	{
		instanceMethod();
		A++;
		System.out.println("instance block  : " + A);
	}

	static void test() {
		A++;
		System.out.println("static method  : " + A);
	}

	public SBTest() {
		instanceMethod();
		A++;
		System.out.println("contsructor  : " + A);
	}

	private void instanceMethod() {
		A++;
		System.out.println("instance method : " + A);
	}
}