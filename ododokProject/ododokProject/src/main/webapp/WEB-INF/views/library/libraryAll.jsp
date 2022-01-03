<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 🎄도서관목록🎄 </title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
		
		
			🎄도서관목록🎄
			
			<div id="library-table">
			<table class="table table-striped">
		
			<tr>
			<th>도서관번호</th>
			<th>도서관이름</th>
		
			</tr>
		
			<c:forEach items="${libraryList}" var="l">
			<tr>
				<td>${l.l_number}</td>
				<td><a href="libraryView?l_number=${l.l_number}">${l.l_name}</a></td>
				<!-- 사실 팝업처리를 하고싶어! -->
			</tr>
			</c:forEach>
			</table>
			</div>
	</section>
</body>
</html>