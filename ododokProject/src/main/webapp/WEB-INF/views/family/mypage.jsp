<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>πππμ€λλ λ§μ΄νμ΄μ§πππ</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

	<script>
		function checkAccout()	{
			console.log("???");
			const id = document.getElementById("f_id").value;
			const pw1 = document.getElementById("f_pw").value;
			
		$.ajax({
			type:'post',
			url:'/ododok/family/pwch',
			data:{"f_id":id,"f_pw":pw1},
			datatype:'text',
			success:function(result){
				console.log("μ±κ³΅");
				console.log(result);
				if(result=="ok"){
					editForm.submit();
				}else{
					alter("λΉλ°λ²νΈκ° νλ Έμ΅λλ€.");
				}
			},
			error:function(){
				console.log("μ€ν");
			}
			
			});
		}
		function pwch()	{
			console.log("???");
			const id = document.getElementById("f_id").value;
			const pw1 = document.getElementById("f_pw").value;
			
		$.ajax({
			type:'post',
			url:'/family/pwch',
			data:{"f_id":id,"f_pw":pw1},
			datatype:'text',
			success:function(result){
				console.log("μ±κ³΅");
				console.log(result);
				if(result=="ok"){
					editForm.submit();
				}else{
					alter("λΉλ°λ²νΈκ° νλ Έμ΅λλ€.");
				}
			},
			error:function(){
				alter("μ€ν¨");
			}
			
			});
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
		<input type = "text" id="f_id" name="f_id" value="${family.f_id}" readonly>
		<input type = "password" id="f_pw" name="f_pw" value="${f_pw}" placeholder="λΉλ°λ²νΈνμΈ">
	<%-- 	<input type = "text" name="f_name" value="${family.f_name}" readonly>
		<input type = "text" name="f_phone" value="${family.f_phone}" placeholder="μ°λ½μ²μμ ">
		<input type = "text" name="f_address" value="${family.f_address}" placeholder="μ£Όμλ³κ²½"> --%>
		
	</form>  
		<button onclick="pwch()">λ΄ μ λ³΄ μμ </button>
</body>
</html>