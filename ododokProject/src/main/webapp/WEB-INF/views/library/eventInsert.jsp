<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[위대한관리자] 행사추가</title>
</head>
<body>
	<form action = "eventInsert" method='post'>
		<input type="text" name="l_number" placeholder="도서관번호"><br>
		<input type="text" name="e_name" placeholder="행사명"><br>
		<input type="text" name="e_contents" placeholder="행사내용"><br>
		<input type="date" name="e_date" placeholder="행사날짜"><br>
		<input type="text" name="e_pp" placeholder="참여인원"><br>
		<input type="text" name="e_maxpp" placeholder="최대가능인원"><br>
		
		<input type = "submit" value="등록">
	
	
	</form>
</body>
</html>