package _230420;

public class Polymorphism02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Parent2 p = new Child2();  // polymorphism
		Child2 c = new Child2(); 
		
		System.out.println("[DEBUG] p.x="+p.x);
		p.method();
		System.out.println("[DEBUG] c.x="+c.x);
		c.method();
	}
}
class Parent2{
	int x = 100;
	void method() {
		System.out.println("[DEBUG] Parent Method");
	}
}
class Child2 extends Parent2{
//	int x = 200;
//	void method() {
//		System.out.println("[DEBUG] Child Method");
//	}
}