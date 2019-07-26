<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 역/노선 검색 </title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<link href="./../resources/css/cs.css" rel="stylesheet" />

<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>
<script type="text/javascript" src="./../resources/js/cs.js"></script>

</head>
<body>
	<div class="form-group" style="display: table; margin-left: auto; margin-right: auto;">
		<div class="header">
		<div>역/노선을 검색하는 팝업입니다~</div>
		</div>
		<div>
        	<table class="table table-responsive">
        	<%for(int i=1; i<=9; i++){ %>
        		<%if(i%3 == 1 && i != 1) {%>
        			<tr>
        		<%}%>
        			<td><input type="button" class="btn btn-default" value="<%=i%>호선"></td>
        		<%if(i%3 == 0) {%>
        			</tr>
        		<%} %>
        	<%} %>
        	</table>
        	<div class="input-group">
        		<input type="text" class="form-control" id="searchStation" size="30" placeholder="Search for Station...">
        		<span class="input-group-btn">
        			<button class="btn btn-default" type="button" id="searchStationBtn">
        				<img src="./../resources/img/noticeList_search.png">
        			</button>
        		</span>
			</div><!-- /input-group -->
<%--         
			<table class="table table-striped">
        	<c:forEach items="${stationList }" var="st">
        		<tr>
        			<td align="left"><a href="noticeView.do?sid=${st.sid }">${st.sname }</a></td>
        			<td>${st.lno }</td>
        			<td>${st.direction }</td>
				</tr>
			</c:forEach>
		</table> 
--%>
		</div>
	</div>

</body>
</html>