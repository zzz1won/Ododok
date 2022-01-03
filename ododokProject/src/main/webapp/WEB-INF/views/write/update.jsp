<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>📚 update page 📚</title>
<style>
	.title-group 	{
	width : 30%;
	}

	#w_file1	{
	width : 25%
	}
	
	#contents	{
	width : 30%
	}

</style>
</head>
<body>

	<form action="update" method = "POST" enctype="multipart/form-data">
		
		<input type="hidden" name="w_number" value="${write.w_number}">
				
		<!-- 카테고리 표시 -->
		<c:if test="${sessionScope.LoginDTO.f_id eq 'admin'}">
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" name = "w_category" value="공지" id="flexCheckDefault" checked >
			  <label class="form-check-label" for="flexCheckDefault">
			    공지
			  </label>
			</div>	
		</c:if>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" value="w_categori" value="독후감" id="flexCheckDefault" >
		  <label class="form-check-label" for="flexCheckDefault">
		    독후감
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" name = "w_category" value="w_categori" value="수필" id="flexCheckChecked" >
		  <label class="form-check-label" for="flexCheckChecked">
		    수필
		  </label>
		</div>		
		
		<!-- 타이틀 단 -->
		<div class="title-group mb-3">	
		  <input type="text" name="w_title" class="form-control" aria-label="Text input with dropdown button" value="${write.w_title}">
		</div>
		
		<!-- 내용 단 -->
		<input type = "hidden" name="f_id" value="${LoginDTO.f_id}" readonly>
		<textarea name="w_contents" id="contents" rows="20" > ${write.w_contents}</textarea><br>
	
		<!-- 파일추가 단 -->	
		<div class="file-group mb-3"> 
  			<input type="file" id="w_file1" name="w_file" class="form-control" id="inputGroupFile02">
  			<label class="input-group-text" id="w_file2" for="inputGroupFile02">Upload</label>
		</div>
		<input type = "submit" value="작성">
		<button type="button" class="btn btn-outline-light" style="background-color:pink"> 작성 </button>
	</form>
	

</body>
</html>