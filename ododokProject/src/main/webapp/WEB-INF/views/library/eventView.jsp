<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>📚오도독! 행사안내</title>
</head>
<style>

	
		body	{
	background-color: MistyRose;	
	}
	

	
	#search1	{
	width : 600px;
	left: 30%;
	position: relative;
	}
	
	#category-check	{
	text-align : center;
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
	
	#body-table	{
	width : 800px;
	left: 20%;
	position: relative;
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

	#paging	{
	position: relative;
	text-align: center;
	}
	
	
</style>
<script>
	function entry(){
		
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

		
			<div id="event-table">
				<table class="table table-striped">
				<tr>
				<td>${event.l_number}</td>
				<td>${event.e_name}</td>
				<td>${event.e_contents}</td>
				<td>${event.e_date}</td>
				<td>참여인원: ${event.e_pp} / ${event.e_maxpp}</td>
				</tr>
				</table>
			</div>

	<button type="button" class="btn btn-outline-light" btn-sm" style="background-color:pink" onclick="entry()"> 참가 </button>
	
</body>
   
</html>