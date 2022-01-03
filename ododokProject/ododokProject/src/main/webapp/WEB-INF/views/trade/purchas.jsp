<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>📚📖📙오도독 도서구매📚📖📙</title>
</head>

<style>

	body	{
	background-color: MistyRose;	
	}
	
	#search1	{
	width : 600px;
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

	
	
	#headMent	{
	position: relative;
	text-align: center;	
	margin-bottom: 10px;
	}



	#purTable	{
	width : 600px;
	position: relative;
	left: 20%;
	}
	
	#pointMent	{
	margin-top: 10px;
	text-align: center;	
	}
		


</style>
<script>
	function search1(){
		search_form.submit();
	}
	

</script>
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

	<section class = "purAll">
		<div id = "headMent">
		✨5000✨ 오도독으로 도서를 구매할 수 있습니다!<br>
		</div>
	
		<div id = "search1">
			<form action = "search" method="GET" name="search_form">
				<select class="form-select form-select-sm" aria-label=".form-select-sm example" name = "searchtype">
					<option value="b_name">도서명 </option>
					<option value="b_writer">작가 </option>
					<option value="l_name">보유도서관 </option>
				</select>
				<div class="input-group mb-3">	
				  <input type="text" name="keyword" class="form-control" placeholder="검색어를 입력하세요" aria-label="Recipient's username" aria-describedby="button-addon2">
				  <button class="btn btn-outline-light" style="background-color:pink" type="button" id="button-addon2" onclick="search1()"> Button </button>
				</div>  
			</form>
		</div>
		
		<div id = "purTable">
				<form action="purchas" method="post" class="form-floating">
					<table>
					<tr>
						<th>보유여부</th>
						<th>제목</th>
						<th>작가</th>
						<th>✔</th>
					</tr>
				
					<c:forEach items="${tradeList}" var="t">
						<tr>
							<td>${t.t_check}</td>
							<td>${t.b_name}</td>
							<td>${t.b_writer}</td>
							<td><div class="form-check">
							  <input class="form-check-input" type="radio" name="t_number" id="flexRadioDefault1" value="${t.t_number}">
							</div></td>
						</tr>
					</c:forEach>
					</table>
					<input type="hidden" name="f_number" value="${LoginDTO.f_number}">
					<input type="hidden" name="t_id" value="${LoginDTO.f_id}">
<%-- 					<input type="hidden" name="t_number" value="${t.t_number}"> --%>
					<input type="submit" value="구매">
				</form>
		</div>
		
			
			
		<div id = pointMent>
			${LoginDTO.f_name}님은 현재 ${LoginDTO.f_point} 오도독을 보유중이시네요!
		</div> 
	</section>
</section>
</body>
</html>