<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오도독 글모음</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<script>
	function search1(){
		search_form.submit();
	}
	

</script>
<style>

	#search1	{
	width : 600px;
	left: 30%;
	position: relative;
	}
	
	#category-check	{
	text-align : center;
	position: relative;
	}
	
</style>

<body>
	<head>
	🎄글목록🎄 <a href="../main" class="btn btn-light btn-sm abled" tabindex="-1" role="button" aria-disabled="true" style="background-color:pink">메인</button></a>
	</head>
	
	
	<section class="writeAll">
	
		<div id ="category-check">
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="w_category" onclick="getCheckboxValue(event)" value="공지사항">
			  <label class="form-check-label" for="inlineCheckbox1"> 공지사항 </label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="w_category" onclick="getCheckboxValue(event)" value="수필">
			  <label class="form-check-label" for="inlineCheckbox2"> 수필 </label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="w_category" onclick="getCheckboxValue(event)" value="독후감">
			  <label class="form-check-label" for="inlineCheckbox3"> 독후감 </label>
			</div>
		</div>

		<div id = "search1">
			<div id = "검색">
				<form action = "search" method="GET" name="search_form">
					<select class="form-select form-select-sm" aria-label=".form-select-sm example" name = "searchtype">
						<option value="w_title">제목 </option>
						<option value="f_id">작성자 </option>
					</select>
					<div class="input-group mb-3">	
					  <input type="text" name="keyword" class="form-control" placeholder="검색어를 입력하세요" aria-label="Recipient's username" aria-describedby="button-addon2">
					  <button class="btn btn-outline-light" style="background-color:pink" type="button" id="button-addon2" onclick="search1()"> Button </button>
					</div>
				</form>
			</div>
		</div>
	
	
	<div id = "notice-table">	
		<table class="table table-striped">
		<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
		</tr>
	
   		<c:forEach items="${noticeList}" var="n">
		<tr>
			<td>${n.ntc_number}</td>
			<td><a href = "writeNtcView?w_number=${n.ntc_number}">${n.w_title}</td>
			<td>${n.f_id}</td>
			<td>${n.w_hits}</td>
		</tr>
		</c:forEach>
		</table>
	</div>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div id = paging>
		<div>
			<c:choose>
				<c:when test = "${paging.page<=1}">
				[이전]
				</c:when>
				<c:otherwise>
				<!-- 현재 페이지에서 1감소한 페이지 요청하는 링크 -->
				<a href="/ododok/write/paging?page=${paging.page-1}">[이전]</a>&nbsp;
				</c:otherwise>
			</c:choose>
		</div>
		
		<div>
		<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
			<c:choose>
				<c:when test ="${i eq paging.page}">
				${i}
				</c:when>
				<c:otherwise>
				<a href="/ododok/write/paging?page=${i}">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		</div>
	
		<div>
			<c:choose>
				<c:when test="${paging.page>=paging.maxPage}">
				[다음]
				</c:when>
				<c:otherwise>
					<a href="/ododok/write/paging?page=${paging.page+1}">[다음]</a>
				</c:otherwise>
			</c:choose>
		</div>
	
	</div>
</section>
</body>
</html>