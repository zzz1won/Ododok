<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>editForm</title>
	<style>
	
		input {
		display : block;
		}
	</style>
</head>
<body>
	edit~form~ 출력만 합니다잉~~~
	
	<form action ="edit?f_number=${LoginDTO.f_number}" method = "POST" >
		<input type = "text" name="f_id" value="${family.f_id}" readonly>
		<input type = "password" name="f_pw" value="${f_pw}" placeholder="비밀번호수정">
		<input type = "text" name="f_name" value="${family.f_name}" readonly>
		<input type = "text" name="f_phone" value="${family.f_phone}" placeholder="연락처수정">
		<input type = "text" name="f_address" value="${family.f_address}" placeholder="주소변경">
		<input type = "submit" value="내정보 수정">
	</form>  
</body>
</html>