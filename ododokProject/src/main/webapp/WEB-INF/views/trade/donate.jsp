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
<title>πππμ€λλ λμκΈ°μ¦πππ</title>
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
						 <a href="/ododok/library/info">μ€λλ</a>
						 <a href="/ododok/library/libraryAll">νλ£¨λ£© μ°λμμ</a>
						 <a href="/ododok/book/readingList">μλλΌ μΆμ²λμ</a>
						 <a href="/ododok/write/paging">μ΄μ©ν°λΉ κ²μν</a>
						 <a href="/ododok/trade/tradeGo">λΉ΅λΉ΅ν μ±λ°©</a>
											</nav>
		
							</div>
				</div>
			</div>	
		</section>

		<section id = body>
			<form action="donate" method="post" class="form-floating">
				
				<!-- μΉ΄νκ³ λ¦¬ νμ -->
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" name = "t_check" value="λ³΄μ " id="flexCheckChecked" >
					  <label class="form-check-label" for="flexCheckChecked">
						κΈ°μ¦
					  </label>
					</div>		
				
				
				
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" name="b_name" id="floatingInput" placeholder="λμμ΄λ¦">
				  <label for="floatingInput">λμλͺ</label>
				</div>
				<div class="form-floating">
				  <input type="text" class="form-control" name="b_writer" id="floatingInput" placeholder="μκ°μ΄λ¦">
				  <label for="floatingInput">μκ°λͺ</label>
				</div>
	
				<input type="hidden" name="f_number" value="${LoginDTO.f_number}">
				<input type="hidden" name="t_id" value="${LoginDTO.f_id}">
<!-- 				<div class="form-floating">
				  <input type="text" class="form-control" name="l_name" id="floatingInput" placeholder="κΈ°μ¦ν  λμκ΄">
				  <label for="floatingInput">λ¬΄μ¨λμκ΄</label>
				</div> -->
				
					<select class="form-select form-select-sm" name="l_name" aria-label=".form-select-sm example">
					  <option selected>κΈ°μ¦ ν  λμκ΄μ μ νν΄μ£ΌμΈμ</option>
					  <option  value="μΈμ²κ΄μ­μκ΅μ‘μ²­ μ£Όμλμκ΄">μΈμ²κ΄μ­μκ΅μ‘μ²­ μ£Όμλμκ΄</option>
					  <option  value="μ©λΉλμκ΄">μ©λΉλμκ΄</option>
					  <option  value="μλ΄λμκ΄">μλ΄λμκ΄</option>
					  <option  value="μ₯κ³¨μ΄λ¦°μ΄λμκ΄">μ₯κ³¨μ΄λ¦°μ΄λμκ΄</option>
					  <option  value="μ΄λλμκ΄">μ΄λλμκ΄</option>
					  <option  value="νλλλμκ΄">νλλλμκ΄</option>
					  <option  value="μ λ¬Όν¬λμκ΄">μ λ¬Όν¬λμκ΄</option>
					  <option  value="μκΈκ½λμκ΄">μκΈκ½λμκ΄</option>
					  <option  value="νμ°λ¦¬μ΄λ¦°μ΄λμκ΄">νμ°λ¦¬μ΄λ¦°μ΄λμκ΄</option>
					  <option  value="μ‘μμ μλμκ΄">μ‘μμ μλμκ΄</option>
					  <option  value="κ΄κ΅μ΄λ¦°μ΄λμκ΄">κ΄κ΅μ΄λ¦°μ΄λμκ΄</option>
					  <option  value="μΈμ²κ΄μ­μ λ―ΈμΆνκ΅¬ κ΅¬λ¦½λμκ΄">μΈμ²κ΄μ­μ λ―ΈμΆνκ΅¬ κ΅¬λ¦½λμκ΄</option>
					  <option  value="μ₯μ¬λμ΄λ¦°μ΄λμκ΄">μ₯μ¬λμ΄λ¦°μ΄λμκ΄</option>
					  <option  value="μ­μμ΄λ¦°μ΄λμκ΄">μ­μμ΄λ¦°μ΄λμκ΄</option>		  
					</select>
				
				
				<input type="submit" value="κΈ°μ¦">
				λμ κΈ°μ¦μ 1000pλ₯Ό μ λ¦½ν΄λλ¦½λλ€!
				</form>
	
			
		</section>

</body>

</html>