<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title> 📚View📚 </title>

<style>
 #comment-write	{
 width : 300px;
 }
</style>


</head>
<body>
글조회

<div class = "bt">
	<a href="./paging" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">목록</a>
	<c:choose>
	 <c:when test = "${sessionScope.LoginDTO.f_id == write.f_id}">
		<a href="./update?w_number=${write.w_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">수정</a>
		<a href="./delete?w_number=${write.w_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">삭제</a>
	 </c:when>
	 <c:when test = "${sessionScope.LoginDTO.f_id eq 'admin' }">
		<a href="./delete?w_number=${write.w_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">삭제</a>
		</c:when>
	</c:choose>
</div>



	<table class="table table-dark table-striped">
		<tr>
			<td> 글번호: ${write.w_number}${notice.w_number}</td>
			<td> 제목: ${write.w_title} ${notice.w_title}</td>
			<td> 작성자: ${write.f_id} ${notice.f_id}</td>
			<td> 작성일자: ${write.w_date} ${notice.w_date}</td>
			<td> 조회수: ${write.w_hits} ${notice.w_hits}</td>
		</tr>	
	</table>
	 <img alt = "" src="/ododok/resources/upload/${write.w_filename}">  
	 ${write.w_contents} ${notice.w_contents}<br>
<%-- 	<img alt = "" src="/resources/upload/${write.w_filename}"><br> --%>



<!-- 안되길래...  -->

<div class = "reply-base">
<c:set var = "menu" value = "WriteDTO"/> 
	<c:choose>
		  <c:when test = "${w_number eq notice.w_number}">
			<div class = reply>
			<div id = "comment-write">
				<!-- 댓글입력창 -->
				<input type ="text" id="c_writer" value="${LoginDTO.f_id}" readonly><br>
				<input type ="text" id="c_contents" placeholder="댓글입력">
				<!-- 1227 댓글포인트 -->	<input type = "hidden" id="f_number" value="${LoginDTO.f_number}">
				<button id = "comment-write-btn">댓글등록</button>
			</div>
			</div>
	
					<div id = "comment-list">
						<!-- 댓글목록출력 -->
						<table class = "table">
							<tr>
								<th>댓글번호</th>
								<th>작성자</th>
								<th>내용</th>
								<th>작성시간</th>
								<th>수정</th>
								<th>삭제</th>
							<c:forEach items="${commentList}" var="comment">
							<tr>
								<td>${comment.c_number}</td>
								<td>${comment.c_writer}</td>
								<td>${comment.c_contents}</td>
								<td>${comment.c_date}</td>
								<c:choose>
								 <c:when test = "${sessionScope.LoginDTO.f_id == comment.c_writer}">
								<td>
									<a href="./update?c_number=${comment.c_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">수정</a>
								</td>
									<td><a href="./delete?c_number=${comment.c_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">삭제</a>
								 </td>
								 </c:when>
								 <c:when test = "${sessionScope.LoginDTO.f_id eq 'admin' }">
									<a href="./delete?c_number=${comment.c_number}" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">삭제</a>
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
		  댓글을 남길 수 없습니다
		 </c:otherwise>
	</c:choose>
</div>

<!-- comment 추가 -->

	
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>


	<script>
		/* j-query로 사용...  */
		$("#comment-write-btn").click(function(){
			console.log("댓글등록버튼 클릭");
			
		/* ajax 한번 쳐보자...^^ */
		const commentWriter =$('#c_writer').val();
		const commentComment =$('#c_contents').val();
		const familyNumber = $('#f_number').val();
		const writeNumber = "${write.w_number}";

		
		console.log(commentWriter, commentComment, writeNumber, familyNumber);
		/* });
 */		
		$.ajax({
		
			type : 'post', // 전송방식
			url: '../comment/commentSave', //컨트롤러로 요청주소
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
				output += "<tr><th>댓글번호</th>";
				output += "<th>작성자</th>";
				output += "<th>댓글</th>";
				output += "<th>작성시간</th></tr>";
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
					// 댓글 입력창을 비움. 
					/* document.getElementById('c_writer').value=''; 얘까지 비워버리면 댓글작성자가 지워지니까*/
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