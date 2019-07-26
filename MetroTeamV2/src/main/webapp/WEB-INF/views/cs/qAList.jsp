<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> QnA목록 </title>
<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<link href="./../resources/css/cs.css" rel="stylesheet" />
<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>
</head>
<body>

	<!-- QnA목록 -->
	<!-- QnA목록 div -->
	<div class="row">
		<div class="col-xs-6 mx-auto col-md-offset-3">
			<div class="table table-hover table-responsive">
				<table class="table">
					
					<!-- 글 목록 이름 -->
					<tr>
						<th>번호</th>
						<th>내용</th>
						<th>처리현황</th>
						<th>작성일</th>
					</tr>
					
					<!-- 글 목록 배치 -->
					<c:forEach items="${qAList }" var="qa">
					<tr>
						<td>${qa.qid }</td>
						<td align="left"><a href="qAView.do?qid=${qa.qid }">
							${qa.qcontent }</a></td>
						<td>${qa.state }</td>
						<td>${qa.qdate }</td>
					</tr>
					</c:forEach>
				</table>
				<br/>
				<a href="sendQA.do"><p>문의글 등록</p></a>
			</div>
			
		</div>
	</div>

</body>
</html>