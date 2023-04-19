
public class ProduceTest {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Product p1 = new Product();
		Product p2 = new Product();
		Product p3 = new Product();
		System.out.println("[DEBUG]p1 serialNo :"+p1.serialNo);
		System.out.println("[DEBUG]p2 serialNo :"+p2.serialNo);
		System.out.println("[DEBUG]p2 serialNo :"+p3.serialNo);
	}
}
class Product{
	static int count = 0; // 생성된 인스턴스의 수를 저장하기 위한 변수
	int serialNo;        // 인스턴스 고유의 번호
	
	{ // 인스턴스 초기화 블럭 : 모든 생성자에서 공통적으로 수행될 코드
		++count;
		serialNo = count;
	}
	public Product() {
		
	}
}
