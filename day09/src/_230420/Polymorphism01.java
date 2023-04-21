package _230420;

public class Polymorphism01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Parent p = new Child();  // polymorphism
		Child c = new Child(); 
		
		System.out.println("[DEBUG] p.x="+p.x);
		p.method();
		System.out.println("[DEBUG] c.x="+c.x);
		c.method();
	}
}
class Parent{
	int x = 100;
	void method() {
		System.out.println("[DEBUG] Parent Method");
	}
}
class Child extends Parent{
	int x = 200;
	void method() {
		System.out.println("[DEBUG] Child Method");
	}
}