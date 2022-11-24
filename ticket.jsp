<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- CSS LINK -->
	<link rel="stylesheet" href="${contextPath}/css/icommon.css">
	<link rel="stylesheet" href="${contextPath}/css/ticket.css">
	<title>예매하기</title>
	<script type="text/javascript">
		function fn_ticket() {
			let frmMovie = document.frmMovie;
			let frmID = document.id;
			let mvTitle = frmMovie.mvTitle.value;
			let theater = frmMovie.theater.value;
			let showingDate = frmMovie.showingDate.value;
			let showingTime = frmMovie.showingTime.value;

			if (id.length == 0 || mvTitle == "") {
				alert("로그인이 필요한 서비스입니다.")
				location.href = "${contextPath}/member/login.do"
			} else if (mvTitle.length == 0 || mvTitle == "") {
				alert("영화를 선택해주세요")
			} else if (showingDate.length == 0 || showingDate == "") {
				alert("날짜를 선택해주세요")
			} else if (theater.length == 0 || theater == "") {
				alert("상영관을 선택해주세요")
			} else if (showingTime.length == 0 || showingTime == "") {
				alert("시간을 선택해주세요")
			} else {
				frmMovie.method = "post";
				frmMovie.action = "movieSeat.do"; //임시
				frmMovie.submit(); //서블릿으로 전송
			}
		}
	</script>

	<!-- BOXICONE -->
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>


	<!-- LODASH CDN -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
		integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
		crossorigin="anonymous"></script>
	<!-- GSAP CDN (javascript로 애니매이션 효과)-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"
		integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ=="
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollToPlugin.min.js"
		integrity="sha512-agNfXmEo6F+qcj3WGryaRvl9X9wLMQORbTt5ACS9YVqzKDMzhRxY+xjgO45HCLm61OwHWR1Oblp4QSw/SGh9SA=="
		crossorigin="anonymous"></script>

	<!-- SCROLL MAGIC CDN -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"
		integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg=="
		crossorigin="anonymous"></script>

	<!-- JAVA SCRIPT 연결 -->
	<script src="${contextPath}/js/common.js" defer></script>
	<script src="${contextPath}/js/members.js" defer></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="${contextPath}/js/ticket.js" defer></script>
</head>

