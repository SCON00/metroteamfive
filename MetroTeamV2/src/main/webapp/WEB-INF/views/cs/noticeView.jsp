<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 공지글 상세 보기 </title>

<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<link href="./../resources/css/cs.css" rel="stylesheet" />
<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>

<style type="text/css">
img {
	width: 15px;
	height: 15px;
}
</style>

</head>
<body>

<h2> 공지글 상세 보기 </h2>
	<hr/>

	<div class="row">
		<div class="col-xs-6 mx-auto col-md-offset-3">
				<table class="table teble-dark">
					<thead>
						<tr>
							<th scope="col">${notice.lno }호선</th>
							<th scope="col"> | ${notice.ntitle }</th>
						</tr>
						<tr>
							<td scope="col"><img src="./../resources/img/noticeView_clock.png"/> ${notice.ndate }</td>
							<td scope="col"><img src="./../resources/img/noticeView_book.png"/> ${notice.cnt }</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">${notice.ncontent }</td>
						</tr>
					</tbody>
				</table>
			<%-- 
			<!-- 이전/이후 페이지로 넘어가기 (수정해야됨)-->
			<a href="noticeView.do?nid=${notice.nid-1}" class="btn btn-outline-default">이전</a>
			<a href="noticeView.do?nid=${notice.nid+1}" class="btn btn-outline-default">이후</a>
			 --%>
			<!-- 목록가기 버튼 -->
			<a href="noticeAllList.do" class='btn btn-outline-success'>목록가기</a>
					
		</div>
	</div>

</body>
</html>