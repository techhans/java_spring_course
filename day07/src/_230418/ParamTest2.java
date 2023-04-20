package _230418;
public class ParamTest2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Data2 d = new Data2();
		d.x=10;
		System.out.println("[DEBUG] main() : x = " + d.x);
		
		change(d);
		System.out.println("[DEBUG] After change(d.x)");
		System.out.println("[DEBUG] main() : x = " + d.x);
		
	}
	static void change(Data2 d) {
		d.x = 1000;
		System.out.println("[DEBUG] change() : d.x = "+d.x);
	}
}
class Data2{
	int x;
}