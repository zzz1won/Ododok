<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>πππμ€λλ λ§μ΄νμ΄μ§πππ</title>

	<script>
		function checkAccout()	{
		
			const pw = document.querySelector("#f_pw").value;
			const pw1 = document.getElementById("f_pw").value;
			const pwDB = '${family.f_pw}';
			
			if (pw1 == pwDB) {
				editForm.submit();
				console.log("mypage.jspμμ μ±κ³΅")
			}	else	{
				alert ("λΉλ°λ²νΈκ° νλ¦½λλ€")
				console.log ("mypage.jspμμ μ€ν¨")
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

<h2> πππλ§μ΄νμ΄μ§πππ </h2>
<!-- 1219. λ§ν¬κ° μλμ΄μ€λλ° ^^ κ·Έλ₯ λ¬΄μνκ³  μ§νν©λλ€~ -->

λΉλ°λ²νΈ νμΈμ κ±°μΉ ν μμ νμ΄μ§λ‘ λμ΄κ°λλ€.

	<form action ="editForm?f_number=${LoginDTO.f_number}" method = "POST" name="editForm">
		<input type = "text" name="f_id" value="${family.f_id}" readonly>
		<input type = "password" name="f_pw" value="${f_pw}" placeholder="λΉλ°λ²νΈνμΈ">
	<%-- 	<input type = "text" name="f_name" value="${family.f_name}" readonly>
		<input type = "text" name="f_phone" value="${family.f_phone}" placeholder="μ°λ½μ²μμ ">
		<input type = "text" name="f_address" value="${family.f_address}" placeholder="μ£Όμλ³κ²½"> --%>
		<input type = "submit" value="λ΄μ λ³΄ μμ " onclick="checkAccount()">
	</form>  
</body>
</html>