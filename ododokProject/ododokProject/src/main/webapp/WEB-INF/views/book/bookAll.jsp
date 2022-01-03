<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>[위대한관리자] 책정보 확인하기</title>
</head>
<body>


	<table>
	<tr>
		<th>도서번호</th>
		<th>도서명</th>
		<th>작가</th>
		<th>출판사</th>
		<th>출판연도</th>
		<th>보유도서관</th>
	</tr>
	
		<c:forEach items="${bookList}" var = "b">
		<tr>
			<td>${b.b_number}</td>
			<td>${b.b_name}</td>
			<td>${b.b_writer}</td>
			<td>${b.b_company}</td>
			<td>${b.b_year}</td>
			<td>${b.l_name}</td>
			
		</tr>
		</c:forEach>	
	</table>
	
		<div id = paging>
			<div>
			<!-- 첫페이지일 경우 '이전'처리하는 구문 -->
				<c:choose>
					<c:when test="${paging.page<=paging.minPage}">
						[이전]
					</c:when>
					<c:when test="${paging.page<=1}">
						[이전]&nbsp;
					</c:when>
					<c:otherwise>
					<!-- 현재 페이지에서 1감소한 페이지 요청하는 링크 -->
						<!-- if(endPage > maxPage) endPage = maxPage; 밥먹어야하니까 나중에하자 --> 
						<a href="/ododok/book/paging?page=${paging.page-10}">[이전]</a>&nbsp; <!-- 3개씩 앞으로 가기 -->

					</c:otherwise>
				</c:choose>
				
				
			<!-- java for(int i=startPage; i<=endPage; i++) 과 비슷한 용도. jstl문법으로 쓴 것 -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
					<c:choose>
						<c:when test="${i eq paging.page}">
							<!-- 현재페이지값과 i값이 같다면 페이지 이름${i}만 출력하게끔 -->
							${i}
						</c:when>
						<c:otherwise>
							<a href="/ododok/book/paging?page=${i}">${i}</a>
							<!-- 현재페이지가 아닌경우 그 해당페이지(i)로 이동하는 링크로 묶어주기 -->
						</c:otherwise>
					</c:choose>
				</c:forEach>
			
			<!-- 마지막페이지일 경우 '다음'처리하는 구문 -->
				<c:choose>
					<c:when test="${paging.page>=paging.maxPage}">
						[다음]
					</c:when>
					<c:otherwise>
						<a href="/ododok/book/paging?page=${paging.page+10}">[다음]</a> <!-- 3개씩 뒤로 가기 -->
					</c:otherwise>
				</c:choose>
			</div>
		</div>	

</body>
</html>