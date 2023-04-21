package _230420;

public class GetClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Card c = new Card();
		Class objClass = c.getClass();
		System.out.println("[DUBUG]objClass="+objClass);
		System.out.println("[DUBUG]objClass.getName()="+objClass.getName());
		
	
// #2
		Class objClass2 = Card.class;
		System.out.println("[DUBUG]objClass2="+objClass2);
		System.out.println("[DUBUG]objClass2.getName()="+objClass2.getName());
		String className = Card.class.getName();
		System.out.println("[DUBUG]Card.class.getName()="+Card.class.getName());
// #3
		//Class objClass3 = Class.forName("Card");
		
		
		
	}

}

