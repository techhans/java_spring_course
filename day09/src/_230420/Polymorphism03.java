package _230420;

public class Polymorphism03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Buyer b = new Buyer();
		Tv tv = new Tv();
		Computer com = new Computer();
		
		Product p1 = new Tv();
		Product p2 = new Computer();
		Product p3 = new Audio();
		
		b.buy(tv);
		b.buy(com);
		b.buy(p3);
		b.buy(p1);
		b.buy(p2);
		b.buy(p3);
	
	}

}
class Product{
	int price;     
	int bonusPoint;
}
class Tv extends Product{}
class Computer extends Product{}
class Audio extends Product{}
class Buyer{
	int money = 1000;
	int bonusPoint = 0;
	
	void buy(Tv t) {
		money -= t.price;
		bonusPoint += t.bonusPoint;
		
		System.out.println("[DEBUG][Tv] money:"+money);
		System.out.println("[DEBUG][Tv] bonusPoint:"+bonusPoint);
	}
	void buy(Computer c) {
		money -= c.price;
		bonusPoint += c.bonusPoint;
		
		System.out.println("[DEBUG][Computer] money:"+money);
		System.out.println("[DEBUG][Computer] bonusPoint:"+bonusPoint);
	}
	void buy(Product p) {
		money -= p.price;
		bonusPoint += p.bonusPoint;	
		
		System.out.println("[DEBUG][Product] money:"+money);
		System.out.println("[DEBUG][Product] bonusPoint:"+bonusPoint);
	}

}





