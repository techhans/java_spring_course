<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions %>    
<!DOCTYPE html>

<html>
<head>
<link href="<c:url value="/resources/css/boostrap.min.css"/>" rel="stylesheet">
<meta charset="EUC-KR">
<title>도서목록</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./home">Home</a>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<c:forEach items="${bookList}" var="book">
				<div class="col-md-4">
					<h3>${book.name}</h3>
					<p>${book.author}
						<br>${book.publisher}|${book.releaseDate}
					<p align=left>${fn:substring(book.description,0,100)}...
					<p>${book.unitPrice}원
				</div>
			</c:forEach>
		</div>	
		<hr>
		<footer>
			<p>&copy; BookMarket</p>
		</footer>

	</div>

</body>
</html>