<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>📚📖📙오도독 마이페이지📚📖📙</title>
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
				console.log("성공");
				console.log(result);
				if(result=="ok"){
					editForm.submit();
				}else{
					alter("비밀번호가 틀렸습니다.");
				}
			},
			error:function(){
				console.log("오타");
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
				console.log("성공");
				console.log(result);
				if(result=="ok"){
					editForm.submit();
				}else{
					alter("비밀번호가 틀렸습니다.");
				}
			},
			error:function(){
				alter("실패");
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

<h2> 📚📖📙마이페이지📚📖📙 </h2>
<!-- 1219. 링크가 안넘어오는데 ^^ 그냥 무시하고 진행합니다~ -->

비밀번호 확인을 거친 후 수정페이지로 넘어갑니다.

	<form action ="editForm?f_number=${LoginDTO.f_number}" method = "POST" name="editForm">
		<input type = "text" id="f_id" name="f_id" value="${family.f_id}" readonly>
		<input type = "password" id="f_pw" name="f_pw" value="${f_pw}" placeholder="비밀번호확인">
	<%-- 	<input type = "text" name="f_name" value="${family.f_name}" readonly>
		<input type = "text" name="f_phone" value="${family.f_phone}" placeholder="연락처수정">
		<input type = "text" name="f_address" value="${family.f_address}" placeholder="주소변경"> --%>
		
	</form>  
		<button onclick="pwch()">내 정보 수정</button>
</body>
</html>