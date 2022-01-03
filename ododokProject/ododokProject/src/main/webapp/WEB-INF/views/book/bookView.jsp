<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>오도독! 12월 추천도서</title>
</head>

<style>

	

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
		<!-- Main -->
		<div class="container-lg">
			<div id="main">
				<div class="inner">
					<div id = "book_name">
						<h1> ${book.b_name} </h1>
					</div>
						<span class="image main"><img src="images/pic13.jpg" alt="" /></span>
			</div>		
			<div id="info">
					<div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon3" >도서번호</span>
					  <input type="text" class="form-control" id="basic-url" value="${book.b_number}" aria-describedby="basic-addon3" style="background-color:white" readonly>
					</div>

					<div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon3">도서명</span>
					  <input type="text" class="form-control" id="basic-url" value="${book.b_name}" aria-describedby="basic-addon3" style="background-color:white" readonly>
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon3">작가</span>
					  <input type="text" class="form-control" id="basic-url" value="${book.b_writer}" aria-describedby="basic-addon3" style="background-color:white" readonly>
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon3">출판사</span>
					  <input type="text" class="form-control" id="basic-url" value="${book.b_company}" aria-describedby="basic-addon3" style="background-color:white" readonly>
					</div>
					<div class="input-group mb-3">
					  <span class="input-group-text" id="basic-addon3">출판연도</span>
					  <input type="text" class="form-control" id="basic-url" value="${book.b_year}" aria-describedby="basic-addon3" style="background-color:white" readonly>
					</div>
			
					
					<div class="input-library mb-3">
					  <span class="input-group-text" id="basic-addon3">도서 보유 도서관</span>
					  <%-- <input type="text" class="form-control" id="basic-url" value="${book.l_name}" aria-describedby="basic-addon3" style="background-color:white" readonly> --%>
					<c:forEach var="b" items="${ba}">
						<input type="text" class="form-control" id="basic-url" value="${b}" aria-describedby="basic-addon3" style="background-color:white" readonly>
					</c:forEach>
					</div>
					
				
				</div>
				
			<div id="review-body">
			리뷰	
				
			

		
				
			<c:forEach items="${reviewList}" var="rv" begin="0" end="3" step="1" >
			 	
					<div class="input-library mb-3">
					  <span class="input-group-text" id="basic-addon3">${rv.f_id} 님의 리뷰</span>
					  <input type="text" class="form-control" id="basic-url" value="${rv.r_contents}" aria-describedby="basic-addon3" style="background-color:white" readonly>
						<c:choose>
							<c:when test ="${rv.r_rating eq 5}"> 
								⭐⭐⭐⭐⭐
							</c:when>
							
							<c:when test ="${rv.r_rating eq 4}"> 
								⭐⭐⭐⭐
							</c:when>
							
							<c:when test ="${rv.r_rating eq 3}"> 
								⭐⭐⭐
							</c:when>
							
							<c:when test ="${rv.r_rating eq 2}"> 
								⭐⭐
							</c:when>
							
							<c:when test ="${rv.r_rating eq 1}"> 
								⭐
							</c:when>
							
							<c:when test ="${rv.r_rating eq 0}"> 
								추천하지 않아요!
							</c:when>
						</c:choose>
					</div>	
			</c:forEach>	
					
				<c:choose>
					<c:when test="${LoginDTO.f_id eq null}">
					리뷰를 작성하시려면 로그인 해주세요 (˘･_･˘)</c:when>
					<c:when test="${LoginDTO.f_id != null}">
						<a href="/ododok/review/reviewForm?b_number=${book.b_number}" class="btn btn-primary btn-lg abled" tabindex="-1" role="button" aria-disabled="true">나도 리뷰쓰기!</a>
					</c:when>
				</c:choose>
				
			</div>
			</div>
		</div>
</section>	


</body>
</html>