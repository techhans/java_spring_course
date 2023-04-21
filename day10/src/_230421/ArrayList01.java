package _230421;

import java.util.ArrayList;

public class ArrayList01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList list = new ArrayList();
		list.add("111"); // void add(Object obj)
		list.add("222");
		list.add("333");
		list.add("222"); // 중복허용
		list.add(333); // list.add(new Integer(333));
		System.out.println(list);
		
		list.add(0, "000"); // void add(int index, Object obj)
		System.out.println(list);
		
		System.out.println("index="+list.indexOf("333"));		

		list.remove("333"); // boolean remove(Object obj)
		System.out.println(list);
		
		System.out.println(list.remove("333"));
		System.out.println(list);
		System.out.println("index="+list.indexOf("333"));
		
		for(int i=0;i<list.size();i++) {
			list.set(i,  i+"");   // object set(int index, Object obj)
		}
		System.out.println(list);
//		System.out.println("{");
//		for(int i=0;i<list.size();i++) {
//			System.out.println(list.get(i)+", "); // object get(int index)
//		}
//		System.out.println("}");
		System.out.println("list.size()="+list.size());
//		for(int i=0;i<list.size();i++) {
//			System.out.println("i:"+i);	
//			list.remove(i);    // Object remove(int index)
//		}
		for(int i=list.size()-1;i>=0;i--) {
			System.out.println("i:"+i);
			list.remove(i);
		}
		System.out.println(list);
		
		
	}

}
