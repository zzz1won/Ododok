<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>πEssayπ</title>

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

	<form action="essay" method = "POST" enctype="multipart/form-data">
		
		
		<!-- μΉ΄νκ³ λ¦¬ νμ -->
		<c:if test="${sessionScope.LoginDTO.f_id eq 'admin'}">
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" name = "w_category" value="κ³΅μ§" id="flexCheckDefault" checked >
			  <label class="form-check-label" for="flexCheckDefault">
			    κ³΅μ§
			  </label>
			</div>	
		</c:if>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" name = "w_category" value="λνκ°" id="flexCheckDefault">
		  <label class="form-check-label" for="flexCheckDefault">
		    λνκ°
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="checkbox" name = "w_category" value="μν" id="flexCheckChecked" >
		  <label class="form-check-label" for="flexCheckChecked">
		    μν
		  </label>
		</div>		
		
		<!-- νμ΄ν λ¨ -->
		<div class="title-group mb-3">	
		  <input type="text" name="w_title" class="form-control" aria-label="Text input with dropdown button" placeholder="μ λͺ©μμλ ₯νμΈμ">
		</div>
		
		<!-- λ΄μ© λ¨ -->
		<input type = "hidden" name="f_id" value="${LoginDTO.f_id}" readonly>
		<textarea name="w_contents" id="contents" rows="20" placeholder="λ΄μ©μλ ₯νμΈμ"></textarea><br>
	
		<!-- νμΌμΆκ° λ¨ -->	
		<div class="file-group mb-3"> 
  			<input type="file" id="w_file1" name="w_file" class="form-control" id="inputGroupFile02">
  			<label class="input-group-text" id="w_file2" for="inputGroupFile02">Upload</label>
		</div>
		<input type = "hidden" name="f_number" value="${LoginDTO.f_number}">
		<input type = "submit" value="μμ±">
		<button type="button" class="btn btn-outline-light" style="background-color:pink"> μμ± </button>
		
	
	</form>
	

</body>
</html>