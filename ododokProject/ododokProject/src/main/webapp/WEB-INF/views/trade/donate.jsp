<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>📚📖📙오도독 도서기증📚📖📙</title>
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
	
	 #autoSearchTest{
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
     
    
     
     
</style>
<script>
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
			<form action="donate" method="post" class="form-floating">
				
				<!-- 카테고리 표시 -->
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" name = "t_check" value="보유" id="flexCheckChecked" >
					  <label class="form-check-label" for="flexCheckChecked">
						기증
					  </label>
					</div>		
				
				
				
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" name="b_name" id="floatingInput" placeholder="도서이름">
				  <label for="floatingInput">도서명</label>
				</div>
				<div class="form-floating">
				  <input type="text" class="form-control" name="b_writer" id="floatingInput" placeholder="작가이름">
				  <label for="floatingInput">작가명</label>
				</div>
	
				<input type="hidden" name="f_number" value="${LoginDTO.f_number}">
				<input type="hidden" name="t_id" value="${LoginDTO.f_id}">
<!-- 				<div class="form-floating">
				  <input type="text" class="form-control" name="l_name" id="floatingInput" placeholder="기증할 도서관">
				  <label for="floatingInput">무슨도서관</label>
				</div> -->
				
					<select class="form-select form-select-sm" name="l_name" aria-label=".form-select-sm example">
					  <option selected>기증 할 도서관을 선택해주세요</option>
					  <option  value="인천광역시교육청 주안도서관">인천광역시교육청 주안도서관</option>
					  <option  value="용비도서관">용비도서관</option>
					  <option  value="수봉도서관">수봉도서관</option>
					  <option  value="쑥골어린이도서관">쑥골어린이도서관</option>
					  <option  value="이랑도서관">이랑도서관</option>
					  <option  value="학나래도서관">학나래도서관</option>
					  <option  value="제물포도서관">제물포도서관</option>
					  <option  value="소금꽃도서관">소금꽃도서관</option>
					  <option  value="한우리어린이도서관">한우리어린이도서관</option>
					  <option  value="송암점자도서관">송암점자도서관</option>
					  <option  value="관교어린이도서관">관교어린이도서관</option>
					  <option  value="인천광역시 미추홀구 구립도서관">인천광역시 미추홀구 구립도서관</option>
					  <option  value="장사래어린이도서관">장사래어린이도서관</option>
					  <option  value="숭의어린이도서관">숭의어린이도서관</option>		  
					</select>
				
				
				<input type="submit" value="기증">
				도서 기증시 1000p를 적립해드립니다!
				</form>
	
			
		</section>

</body>

</html>