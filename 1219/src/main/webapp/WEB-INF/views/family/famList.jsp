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

 <table>
	<thead>
		<tr>회원번호</tr>
		<tr>아이디</tr>
		<tr>비밀번호</tr>
		<tr>이름</tr>
		<tr>연락처</tr>
		<tr>주소</tr>
		<tr>파일</tr>
		<tr>포인트</tr>
		<tr>삭제</tr>
	</thead>
	
	<c:foreach items ="${famList}" var="f">
		<tr>
			<td>${f.f_number }</td>
			<td>${f.f_id}</td>
			<td>${f.f_pw}</td>
			<td>${f.f_name}</td>
			<td>${f.f_phone}</td>
			<td>${f.f_address}</td>
			<td>${f.f_file}</td>
			<td>${f.f_point}</td>
			<td>삭제</td>
		</tr>
	</c:foreach>
 </table>
 

</body>
</html>