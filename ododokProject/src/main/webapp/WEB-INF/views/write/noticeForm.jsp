<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>๐Notice๐</title>
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

	<form action="notice" method = "POST" enctype="multipart/form-data">
		
		
		<!-- ์นดํ๊ณ ๋ฆฌ ํ์ -->
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" name = "w_category" value="๊ณต์ง" id="flexCheckDefault" checked >
			  <label class="form-check-label" for="flexCheckDefault">
			    ๊ณต์ง
			  </label>
			</div>	
			
		<!-- ํ์ดํ ๋จ -->
		<div class="title-group mb-3">	
		  <input type="text" name="w_title" class="form-control" aria-label="Text input with dropdown button" placeholder="์ ๋ชฉ์์๋ ฅํ์ธ์">
		</div>
		
		<!-- ๋ด์ฉ ๋จ -->
		<input type = "hidden" name="f_id" value="${LoginDTO.f_id}" readonly>
		<textarea name="w_contents" id="contents" rows="20" placeholder="๋ด์ฉ์๋ ฅํ์ธ์"></textarea><br>
	
		<!-- ํ์ผ์ถ๊ฐ ๋จ -->	
		<div class="file-group mb-3"> 
  			<input type="file" id="w_file1" name="w_file" class="form-control" id="inputGroupFile02">
  			<label class="input-group-text" id="w_file2" for="inputGroupFile02">Upload</label>
		</div>
		<input type = "hidden" name="f_number" value="${LoginDTO.f_number}">
		<input type = "submit" value="์์ฑ">
		<button type="button" class="btn btn-outline-light" style="background-color:pink"> ์์ฑ </button>
		
	
	</form>
	

</body>
</html>