<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Board</title>
<link rel="stylesheet" href="./resources/css/board.css">
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="icon" href="./img/favicon.ico" type="image/x-icon">
</head>
<body>
	<%@ include file="menu.jsp"%>
	<br>
	<br>
	<br>
	<div class="neon">Siggy's world</div>
	<br>
	<br>

	<br>

	<br>
	<table class="wrapper">
		<tr class="neonText">
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>좋아요</th>
		</tr>
		<c:forEach items="${list }" var="row">
			<!-- 	onclick 자바 스크립트 페이지 이동, URL?파라미터 = 값 -->
			<tr onclick="location.href='./detail?bno=${row.bno}'">
				<td class="neonText">${row.bno }</td>
				<td class="neonText">${row.btitle }</td>
				<td class="neonText">${row.bwrite }</td>
				<td class="neonText">${row.bdate }</td>
				<td class="neonText">${row.blike }</td>
			</tr>
		</c:forEach>
	</table>
	<div class="hi">
		<a class="back" href="./index" >BACK / </a>
		<a class="wr" href="./write" style="text-align: right;"> 글쓰기</a>
	</div>
</body>
</html>