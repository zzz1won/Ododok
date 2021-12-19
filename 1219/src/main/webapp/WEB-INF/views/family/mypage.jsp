<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>📚📖📙오도독 마이페이지📚📖📙</title>

	<script>
		function checkAccout()	{
		
			const pw = document.querySelector("#f_pw").value;
			const pw1 = document.getElementById("f_pw").value;
			const pwDB = '${family.f_pw}';
			
			if (pw1 == pwDB) {
				editForm.submit();
				console.log("mypage.jsp에서 성공")
			}	else	{
				alert ("비밀번호가 틀립니다")
				console.log ("mypage.jsp에서 실패")
			}
			}
	
	</script>
	<style>
	
		input {
		display : block;
		}
	</style>


</head>
<body>

<h2> 📚📖📙마이페이지📚📖📙 </h2>
<!-- 1219. 링크가 안넘어오는데 ^^ 그냥 무시하고 진행합니다~ -->

비밀번호 확인을 거친 후 수정페이지로 넘어갑니다.

	<form action ="editForm?f_number=${LoginDTO.f_number}" method = "POST" name="editForm">
		<input type = "text" name="f_id" value="${family.f_id}" readonly>
		<input type = "password" name="f_pw" value="${f_pw}" placeholder="비밀번호확인">
	<%-- 	<input type = "text" name="f_name" value="${family.f_name}" readonly>
		<input type = "text" name="f_phone" value="${family.f_phone}" placeholder="연락처수정">
		<input type = "text" name="f_address" value="${family.f_address}" placeholder="주소변경"> --%>
		<input type = "submit" value="내정보 수정" onclick="checkAccount()">
	</form>  
</body>
</html>