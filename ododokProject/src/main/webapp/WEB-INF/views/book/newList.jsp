<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>오도독! 신작도서</title>
</head>
<script>
	function search1(){
		search_form.submit();
		
	}
</script>
<style>

		body	{
	background-color: MistyRose;	
	}
	
	#search1	{
	width : 60%;
	left: 20%;
	position: relative;
	}
	
	#book_table	{
    width : 60%;
	left: 20%;
	position: relative;
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

		<header>
			<a href = "readingList"> 인기도서 </a>
			<a href = "recommendList"> 추천도서 </a>
			<a href = "newList"> 신작도서 </a>
		</header>
		
		
		<section class = "newListAll">	
		<div id = "search1">
			<form action = "search" method="GET" name="search_form">
				<select class="form-select form-select-sm" aria-label=".form-select-sm example" name = "searchtype">
					<option value="b_name">제목 </option>
					<option value="b_writer">작가 </option>
					<option value="b_company">출판사 </option>
				</select>
				
				<div class="input-group mb-3">	
					  <input type="text" name="keyword" class="form-control" placeholder="검색어를 입력하세요" aria-label="Recipient's username" aria-describedby="button-addon2">
					  <button class="btn btn-outline-light" style="background-color:pink" type="button" id="button-addon2" onclick="search1()"> Button </button>
				</div>		  
				
			</form>
		</div>
	
	
			<table class="table table-striped" id="book_table">
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				
			</tr>
			
			<c:forEach var="b" items="${bookList}" begin="0" end="9" step="1" >
			<tr>
				<td>${b.b_number}</td>
				<td><a href="bookView?b_number=${b.b_number}">${b.b_name}</td>
				
			</tr>
			</c:forEach>
			</table>
		</section>
	</section>

</body>
</html>