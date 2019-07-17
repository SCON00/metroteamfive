<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LINE-INFO</title>
	<link href="../resources/css/bootstrap.css" rel="stylesheet" />
	<link href="../resources/css/css_lineInfo.css" rel="stylesheet" />
	<script type="text/javascript" src='../resources/js/jquery-3.4.1.js'></script>
	<script type="text/javascript" src='../resources/js/bootstrap.js'></script>
	<script type="text/javascript" src='../resources/js/js_lineInfo.js'></script>
</head>

<body>
	<h1 class='display-1'>LINE-INFO</h1>
	<div class='container-fluid'>
    <table class='table table-hover table-responsive'>
        <tbody>
            <tr>
            	<% for(int i = 0; i < 17; i++){ %>
            	<td class='upLine8_<%= i %>'>
            		<div class='row'>
            			<div class='col-xs-1 rule'></div>
						<div class='col-xs-1 circle'></div>
            			<div class='col-xs-1 rule'></div>
            		</div>	
            	</td>
            	<% } %>
            </tr>
            <tr>
            	<td colspan='17'>
            		<div class='uptrain'>
				     	&nbsp<a href='#'><img src='../resources/img/train_over.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				    	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp
				    	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp
				    </div>
				</td>
            </tr>
            <tr>
                <td class='line8_1'><button class='btn btn-lg btn-outline-muted btn-block'>암<br/>사</button></td>
            	<td class='line8_2'><button class='btn btn-lg btn-outline-muted btn-block'>천<br/>호</button></td>
            	<td class='line8_3'><button class='btn btn-lg btn-outline-muted btn-block'>강<br/>동<br/>구<br/>청</button></td>
            	<td class='line8_4'><button class='btn btn-lg btn-outline-muted btn-block'>몽<br/>촌<br/>토<br/>성</button></td>
            	<td class='line8_5'><button class='btn btn-lg btn-outline-muted btn-block'>잠<br/>실</button></td>
            	<td class='line8_6'><button class='btn btn-lg btn-outline-muted btn-block'>석<br/>촌</button></td>
            	<td class='line8_7'><button class='btn btn-lg btn-outline-muted btn-block'>송<br/>파</button></td>
            	<td class='line8_8'><button class='btn btn-lg btn-outline-muted btn-block'>가<br/>락<br/>시<br/>장</button></td>
            	<td class='line8_9'><button class='btn btn-lg btn-outline-muted btn-block'>문<br/>정</button></td>
            	<td class='line8_10'><button class='btn btn-lg btn-outline-muted btn-block'>장<br/>지</button></td>
            	<td class='line8_11'><button class='btn btn-lg btn-outline-muted btn-block'>복<br/>정</button></td>
            	<td class='line8_12'><button class='btn btn-lg btn-outline-muted btn-block'>산<br/>성</button></td>
            	<td class='line8_13'><button class='btn btn-lg btn-outline-muted btn-block'>남<br/>한<br/>산<br/>성<br/>입<br/>구</button></td>
            	<td class='line8_14'><button class='btn btn-lg btn-outline-muted btn-block'>단<br/>대<br/>오<br/>거<br/>리</button></td>
            	<td class='line8_15'><button class='btn btn-lg btn-outline-muted btn-block'>신<br/>흥</button></td>
            	<td class='line8_16'><button class='btn btn-lg btn-outline-muted btn-block'>수<br/>진</button></td>
            	<td class='line8_17'><button class='btn btn-lg btn-outline-muted btn-block'>모<br/>란</button></td>
            </tr>
            <tr>
            	<td colspan='17'>
	            	<div class='downtrain'>
				     	&nbsp<a href='#'><img src='../resources/img/train_over.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				     	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				    	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp&nbsp&nbsp&nbsp&nbsp
				    	<a href='#'><img src='../resources/img/train_out.png' alt='' /></a>&nbsp
					</div>
				</td>
            </tr>
            <tr>
            	<% for(int i = 0; i < 17; i++){ %>
            	<td class='downLine8_<%= i %>'>
            		<div class='row'>
            			<div class='col-xs-1 rule'></div>
            			<div class='col-xs-1 circle'></div>
            			<div class='col-xs-1 rule'></div>
            		</div>		
            	</td>
            	<% } %>
            </tr>    
        </tbody>
    </table>
</div>
</body>
</html>