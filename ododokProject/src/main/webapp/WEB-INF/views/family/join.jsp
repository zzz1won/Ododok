<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<!-- 성공적인 부트스트랩을 위해 링크두개 가져가기 ^^ -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 성공적인 부트스트랩을 위해 링크두개 가져가기 ^^ -->
<meta charset="UTF-8">
<title>오도독 회원가입</title>
</head>
<style>
input	{
display : block;
}

.input-group	{
color : pink;
width : 350px;
}
</style>

<body>

오늘 도서관에서 독서하자! "오도독"<br>
회원가입해주세염<br>




<form action = "join" method="post" enctype="multipart/form-data">
	<input type = "text" name = "f_id" placeholder="아이디">
	<input type = "password" name = "f_pw" placeholder="비밀번호">
	<input type = "text" name = "f_name" placeholder="홍길동">
	<input type = "text" name = "f_address" placeholder="주소">
	<input type = "text" name = "f_phone" placeholder="연락처">
	<input type = "file" name = "f_file">
	<input type="submit" value="가입">
	<a class="btn btn-light" style = "background-color:pink" role="button">가입</a>
</form>






</body>
</html>