package _230420;

public class CardToString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Card c1 = new Card();
		Card c2 = new Card();
		
		System.out.println("[DEBUG] c1.toString():"+c1.toString());
		System.out.println("[DEBUG] c2.toString():"+c2.toString());
	}


}
class Card{
	String kind;
	int number;
	Card() {
		this("SPADE", 1);
	}
	Card(String kind, int number){
		this.kind = kind;
		this.number = number;
	}
	public String toString() {
		// card 인스턴스의 kind와 number를 문자열로 반환
		return "kind:"+kind+", number:"+number;
	}
}