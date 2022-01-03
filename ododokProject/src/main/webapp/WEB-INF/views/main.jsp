<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>오늘 도서관에서 독서하자! 오도독!</title>
</head>

<style>
	@font-face {
	    font-family: 'yg-jalnan';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
		@font-face {
	    font-family: 'KOTRAHOPE';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/KOTRAHOPE.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	
		@font-face {
	    font-family: 'SF_HambakSnow';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/SF_HambakSnow.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
		@font-face {
	    font-family: 'KyoboHandwriting2020A';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2112@1.0/KyoboHandwriting2020A.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}


	body	{
	background-color: MistyRose;	
	}
	
	#header	{
	background-color: white;
	padding : 10px;
	position: absolute;
	width:100%;
	z-index:9999;
	}
	
	#body{
	padding-top: 150px;
	position: absolute;
	left: 10%;
	right: 10%;
	}
	
	#main	{
	text-align:center;
	font-family: KyoboHandwriting2020A;
	font-size : 18px;
	}
	
	#book_name	{
    font-family: SF_HambakSnow;
    color: pink;
    text-align:center;
    }
    
     #info	{
    /* text-align:center; */
    width: 700px;
    position: relative;
	left: 20%;
	left: 20%;
    }
    
     #logo	{
     font-family: 'KOTRAHOPE';
     color:pink;
    }
    
     #review-body	{
    padding-top : 50px;
    width: 700px;
    position: relative;
	left: 20%;
	left: 20%;
    }
   
</style>

<body>

	<section id = header>
			<div class="container">
				<div class="row">
							<div class="col-12">
		
										<!-- Logo -->
										<div id=logo>
											<h1><a href="/ododok/main">Ododok</a></h1>
										</div>
										
						<!-- Nav -->				
						<nav class="navbar navbar-warning">
						 <a href="/ododok/library/info">오도독</a>
						 <a href="/ododok/library/libraryAll">후루룩 우동소식</a>
						 <a href="/ododok/book/readingList">와랄라 추천도서</a>
						 <a href="/ododok/write/paging">어쩔티비 게시판</a>
						 <a href="/ododok/trade/tradeGo">빵빵한 책방</a>
											</nav>
		
							</div>
				</div>
			</div>	
		</section>

	<section id = body>
		
		// 1216 -02 main.jsp 홈 메인화면입니다<br>

		오도독입니다!
		원활한 사이트 이용을 위해 로그인해주세요 *^^*
		<br>
		<a href = "family/login"> 로그인</a><br>
		<a href = "family/join"> 회원가입</a><br>
		
		
		
		<%--  ${family.f_number} f_number<br> --%>
		
		<c:choose>
			<c:when test="${sessionScope.LoginDTO.f_id eq familyDTO.f_id}">
				오도독입니다!
			</c:when>
		
			<c:when test="${LoginDTO.f_id eq null}">
				로그인을 해주시면 원활한 사용이 가능합니다!
			</c:when>
			<c:when test="${sessionScope.LoginDTO.f_id eq 'admin'}">
				어서오세요 ${LoginDTO.f_name}<br>
				현재포인트 : ${LoginDTO.f_point}<br>
				<a href = "family/mypage?f_number=${LoginDTO.f_number}"> 마이페이지 </a><br>
				<a href = "family/famList"> 회원목록 출력 </a><br>
				<a href = "family/logout"> 로그아웃 </a><br>
				<a href = "library/eventInsert"> 도서관 행사추가 </a><br>
				<a href = "book/paging"> 도서관리 </a><br>
				<a href = "write/noticeForm?f_number=${LoginDTO.f_number}"> 공지추가 </a><br>
			</c:when>
			<c:otherwise>
				어서오세요 ${LoginDTO.f_name}님 <br>
				현재 ${LoginDTO.f_point} 오도독 보유하고 있어요!<br>
				<a href = "family/mypage?f_number=${LoginDTO.f_number}"> 마이페이지 </a><br>
				<a href = "family/logout"> 로그아웃 </a><br>
			</c:otherwise>
		</c:choose>
	</section>
</body>
</html>