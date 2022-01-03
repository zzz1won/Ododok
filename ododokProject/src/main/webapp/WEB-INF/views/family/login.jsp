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
<title>Ododok Login</title>

<style>
	.input-group 	{
	width:500px;
	}

	.login	{
	
	}
</style>

</head>
<body>

		<div id = "login">
			<form action = "login" method="post" enctype="multipart/form-data">
				<div class="input-group mb-3" id="input-id">
			  		<input type="text" class="form-control" placeholder="아이디" aria-label="Recipient's username" aria-describedby="button-addon2" name="f_id">
				</div>
				<div class="input-group mb-3" id="input-pw">
			  		<input type="text" class="form-control" placeholder="비밀번호" aria-label="Recipient's username" aria-describedby="button-addon2" name="f_pw">
			  	</div>
				
				<input type="submit" value="로그인" style = "background-color:pink">	
				<a class="btn btn-light" style = "background-color:pink" role="button">가입</a>
			</form>
			
		</div>
	

</body>
</html>