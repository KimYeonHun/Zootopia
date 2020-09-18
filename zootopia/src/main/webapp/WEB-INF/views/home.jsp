<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>


	<title>ZOOTOPIA</title>

	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">

	<!-- stylesheets css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/bootstrap.min.css"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/animate.min.css">

  	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/et-line-font.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/font-awesome.min.css">

  	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/vegas.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css">

	<link href='https://fonts.googleapis.com/css?family=Rajdhani:400,500,700' rel='stylesheet' type='text/css'>
    
    <script>
    	var context = "${pageContext.request.contextPath}";
    </script>
    
</head>
<body>
<thead>
    <div class="dropdown">
        <button class="dropbtn">메뉴</button>
    <div class="dropdown-content">
        <a href="#">??</a>
        <c:if test="${userinfo.auth eq '회원' }">
        	<a href="petsitter/petsitter_join">펫시터 지원</a>
        </c:if>
        <c:if test="${userinfo.auth eq '관리자' }">
        	<a href="member/list">지원자 목록</a>
        </c:if>
        <a href="q_board/q_list">Q&A</a>
        <a href="f_board/f_list">F&A</a>
      </div>
    </div>
    
</thead>
<!-- preloader section -->
<section class="preloader">
	<div class="sk-circle">
       <div class="sk-circle1 sk-child"></div>
       <div class="sk-circle2 sk-child"></div>
       <div class="sk-circle3 sk-child"></div>
       <div class="sk-circle4 sk-child"></div>
       <div class="sk-circle5 sk-child"></div>
       <div class="sk-circle6 sk-child"></div>
      <div class="sk-circle7 sk-child"></div>
       <div class="sk-circle8 sk-child"></div>
       <div class="sk-circle9 sk-child"></div>
       <div class="sk-circle10 sk-child"></div>
       <div class="sk-circle11 sk-child"></div>
       <div class="sk-circle12 sk-child"></div>
     </div>
</section>

<!-- home section -->
<section id="home">
    
	<div class="container">
		<div class="row">
        
			<div class="col-md-offset-2 col-md-8 col-sm-12">
				<div class="home-thumb">
					<h1 class="wow fadeInUp" data-wow-delay="0.4s">ZOOTOPIA</h1>


          			 <c:choose>
                      <c:when test="${not empty userinfo.member_id}">
                         <a href="${pageContext.request.contextPath}/member/logout" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">로그아웃</a>
                         <a href="${pageContext.request.contextPath}/member/mypage" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">마이페이지</a>
                      </c:when>
                      <c:otherwise>
                         <a href="${pageContext.request.contextPath}/member/login" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">로그인</a>
                         <a href="${pageContext.request.contextPath}/member/join" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">회원가입</a>
                      </c:otherwise>
                   </c:choose>
					
					

				</div>
			</div>

		</div>
	</div>		
</section>

<!-- about section -->
<section id="about">
	<div class="container">
		<div class="row">

      <div class="col-md-6 col-sm-12">
        <img src="${pageContext.request.contextPath}/res/img/about-img.png" class="img-responsive wow fadeInUp" alt="About">
      </div>

			<div class="col-md-6 col-sm-12">
				<div class="about-thumb">
					<div class="section-title">
						<h1 class="wow fadeIn" data-wow-delay="0.2s">회사소개</h1>
						<h3 class="wow fadeInUp" data-wow-delay="0.4s">깨끗한 회사</h3>
					</div>
					<div class="wow fadeInUp" data-wow-delay="0.6s">
						<p>회사 소개</p>
						
					</div>
				</div>
			</div>

		</div>
	</div>
</section>


