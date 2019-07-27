<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> QnA 작성 </title>
<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<link href="./../resources/css/cs.css" rel="stylesheet" />
<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>
<!-- css -->
<style type="text/css">
#qnaForm {
	border: 2px solid #ffe32e;
}
</style>

</head>
<body>

	<h2>문의하기</h2>

	<!-- 문의하기 폼 -->
	<div class="row">
		<div class="col-xs-6 mx-auto col-md-offset-3">
			<form action="saveQA.do" method="post" class="form" id="qnaForm" enctype="multipart/form-data">
			
				<!-- 문의 카테고리 -->
				<div class="form-group">
					<select name="category" class="form-control">
						<option value="1">일반 문의</option>
						<option value="2">개선 및 제안</option>
					</select><br />
				</div>
				
				<!-- 문의 내용 작성 -->
				<div class="form-group">
					<textarea name="qcontent" required="required" class="form-control" rows="5" 
						placeholder="문의내용을 상세히 설명해주실수록 보다 빠른 검토가 가능합니다."></textarea>
					<br />
				</div>
				
				<!-- 이메일, 첨부파일 추가 -->
				<div class="form-group">
					<input type="email" class="form-control" name="qemail" 
						required="required" placeholder="답변 받을 이메일 주소"><br /> 
					<input type="file" class="form-control" name="file" 
						maxlength="60" size="40" placeholder="+ 첨부파일 추가" 
						accept=".jpg, .jpeg, .png, .bmp, .gif, .svg, .tiff, .heif, .raw">
					<hr>

					<!-- 첨부파일 안내 메세지  -->
					<p>&nbsp 파일 형식은 jpg, gif 등 이미지 파일만 가능하며 1개의 파일만 첨부할 수 있습니다.</p>
					<br />
					
					<!-- 추가적으로 보내야 될 정보_회원ID -->
					<input type="hidden" name="mid" value="<%=(String)session.getAttribute("realMid")%>">

					<!-- 보내기 버튼 -->
					<input type="submit" value="보내기" class="btn btn-default btn-lg btn-block" />
				</div>

			</form>
		</div>
	</div>

</body>
</html>