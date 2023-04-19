
public class CardText {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Card c1 = new Card();
		c1.kind = "Heart";
		c1.number = 7;
		
		Card c2 = new Card();
		c2.kind = "Spade";
		c2.number = 4;
		
		System.out.println("[DEBUG] c1.kind:"+c1.kind);
		System.out.println("[DEBUG] c1.number:"+c1.number);
		System.out.println("[DEBUG] c1.width:"+c1.width);
		System.out.println("[DEBUG] c1.height:"+c1.height);
		
		c1.width = 50;
		c1.height = 80;
		System.out.println("[DEBUG] -------------------");
		System.out.println("[DEBUG] c2.kind:"+c2.kind);
		System.out.println("[DEBUG] c2.number:"+c2.number);
		System.out.println("[DEBUG] c2.width:"+c2.width);
		System.out.println("[DEBUG] c2.height:"+c2.height);
	}
}

class Card{
	String kind;
	int number;
	static int width = 100;
	static int height = 250;
}