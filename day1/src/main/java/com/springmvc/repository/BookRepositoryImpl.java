package com.springmvc.repository;



import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springmvc.domain.Book;

@Repository
public class BookRepositoryImpl implements BookRepository {

	private List<Book> listOfBooks = new ArrayList<Book>();
	
	public BookRepositoryImpl() {
		Book book1 = new Book("ISBN1234", "C# 교과서","30000");
		book1.setAuthor("박용준");
		book1.setDescription("C# 교과서는 생애 첫 프로그램 언어로 C#을 시작하는 독자를 대상으로 한다. 특히 응용 프로그래머를 위한 C# 입문서로, C#을 사용하여 게임(유니티), 웹, 모바일, IOT등을 개발할 때 필요한 C# 기초 문법을 익히고 기본기를 탄탄하게 다지는 것이 목적이다");

		book1.setPublisher("길벗");
		book1.setCategory("IT전문서");
		book1.setUnitsInStock(1000);
		book1.setReleaseDate("2020/05/29");
		
		Book book2 = new Book("ISBN1235", "Node.js 교과서","36000");
		book2.setAuthor("박용준");
		book2.setDescription("Node.js 교과서는 생애 첫 프로그램 언어로 C#을 시작하는 독자를 대상으로 한다. 특히 응용 프로그래머를 위한 C# 입문서로, C#을 사용하여 게임(유니티), 웹, 모바일, IOT등을 개발할 때 필요한 C# 기초 문법을 익히고 기본기를 탄탄하게 다지는 것이 목적이다");

		book2.setPublisher("길벗");
		book2.setCategory("IT전문서");
		book2.setUnitsInStock(1000);
		book2.setReleaseDate("2020/07/25");
		
		Book book3 = new Book("ISBN1236", "어도비 CC 2020","25000");
		book3.setAuthor("박용준");
		book3.setDescription("어도비 CC 2020는 생애 첫 프로그램 언어로 C#을 시작하는 독자를 대상으로 한다. 특히 응용 프로그래머를 위한 C# 입문서로, C#을 사용하여 게임(유니티), 웹, 모바일, IOT등을 개발할 때 필요한 C# 기초 문법을 익히고 기본기를 탄탄하게 다지는 것이 목적이다");

		book3.setPublisher("길벗");
		book3.setCategory("IT전문서");
		book3.setUnitsInStock(1000);
		book3.setReleaseDate("2020/05/29");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);

		
	}
	
	
	
	
	@Override
	public List<Book> getAllBookList() {
		// TODO Auto-generated method stub
		return listOfBooks;
	}

}