<!-- feature section -->
<section id="feature">
  <div class="container">
    <div class="row">
      
      <svg preserveAspectRatio="none" viewBox="0 0 100 102" height="100" width="100%" version="1.1" xmlns="http://www.w3.org/2000/svg" class="svgcolor-light">
        <path d="M0 0 L50 100 L100 0 Z"></path>
      </svg>

      <div class="col-md-4 col-sm-6">
        <div class="media wow fadeInUp" data-wow-delay="0.4s">
          <div class="media-object media-left">
            <i class="icon icon-laptop"></i>
          </div>
          <div class="media-body">
            <h2 class="media-heading">고객 문의</h2>
            <p>궁금하신 문의사항을 보내주시면 최대한 신속하게 답변을 해드리겠습니다.
            답변은 입력하신 연락처 또는 이메일로 드릴 예정이므로 필수 항목을 정확하게 입력하여 주십시오.
            </p>
          </div>
        </div>
      </div>

      <div class="col-md-4 col-sm-6">
        <div class="media wow fadeInUp" data-wow-delay="0.8s">
          <div class="media-object media-left">
            <i class="icon icon-refresh"></i>
          </div>
          <div class="media-body">
            <h2 class="media-heading">어쩌구 저쩌구</h2>
            <p>
            어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구어쩌구 저쩌구
            </p>
          </div>
        </div>
      </div>

      <div class="col-md-4 col-sm-8">
        <div class="media wow fadeInUp" data-wow-delay="1.2s">
          <div class="media-object media-left">
            <i class="icon icon-chat"></i>
          </div>
          <div class="media-body">
            <h2 class="media-heading">1:1채팅</h2>
            <p>   
                안녕하세요  ZOOTOPIA입니다 1:1 채팅을 오픈하였습니다.
                앞으로 궁금하신 사항은 언제든지 'ZOOTOPIA'에 1:1 채팅으로 문의주시기 바랍니다.
                </p>
          </div>
        </div>
      </div>


    </div>
  </div>
</section>

<!-- contact section -->
<section id="contact">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-2 col-md-8 col-sm-12">
				<div class="section-title">
					<h1 class="wow fadeInUp" data-wow-delay="0.3s">후기</h1>
					<p class="wow fadeInUp" data-wow-delay="0.6s"></p>
				</div>
				<div class="contact-form wow fadeInUp" data-wow-delay="1.0s">
					<form id="contact-form" method="post" action="#">
                       <!-- <div class="col-md-6 col-sm-6">
                          	<input name="name" type="text" class="form-control" placeholder="아이디" required>
                        </div>-->
                       
           			  	<div class="col-md-12 col-sm-12">
				   			<textarea name="message" class="form-control" placeholder="게시글" rows="2" required></textarea>
                           <textarea name="message" class="form-control" placeholder="게시글" rows="2" required></textarea>
                           <textarea name="message" class="form-control" placeholder="게시글" rows="2" required></textarea>
                            
                         
           			  	</div>
						<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
							<input name="submit" type="submit" class="form-control submit" id="submit" value="더보기">
						</div>
					</form>
				</div>
			</div>
	
		</div>
	</div>
</section>

<!-- footer section -->
<footer>
	<div class="container">
		<div class="row">

      <svg class="svgcolor-light" preserveAspectRatio="none" viewBox="0 0 100 102" height="100" width="100%" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <path d="M0 0 L50 100 L100 0 Z"></path>
      </svg>

      <div class="col-md-4 col-sm-6">
        <h2>ZOOTOPIA</h2>
          <div class="wow fadeInUp" data-wow-delay="0.3s">
             <p>환영합니다 ZOOTOPIA입니다. </p>
          </div>
      </div>

      <div class="col-md-1 col-sm-1"></div>

      <div class="col-md-4 col-sm-5">
        <h2>어쩌구 저쩌구</h2>
        <p class="wow fadeInUp" data-wow-delay="0.6s">
          회사 주소<br>
          상세주소 <br>
          전화번호
        </p>
      </div>

		</div>
	</div>
</footer>

<!-- modal -->
<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content modal-popup">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h2 class="modal-title">Our Newsletter</h2>
        </div>
        <form action="#" method="post">
          <input name="fullname" type="text" class="form-control" id="fullname" placeholder="Full Name">
          <input name="email" type="text" class="form-control" id="email" placeholder="Email Address">
          <input name="submit" type="submit" class="form-control" id="submit" value="Subscribe Now">
        </form>
        <p>Thank you for your visiting!</p>
      </div>
  </div>
</div>


<!-- Back top -->
<a href="#back-top" class="go-top"><i class="fa fa-angle-up"></i></a>

<!-- javscript js -->
<script src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/res/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/res/js/vegas.min.js"></script>

<script src="${pageContext.request.contextPath}/res/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/smoothscroll.js"></script>
<script src="${pageContext.request.contextPath}/res/js/custom.js"></script>

</body>
</html>