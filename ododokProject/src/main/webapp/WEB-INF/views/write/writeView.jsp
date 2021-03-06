<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title> ๐View๐ </title>

<style>
 #comment-write	{
 width : 300px;
 }
</style>


</head>
<body>
๊ธ์กฐํ

<div class = "bt">
	<a href="./paging" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">๋ชฉ๋ก</a>
	<c:choose>
	 <c:when test = "${sessionScope.LoginDTO.f_id == write.f_id}">
		<a href="./update?w_number=${write.w_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">์์ </a>
		<a href="./delete?w_number=${write.w_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">์ญ์ </a>
	 </c:when>
	 <c:when test = "${sessionScope.LoginDTO.f_id eq 'admin' }">
		<a href="./delete?w_number=${write.w_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">์ญ์ </a>
		</c:when>
	</c:choose>
</div>



	<table class="table table-dark table-striped">
		<tr>
			<td> ๊ธ๋ฒํธ: ${write.w_number}${notice.w_number}</td>
			<td> ์ ๋ชฉ: ${write.w_title} ${notice.w_title}</td>
			<td> ์์ฑ์: ${write.f_id} ${notice.f_id}</td>
			<td> ์์ฑ์ผ์: ${write.w_date} ${notice.w_date}</td>
			<td> ์กฐํ์: ${write.w_hits} ${notice.w_hits}</td>
		</tr>	
	</table>
	 <img alt = "" src="/ododok/resources/upload/${write.w_filename}">  
	 ${write.w_contents} ${notice.w_contents}<br>
<%-- 	<img alt = "" src="/resources/upload/${write.w_filename}"><br> --%>



<!-- ์๋๊ธธ๋...  -->

<div class = "reply-base">
<c:set var = "menu" value = "WriteDTO"/> 
	<c:choose>
		  <c:when test = "${w_number eq notice.w_number}">
			<div class = reply>
			<div id = "comment-write">
				<!-- ๋๊ธ์๋ ฅ์ฐฝ -->
				<input type ="text" id="c_writer" value="${LoginDTO.f_id}" readonly><br>
				<input type ="text" id="c_contents" placeholder="๋๊ธ์๋ ฅ">
				<!-- 1227 ๋๊ธํฌ์ธํธ -->	<input type = "hidden" id="f_number" value="${LoginDTO.f_number}">
				<button id = "comment-write-btn">๋๊ธ๋ฑ๋ก</button>
			</div>
			</div>
	
					<div id = "comment-list">
						<!-- ๋๊ธ๋ชฉ๋ก์ถ๋ ฅ -->
						<table class = "table">
							<tr>
								<th>๋๊ธ๋ฒํธ</th>
								<th>์์ฑ์</th>
								<th>๋ด์ฉ</th>
								<th>์์ฑ์๊ฐ</th>
								<th>์์ </th>
								<th>์ญ์ </th>
							<c:forEach items="${commentList}" var="comment">
							<tr>
								<td>${comment.c_number}</td>
								<td>${comment.c_writer}</td>
								<td>${comment.c_contents}</td>
								<td>${comment.c_date}</td>
								<c:choose>
								 <c:when test = "${sessionScope.LoginDTO.f_id == comment.c_writer}">
								<td>
									<a href="./update?c_number=${comment.c_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">์์ </a>
								</td>
									<td><a href="./delete?c_number=${comment.c_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">์ญ์ </a>
								 </td>
								 </c:when>
								 <c:when test = "${sessionScope.LoginDTO.f_id eq 'admin' }">
									<a href="./delete?c_number=${comment.c_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">์ญ์ </a>
									</c:when>
								</c:choose>
								
							</tr>	
							</c:forEach>
							
						</table>
						
						
					</div>
		 </c:when>
		 <c:when test = "${menu eq 'NoticeDTO'}">
		 dd
		 </c:when>
		 <c:otherwise>
		  ๋๊ธ์ ๋จ๊ธธ ์ ์์ต๋๋ค
		 </c:otherwise>
	</c:choose>
</div>

<!-- comment ์ถ๊ฐ -->

	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>


	<script>
		/* j-query๋ก ์ฌ์ฉ...  */
		$("#comment-write-btn").click(function(){
			console.log("๋๊ธ๋ฑ๋ก๋ฒํผ ํด๋ฆญ");
			
		/* ajax ํ๋ฒ ์ณ๋ณด์...^^ */
		const commentWriter =$('#c_writer').val();
		const commentComment =$('#c_contents').val();
		const familyNumber = $('#f_number').val();
		const writeNumber = "${write.w_number}";

		
		console.log(commentWriter, commentComment, writeNumber, familyNumber);
		/* });
 */		
		$.ajax({
		
			type : 'post', // ์ ์ก๋ฐฉ์
			url: '../comment/commentSave', //์ปจํธ๋กค๋ฌ๋ก ์์ฒญ์ฃผ์
			data : 
			{	'c_writer' : commentWriter,
				'c_contents' : commentComment,
				'f_number' : familyNumber,
				'w_number' : writeNumber			
				},
				
			dataType : 'json',
			success: function(result)	{
				console.log(result);
				let output = "<table class ='table'>";
				output += "<tr><th>๋๊ธ๋ฒํธ</th>";
				output += "<th>์์ฑ์</th>";
				output += "<th>๋๊ธ</th>";
				output += "<th>์์ฑ์๊ฐ</th></tr>";
					for(let i in result){
						output += "<tr>";
						output += "<td>"+result[i].c_number+"</td>";
						output += "<td>"+result[i].c_writer+"</td>";
						output += "<td>"+result[i].c_contents+"</td>";
						output += "<td>"+result[i].c_date+"</td>";
						output += "</tr>";
					}
					output += "</table>";
					document.getElementById('comment-list').innerHTML = output;
					// ๋๊ธ ์๋ ฅ์ฐฝ์ ๋น์. 
					/* document.getElementById('c_writer').value=''; ์๊น์ง ๋น์๋ฒ๋ฆฌ๋ฉด ๋๊ธ์์ฑ์๊ฐ ์ง์์ง๋๊น*/
					document.getElementById('c_contents').value='';
			},
			error: function(request, status, error)	{
				
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error)
					;
			}
		})
	});
	
	</script>
	
</html>