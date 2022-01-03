<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>


<title>[admin] 회원목록조회</title>
</head>
<body>

  <table class="table table-warning table-striped">
	<thead>
		<tr>
		<td>회원번호</td>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>연락처</td>
		<td>주소</td>
		<td>파일</td>
		<td>포인트</td>
		<td>삭제</td>
	</thead>
 	
	<c:forEach items ="${familyAll}" var="f">
		<tr>
			<td>${f.f_number }</td>
			<td>${f.f_id}</td>
			<td>${f.f_pw}</td>
			<td>${f.f_name}</td>
			<td>${f.f_phone}</td>
			<td>${f.f_address}</td>
			<td>${f.f_file}</td>
			<td>${f.f_point}</td>
			<td><a href="delete?f_number=${f.f_number}" class="btn btn-secondary btn-sm abled" tabindex="-1" role="button" aria-disabled="false" style="background-color:ff9e7d">삭제</a></td>
		</tr>
	</c:forEach>
		
	

	
 </table>
 

</body>
</html>