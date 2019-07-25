<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Item - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="<%=application.getContextPath()%>/resources/css/bootstrap.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=application.getContextPath()%>/resources/css/mypage.css" rel="stylesheet">
  
  <script>
  
  
  </script>
  


</head>

<body>

<%@ include file="../../../sampleindex.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3 mypage">
        <h1 class="my-4">마이페이지</h1>
        <div class="list-group" id="mypagemenu">
          <a href="#" id="tofavorite" class="list-group-item text-left active">즐겨찾기 관리</a>
          <a href="#" id="toeditprofile" class="list-group-item text-left">개인정보수정</a>
          <a href="#" id="tohistory" class="list-group-item text-left">검색기록</a>
          <a href="#sendQA" class="list-group-item text-left" id="customercenter" data-toggle="collapse" data-target="#customercenterlist" aria-expanded="true" aria-controls="collapseOne" class="list-group-item">고객센터</a>
         </div>
          <div id="customercenterlist" class="panel-collapse collapse" role="tabpanel">
          	<div class="list-group">
          		<a href="#" id="sendQA" class="list-group-item text-center">문의하기</a>
          		<a href="#" id="" class="list-group-item text-center">이용약관</a>
          		<a href="#" id="" class="list-group-item text-center">위치기반서비스 이용약관</a>
          	</div>
          </div>     
      </div>
      <!-- /.col-lg-3 -->
      
      <!-- 즐겨찾기 관리 페이지 -->
      <div id="favorite" class="mypageContent col-lg-9">
      	
      	<h3 class="card-title">즐겨찾기 관리</h3>
      	<div class="checkbox">
  			<label>
    			<input type="checkbox" id="selectall" value="favorite">
    			전체선택
  			</label>
		</div>
		<table class="table favoritelist" id="favoritelist">
		</table>
      	<a href="#" id="selectcancle" class="btn btn-save">취소</a>
      	<a href="#" id="delectfavoritelist" class="btn btn-save">삭제</a>
      </div>
      <!-- end of 즐겨찾기 관리 페이지 -->
      
      <!-- 검색기록 페이지 -->
      <div id="history" class="mypageContent hide col-lg-6">
      	
      	<h3 class="card-title">검색 기록</h3>
      	<div class="checkbox">
  			<label>
    			<input type="checkbox" id="selectall" value="history">
    			전체선택
  			</label>
		</div>
		<table class="table historylist" id="historylist">
		</table>
      	<a href="#" id="selectcancle" class="btn btn-save">취소</a>
      	<a href="#" id="delecthistorylist" class="btn btn-save">삭제</a>
      </div>
      <!-- end of 검색기록 페이지 -->
      

      <div class="col-lg-9 mypageContent" id="defaultmypage">

        <div class="card mt-4">
          <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">
          <div class="card-body">
            <h3 class="card-title">Product Name</h3>
            <h4>$24.99</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque facere, soluta. Totam id dolores, sint aperiam sequi pariatur praesentium animi perspiciatis molestias iure, ducimus!</p>
            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars
          </div>
        </div>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            Product Reviews
          </div>
          <div class="card-body">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <a href="#" class="btn btn-success">Leave a Review</a>
          </div>
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->
      
      <!-- 개인 정보 수정 페이지 -->
      <div id="editprofile" class="hide col-lg-9 mypageContent">
      <form action="" class="form-horizontal editprofileform" name="editprofilform" id="editprofilform" method="post">
      	<div class="logo mb-3">
           <div class="text-left">
              <h3 class="card-title">개인&nbsp정보</h3>
           </div>
        </div>
							<div class="form-group">
								<label class="col-xs-6 col-md-4 label-control">이메일&nbsp또는&nbsp휴대폰번호</label>
    							<div class="col-xs-12 col-md-8">
    								<input class="form-control" type="text" name="mid" id="mid" value="<%=(String)session.getAttribute("mid") %>" readonly></input>
    							</div>
							</div>
							<div class="form-group">
								<label class="col-xs-6 col-md-4 label-control">사용자&nbsp이름</label>
								<div class="col-xs-12 col-md-8">
    								<input class="form-control" type="text" name="username" id="username" value="<%=(String)session.getAttribute("username")%>"/>
    							</div>
							</div>
							<div class="form-group">
								<label class="col-xs-6 col-md-4 label-control">소개</label>
								<div class="col-xs-12 col-md-8">
    								<input class="form-control" type="text" placeholder="소개" name="intro" id="intro"/>
    							</div>
							</div>
							<div class="form-group">
								<label class="col-xs-6 col-md-4 label-control">비밀번호</label>
								<div class="col-xs-12 col-md-8">
    								<input class="form-control" type="password" placeholder="비밀번호" placeholder="비밀번호" name="pass" id="pass" />
    							</div>
							</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-5">
								<button type="button" class="btn btn-default" id="editcancle">취소</button>
								<button type="button" id="saveprofile" name="saveprofile" class="btn btn-default">저장</button>
							</div>
						</div>
		</form>
      </div>
      <!-- end of 개인 정보 수정 페이지 -->
      
      <div id="showsendQA" class="hide col-lg-9 mypageContent">
		<!-- 문의하기 폼 -->
	<!-- <div class="row"> -->
		<div class="col-xs-6 mx-auto col-md-offset-3">
			<form action="<%=application.getContextPath()%>/cs/saveQA.do" method="post" class="form" id="qnaForm" enctype="multipart/form-data">
			
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
						maxlength="60" size="40" accept=".jpg, .jpeg, .png, .bmp" placeholder="+ 첨부파일 추가">
					<hr>

					<!-- 첨부파일 안내 메세지  -->
					<p>&nbsp 파일 형식은 jpg, gif 등 이미지 파일만 가능하며 1개의 파일만 첨부할 수 있습니다.</p>
					<br />
					
					<!-- 추가적으로 보내야 될 정보_회원ID -->
					<input type="hidden" name="mid" value="<%=(String)session.getAttribute("realMid")%>">

					<!-- 보내기 버튼 -->
					<input type="submit" value="보내기" class="btn btn-default btn-lg btn-block" />
					
					<!-- 목록 -->
					<input type="button" onclick="location.href='<%=application.getContextPath()%>/cs/qAList.do'" value="목록보기" class="btn btn-default btn-lg btn-block" />
				</div>

			</form>
		</div>
	<!-- </div>  -->     	
	
      </div>

    </div>
    
    

  </div>
  
  <!-- 개인정보 수정 전 비번 확인용 모달 -->
  <div class="modal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel">정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</h4>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="control-label">아이디</label>
            <input type="text" class="form-control" id="username" value='<%=(String)session.getAttribute("mid")%>'>
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">비밀번호</label>
            <input type="password" class="form-control" id="pass">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="checkcancle">취소</button>
        <button type="button" class="btn btn-primary" id="confirm">확인</button>
      </div>
    </div>
  </div>
