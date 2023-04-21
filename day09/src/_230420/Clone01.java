package _230420;

public class Clone01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Point original = new Point(3,5);
		Point copy = (Point)original.clone();
		System.out.println(original);
		System.out.println(copy);
		
		Circle c1 = new Circle(new Point(10,20), 2.0);
		Circle c2 = (Circle)c1.clone();
		System.out.println(c1.toString());
		System.out.println(c2.toString());

	}

}
class Point implements Cloneable{
	int x;
	int y;
	Point(int x, int y){
		this.x = x;
		this.y = y;
	}
	
	public String toString(){
		return "x="+x+",y="+y;
	}
	
	public Object clone() {
		Object obj = null;
		try {
			obj = super.clone();
		}catch(CloneNotSupportedException e) {}

		
		return obj;
	}
}
class Circle implements Cloneable{
	Point p; // 원점
	double r; // 반지름
	
	Circle(Point p,double r){
		this.p = p;
		this.r = r;
	}
	
	public Object clone() {
		Object obj = null;
		try {
			obj = super.clone();
		}catch(CloneNotSupportedException e) { }
		
		Circle c = (Circle)obj;
		c.p = new Point(this.p.x, this.p.y);
		
		return obj;
	}
	public String toString() {
		return p.toString() + ", r="+r;
	}
	
}
