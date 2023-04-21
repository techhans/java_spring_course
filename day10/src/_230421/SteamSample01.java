package _230421;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Stream;

public class SteamSample01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Set<String> set = new HashSet<>();
		set.add("AAA");
		set.add("BBB");
		set.add("CCC");
		
		Stream<String> stream = set.stream();
		stream.forEach(name->System.out.println(name));
	}

}
