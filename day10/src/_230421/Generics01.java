package _230421;

public class Generics01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Box2<String> b = new Box2<String>();
		//b.setItem(new Object());
		b.setItem("ABC");
		String item = (String)b.getItem();
		System.out.println("[DEBUG]item="+item);
	}

}

class Box{
	Object item;
	
	void setItem(Object item) {
		this.item = item;
	}
	Object getItem() {
		return item;
	}
}

class Box2<T>{
	T item;
	
	void setItem(T item) {
		this.item = item;
	}
	T getItem() {
		return item;
	}
}