</div>
  <!-- end of 개인정보 수정 전 비번 확인용 모달 -->
  
  <!-- '개인정보수정'전에 아이디, 비번 확인 시 비번 틀렀을 때 -->
  <div class="modal" id="exampleModalFail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    	비밀번호가 잘못됨.
    	<button type="button" class="btn btn-default" data-dismiss="modal" id="editcancle">창닫기</button>
    </div>
    </div>
    </div>
    <!-- end '개인정보수정'전에 아이디, 비번 확인 시 비번 틀렀을 때 -->
    
    <!-- 개인정보수정 시 비번 안 눌렀을 때 모달  -->
    <div class="modal" id="needpass" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
     	개인정보수정을&nbsp수정을&nbsp위해서
     	<br/>
     	비밀번호가&nbsp필요합니다.
    </div>
    </div>
    </div>
    <!-- end of 개인정보수정 시 비번 안 눌렀을 때 모달  -->
    
    <!-- 개인정보수정 완료 모달 -->
    <div class="modal" id="editProfileSuccess" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    	성공적으로 변경되었습니다.
    	<button type="button" class="btn btn-default" data-dismiss="modal" id="editcancle">창닫기</button>
    </div>
    </div>
    </div>
  	<!-- end of 개인정보수정 완료 모달 -->
  <!-- /.container -->
  


  <!-- Bootstrap core JavaScript -->
  <script src="<%=application.getContextPath()%>/resources/js/jquery.min.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/bootstrap.bundle.js"></script>
  <script src="<%=application.getContextPath()%>/resources/js/mypage.js"></script>
  <script>

</script>

</body>

</html>
