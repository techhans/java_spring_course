package _230418;
public class ParamTest1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Data d = new Data();
		d.x=10;
		System.out.println("[DEBUG] main() : x = " + d.x);
		
		change(d.x);
		System.out.println("[DEBUG] After change(d.x)");
		System.out.println("[DEBUG] main() : x = " + d.x);
		
	}
	static void change(int x) {
		x = 1000;
		System.out.println("[DEBUG] change() : x = "+x);
	}
}
class Data{
	int x;
}