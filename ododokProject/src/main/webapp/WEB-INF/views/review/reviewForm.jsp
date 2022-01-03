<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>오도독! 도서리뷰!</title>

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
	
	#review-body	{
	padding-top : 200px;
	position: relative;
	left:35%;
	rigth:35%;
	width: 500px;
	}
	
	/* 별점부분 */
	
	#r_rating fieldset	{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
    position: relative;
	left:40%;
    right:50%;
	}
	
	#r_rating input[type=radio]{
	    display: none; /* 라디오박스 감춤 */
	}
	
	#r_rating label{
	    font-size: 1em; /* 이모지 크기 */
	    color: transparent; /* 기존 이모지 컬러 제거 */
	    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
	}
	
	#r_rating label:hover{
    text-shadow: 0 0 0 #a00; /* 마우스 호버 */
	}
	
	#r_rating label:hover ~ label{
	    text-shadow: 0 0 0 #a00; /* 마우스 호버 뒤에오는 이모지들 */
	}
	
	#r_rating fieldset legend{
    text-align: center;
	}
	
	#r_rating input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #a00; /* 마우스 클릭 체크 */
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
	
	<section id = review-body>
		<div class="container">
			📖${book.b_name}<br>
			이 책을 다른 사람에게도 추천하시겠어요?
			
			

			<form name="r_rating" id="r_rating" action = "reviewWrite" method="post"> 		
				<div class="mb-3">
				  <label for="exampleFormControlTextarea1" class="form-label">${LoginDTO.f_id}님 의 한줄평</label>
				  <input type= "hidden" name="f_id" value="${LoginDTO.f_id}">
				  <input type= "text" name="b_number" value="${book.b_number}">
				  <input type= "hidden" name="b_name" value="${book.b_name}">
				  <!-- <input type= "hidden" name="r_rating" value="0"> -->
				  <textarea class="form-control" id="exampleFormControlTextarea1" name="r_contents" rows="1"></textarea>
			    <fieldset>
			        <input type="radio" name="r_rating" value="5" id="rate1"><label for="rate1">⭐</label>
			        <input type="radio" name="r_rating" value="4" id="rate2"><label for="rate2">⭐</label>
			        <input type="radio" name="r_rating" value="3" id="rate3"><label for="rate3">⭐</label>
			        <input type="radio" name="r_rating" value="2" id="rate4"><label for="rate4">⭐</label>
			        <input type="radio" name="r_rating" value="1" id="rate5"><label for="rate5">⭐</label>
			    </fieldset>
				</div>
				<input type = "submit" value="작성">
				<button type="button" class="btn btn-primary btn-sm abled" tabindex="-1" role="button" aria-disabled="true"> 한줄평 남기기!</button>
				</form>
			
			
			
		</div>
	</section>
	
</body>
</html>