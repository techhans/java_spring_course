package _230418;

public class MyClassInstanceTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("[DEBUG]class method:"+MyClassInstance.add(100L, 100L));
		MyClassInstance mm = new MyClassInstance(); // instance creation
		mm.a = 200L;
		mm.b = 200L;
		System.out.println("[DEUBG]instance method:"+mm.add());
	}
}
class MyClassInstance{
	long a, b;
	long add() {    // instance method
		return a + b;
	}
	static long add(long a, long b) { // class method (static)
		return a + b;
	}
}
