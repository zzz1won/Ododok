<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title> 🎄도서관 자세히보기🎄 </title>
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
			
			🎄도서관 자세히보기🎄
			
				<table>
				
				<tr>
				<td>도서관번호 : ${library.l_number}</td>
				<td>도서관이름 : ${library.l_name}</td>
				<td>도서관 주소 [도로명] ${library.l_location1}<br> ${library.l_location2}<br> ${library.l_postNum} </td>	
				<td>${library.l_tel}</td>
				<td>${library.l_link}</td>
				<td><a href="${l.l_link}">바로가기</a></td>
				<td>${l.l_book}</td>
				</tr>
				</table>

		</section>
</body>
</html>