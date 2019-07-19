<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> QnA 상세 보기 </title>
<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>
</head>
<body>

	<h2>문의글 상세보기</h2>
	<hr/>
	<div class="row">
		<div class="col-xs-6 mx-auto col-md-offset-3">
			<form action="updateQA.do" method="post" class="form" enctype="multipart/form-data">
			
				<!-- qid 가져옴 -->
				<input type="hidden" name="qid" value="${qA.qid }">
				
				<!-- 문의 카테고리 -->
				<div class="form-group">
					<div class="panel panel-default">
						<div class="panel-heading"> [문의 사항]</div>
						<div class="panel-body">
						<c:if test="${qA.category  == 1}">
							 - 일반 문의
						</c:if>
						<c:if test="${qA.category  == 2}">
							 - 개선 및 제안
						</c:if>
						</div>
					</div>
					<br />
				</div>
				
				<!-- 문의 내용, 이메일, 첨부파일 -->
				<div class="form-group">
					<table class="table table-hover">
						<tr>
							<td align="left">문의 내용</td>
							<td><textarea name="qcontent" required="required" 
							class="form-control" rows="5">${qA.qcontent }</textarea></td>
						</tr>
						<tr>
							<td align="left">답변 받을 이메일 주소</td>
							<td><input type="email" class="form-control" name="qemail" 
								required="required" value="${qA.qemail }"></td>
						</tr>
						
						<!-- qfile이 null이면 추가x, null이 아니면 추가o -->
						<c:if test="${qA.qfile != null }">
							<tr>
								<td align="left">첨부파일</td>
								<td><img src="./../resources/upload/${qA.qfile }" class="img-responsive"><br/>
									<input type="file" class="form-control" name="file" 
										maxlength="60" size="40" accept=".jpg, .jpeg, .png, .bmp" 
										placeholder="+ 첨부파일 수정"></td>
							</tr>
							<tr>
								<td colspan="2">&nbsp 파일 형식은 jpg, gif 등 이미지 파일만 가능하며 1개의 파일만 첨부할 수 있습니다.</td>
							</tr>
						</c:if>
					</table>
				</div>
				
					<!-- 추가적으로 보내야 될 정보_회원ID -->
					<input type="hidden" name="mid" value="${qA.mid }">

					<!-- 수정, 삭제, 목록가기 버튼 -->
					<input type="submit" value="수정" class="btn btn-success" />
					<a href="deleteQA.do?qid=${qA.qid }">
						<input type="button" value="삭제" class="btn btn-danger" />
					</a>
					<a href="qAList.do">
						<input type="button" value="목록가기" class="btn btn-info" />
					</a>
					
			

			</form>
		</div>
	</div>
	
</body>
</html>