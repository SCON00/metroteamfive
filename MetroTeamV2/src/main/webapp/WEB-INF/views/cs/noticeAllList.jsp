<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<link href="./../resources/css/cs.css" rel="stylesheet" />
<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>
<script type="text/javascript" src="./../resources/js/cs.js"></script>
</head>
<body>

<h1 class="display-1">NOTICE-LIST</h1>

	<!-- 공지사항 div -->
	<div class="row">
		<div class="col-xs-6 mx-auto col-md-offset-3">
		
		<!-- 한눈에 보이는 노선 -->
		<div class="btn-group" role="group">
  			<%for(int i = 0; i < 10; i++){ %>
  			<button type="button" class="btn btn-default" name="lineNo" value="<%=i%>">
  				<% if(i == 0) {%>
  					전체
  				<%}else if(i>0){ %>
  				<%=i %>호선</button>
  					<%}
  				} %>
  			<button type="button" class="btn btn-default" name="lineNo" value="경의중앙">경의중앙</button>
  			<button type="button" class="btn btn-default" name="lineNo" value="공항">공항</button>
  			<button type="button" class="btn btn-default" name="lineNo" value="경춘">경춘</button>
  			<button type="button" class="btn btn-default" name="lineNo" value="인천">인천</button>
  			<button type="button" class="btn btn-default" name="lineNo" value="수인">수인</button>
  			<button type="button" class="btn btn-default" name="lineNo" value="분당">분당</button>
  			<button type="button" class="btn btn-default" name="lineNo" value="신분당">신분당</button>
  			<button type="button" class="btn btn-default" name="lineNo" value="우이신설">우이신설</button>
		</div>
		
			<div class="table">
				<table class="table teble-dark">
					<tr>
						<td>
							<!-- 검색 input -->
							<div class="input-group">
								<input type="text" id="searchFor" class="form-control" placeholder="Search for...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button" id="searchForBtn">
										<img src="./../resources/img/noticeList_search.png">
									</button>
								</span>
							</div>
						</td>
					</tr>
				</table>
			</div>

				
			<!-- 호선별 공지사항 목록 -->
			<div class="table table-hover table-responsive">
				<table class="table teble-dark" id="resultTable">
					<tr>
						<th>&nbsp</th>
						<th>제목</th>
						<th>호선</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<c:forEach items="${noticeList }" var="no">
						<tr>
							<td>${no.nid }</td>
							<td align="left"><a href="noticeView.do?nid=${no.nid }">${no.ntitle }</a></td>
							<td>${no.lno }</td>
							<td>${no.ndate }</td>
							<td>${no.cnt }</td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>
	</div>

</body>
</html>