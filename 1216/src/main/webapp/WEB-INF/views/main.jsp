<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘 도서관에서 독서하자! 오도독!</title>
</head>
<body>

// 1216 -02 main.jsp 홈 메인화면입니다<br>
<a href = "library/info">오도독</a>   <a href = "library/libList"> 우동소식 </a>   <a href = "book/redingList"> 추천도서 </a>   <a href = "write/writeAll"> 게시판 </a>


<br>
<a href = "family/login"> 로그인</a><br>
<a href = "family/join"> 회원가입</a><br>

어서오세요 ${LoginDTO.f_id}<br>


<%-- <c:if test="${sessionScope.LoginDTO.f_id eq test}"> --%>
	<a href = "family/mypage"> 마이페이지 </a><br>
	<a href = "family/logout"> 로그아웃 </a><br>
<%-- </c:if> --%>

 
</body>
</html>