<body>
	<!-- HEADER -->
  <header>
    <div class="inner">
      <!-- logo & 이모티콘영역 -->
      <div class="top_area">
        <div class="logo_con">
          <div class="logo_image">
            <a href="${contextPath}/">
              <img src="${contextPath}/img/logoRed.png" alt="CGV" class="logo logo_red">
              <img src="${contextPath}/img/logoWhite.png" alt="CGV" class="logo logo_white">
            </a>
          </div>
          <div class="logo_text">
            CURTULPLEX
          </div>
        </div>
        <div class="mem_info">
          <c:choose>
            <c:when test="${sessionScope.id==null ||  sessionScope.id==''}">
              <div class="mem_join">
                <a href="${contextPath}/member/join.do">
                  <i class='bx bx-user-plus'></i>
                  <p>회원가입</p> <!--  -->
                </a>
              </div>
            </c:when>
            <c:otherwise>
              <div class="mem_join">
                <%
                  Object ID_get=session.getAttribute("id");
                %>
                <a href="#">
                  <p><%=ID_get %>님<br> 환영합니다</p>
                </a>
              </div>

            </c:otherwise>
          </c:choose>

          <div class="login_info">
            <!-- 로그인/비로그인 상태에 따라 다르게 보이게 -->
            <c:choose>
              <c:when test="${sessionScope.id==null ||  sessionScope.id==''}">
                <div class="login">
                  <a href="${contextPath}/member/login.do">
                    <i class='bx bx-log-in-circle'></i>
                    <p>로그인</p>
                  </a>
                </div>
              </c:when>
              <c:otherwise>
                <div class="logout">
                  <a href="${contextPath}/member/logout.do">
                    <i class='bx bx-log-out-circle'></i>
                    <p>로그아웃</p>
                  </a>
                </div>
              </c:otherwise>
            </c:choose>
          </div> <!--  //div class="login_info" -->




          <div class="myCGV">
              <c:choose>
                <c:when test="${sessionScope.id==null ||  sessionScope.id==''}">
                  <a href="${contextPath}/member/login.do">
                </c:when>
                <c:otherwise>
                  <a href="${contextPath}/member/memberPage.do">
                </c:otherwise>
              </c:choose>
              <i class='bx bx-user'></i>
              <p>MY CGV</p>
						</a>
					</div>


          <div class="QNA">
            <a href="${contextPath}/NoticeListCon.do">
              <i class='bx bx-support'></i>
              <p>고객센터</p>
            </a>
          </div>
        </div>
      </div>
    </div>

    <!-- MENU & SEARCH 영역 -->
    <div class="menu_area">
      <div class="inner">
        <ul class="main_menu">
          <li>
            <h2 class="menu_name">영화</h2>
            <ul class="menu_contents">
              <li>
                <h3>영화</h3>
              </li>
              <li><a href="${contextPath}/movie/movieChart.do">무비차트</a></li>
              <li><a href="#">아트하우스</a></li>
              <li><a href="#">ICECON</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">극장</h2>
            <ul class="menu_contents">
              <li>
                <h3>극장</h3>
              </li>
              <li><a href="#">CGV 극장</a></li>
              <li><a href="#">특별관</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">예매</h2>
            <ul class="menu_contents">
              <li>
                <h3>예매</h3>
              </li>
              <li><a href="${contextPath}/movie/ticket.do">빠른예매</a></li>
              <li><a href="#">상영스케줄</a></li>
              <li><a href="#">English Ticketing</a></li>
              <li><a href="#">English Scedule</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">스토어</h2>
            <ul class="menu_contents">
              <li>
                <h3>스토어</h3>
              </li>
              <li><a href="#">영화관람권</a></li>
              <li><a href="#">기프트카드</a></li>
              <li><a href="#">콤보</a></li>
              <li><a href="#">팝콘</a></li>
              <li><a href="#">음료</a></li>
              <li><a href="#">스낵</a></li>
              <li><a href="#">플레이존</a></li>
              <li><a href="#">씨네샵></a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">이벤트</h2>
            <ul class="menu_contents">
              <li>
                <h3>이벤트</h3>
              </li>
              <li><a href="#">SPECIAL</a></li>
              <li><a href="#">영화/예매</a></li>
              <li><a href="#">멤버십/CLUB</a></li>
              <li><a href="#">CGV 극장별</a></li>
              <li><a href="#">제휴할인</a></li>
              <li><a href="#">당첨자 발표</a></li>
              <li><a href="#">종료된 이벤트</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">혜택</h2>
            <ul class="menu_contents">
              <li>
                <h3>혜택</h3>
              </li>
              <li><a href="#">CGV 할인정보</a></li>
              <li><a href="#">CLUB 서비스</a></li>
              <li><a href="#">VIP 라운지</a></li>
            </ul>
          </li>
        </ul>

        <div class="search_menu">
          <input type="text" name="search_bar" id="search_bar">
          <div class="search_btn"><i class='bx bx-search-alt-2'></i></div>
        </div>
      </div>
      <div class="menu_bg"></div>
    </div>
  </header>


	<!-- <div class="inner">
    <div class="memInfo">
      <input type="button" value="로그아웃" class="memInfobtn">
      <input type="button" value="마이페이지" class="memPagebtn">
    </div>
    
    <div class="title">
      <span class="title_left">예매</span>
      <span class="title_img"><i class='bx bx-camera-movie'></i></span>
      <span class="title_right">영화정보</span>
    </div>

    <!-- 검색창 -->
	<div class="search">
		<form action="#">
			<span class="movie_serch">영화찾기</span>
			<input type="text" name="movieSearch" id="movieSearch">
			<button><i class='bx bx-search-alt-2'></i></button>
		</form>
	</div> -->

	<!-- 콘테이너 -->

	<div class="container">
		<div class="movie_tbl tbl_con">
			<span class="">영화선택</span>
			<ul>
				<li><a href="#">${mvInfoList[0].mvTitle}</a></li>
				<li><a href="#">${mvInfoList[4].mvTitle}</a></li>
			</ul>
		</div>

		<div class="day_tbl tbl_con">
			<span class="">날짜선택</span>
			<ul class="movie1 day1">
				<li class="day1"><a href="#">${mvInfoList[0].showingDate}</a></li>
				<li class="day2"><a href="#">${mvInfoList[2].showingDate}</a></li>
				<li class="day3"><a href="#">${mvInfoList[4].showingDate}</a></li>
			</ul>
		</div>

		<div class="screen_tbl tbl_con">
			<span class="">상영관선택</span>
			<ul class="movie1 day1 screen">
				<li class="screen1"><a href="#">${mvInfoList[0].theater}</a></li>
				<li class="screen2"><a href="#">${mvInfoList[2].theater}</a></li>
			</ul>
		</div>

		<div class="time_tbl tbl_con">
			<span class="">시간선택</span>
			<ul class="movie1 day1 time1">
				<li><a href="#">${mvInfoList[0].showingTime}</a></li>
				<li><a href="#">${mvInfoList[3].showingTime}</a></li>
				<li><a href="#">${mvInfoList[5].showingTime}</a></li>
			</ul>
		</div>
	</div>

	<div class="btn_con">
		<a class="movieListBtn" href="${contextPath}/movieChart.jsp">영화리스트</a>
		<a class="movieSeatBtn"><input type="button" value=">좌석선택" onclick="fn_ticket()"></a>
	</div>
	</div>

	<div class="goNext">
		<div class="inner">
			<div class="info">
				<div class="info movie">
					<span class="movie_poster">
						<!-- <img src="./image/001.jpg" alt="리멤버"> -->
					</span>
					<div class="row movie_title">
						<span></span>
					</div>
				</div>
				<div class="target info">
					<div class="row date">
						<span>일시</span>
						<span class="date"></span>
						<span class="time"></span>
					</div>
					<div class="row screen">
						<span>상영관</span>
						<span class="screen"></span>
					</div>
				</div>
				<div class="row colspan">
					<span class="path_step1">>좌석선택</span>
					<span class="path_step2">>결제</span>
				</div>
			</div>
		</div>
	</div>

	<form name="frmMovie">
		<%
                  Object ID_get=session.getAttribute("id");
                %>
		<input type="hidden" name="id" id="id" value="<%=ID_get %>">
		<input type="hidden" name="mvTitle" id="movie_title">
		<input type="hidden" name="theater" id="screen">
		<input type="hidden" name="showingDate" id="date">
		<input type="hidden" name="showingTime" id="time">
		<input type="button" value="좌석선택" onclick="fn_ticket()">
	</form>


	<!-- FOOTER -->
	<footer>
		<div class="policy_list">
			<div class="inner">
				<ul>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">IR</a></li>
					<li><a href="#">채용정보</a></li>
					<li><a href="#">광고/제휴/출점문의</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">편성기준</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">법적고지</a></li>
					<li><a href="#">이메일주소무단수집거부</a></li>
					<li><a href="#">윤리경영</a></li>
					<li><a href="#">사이버감사실</a></li>
				</ul>
			</div>
		</div>
		<div class="company_info_wrap">
			<div class="inner">
				<div class="company_info">
					<p>(04377)서울특별시 용산구 한강대로 23길 55, 아피카므로 6층(한강로동)</p>
					<p>대표이사 : 오남석 · 사업자등록번호 : 123-45-678910 · 통신판매업신고번호 : 2017-서울용산-0662 <a href="#">사업자정보확인</a></p>
					<p>호스팅사업자 : CJ올리브네트웍스 · 개인정보보호 책임자 : 심준범 · 대표이메일 : abcdefg@cj.net</p>
					<p>ⓒ CJ CGV. All Rights Reserved</p>
				</div>
			</div>
		</div>
	</footer>

	<div id="to-top">
		<i class='bx bx-up-arrow-alt'></i>
	</div>
</body>

</html>