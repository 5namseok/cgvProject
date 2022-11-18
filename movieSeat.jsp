<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
	String mvTitle = request.getParameter("mvTitle");
	String theater = request.getParameter("theater");
	String showingDate = request.getParameter("showingDate");
	String showingTime = request.getParameter("showingTime");
	String seatNum = request.getParameter("seatNum");
	/*System.out.println(mvTitle); 
	System.out.println(theater); 
	System.out.println(showingDate); 
	System.out.println(showingTime);
	System.out.println(seatNum);*/
%>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
<!--
	function fn_seat() {
		var flag = false;
		var seatNum = document.getElemntsByNames("seatNum");
			System.out.println(seatNum.length);
		for(var i =0; i<seatNum.length; i++){
			if(seatNum[i].checked){
				System.out.println(seatNum[i].value);
			}
		}
		return flag;
	}
	

-->

</script>
<meta charset="UTF-8">
<title>예매하기</title>
  <link rel="stylesheet" href="${contextPath}/css/common2.css">
  <link rel="stylesheet" href="${contextPath}/css/movieSeat.css">

  <!-- BOXICONE -->
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <!-- JS -->
  <script src="${contextPath}/js/movieSeat.js" defer></script>

</head>

<body>
  <div class="inner">
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

        <span class="movie_serch">영화찾기</span>
        <input type="text" name="movieSearch" id="movieSearch">
        <button><i class='bx bx-search-alt-2'></i></button>

    </div>

    <!-- 콘테이너 -->
    <div class="container">
      <div class="book_info">
        <div class="movie_info">
          <span class="movie_title"><%=mvTitle%></span>
        </div>
        <div class="time_info">
          <span>일시 : </span>
          <span class="day"><%=showingDate%></span><br>
          <span>시간 : </span>
          <span class="time"><%=showingTime%></span>
        </div>
      </div>
      <div class="Count">
        <span>인원수 선택</span>
        <div class="Count_con">
          <div class="adult">
            <label for="AdultCount">성인</label>
            <input type="number" name="AdultCount" id="AdultCount" max="3" min="0" value="0">
          </div>
          <div class="children">
            <label for="childrenCount">어린이</label>
            <input type="number" name="childrenCount" id="childrenCount" max="2" min="0" value="0">
          </div>
        </div>
        
      </div>

      <div class="seatTitle">
        좌석선택
      </div>
      
      <table class="seat">
        <th colspan="5"><span>스크린</span></th>
        <tr>
          <td class="null">A1</td>
          <td class="null">A2</td>
          <td class="null">A3</td>
          <td class="null">A4</td>
          <td class="null">A5</td>
        </tr>
        <tr>
          <td class="null">B1</td>
          <td class="null">B2</td>
          <td class="null">B3</td>
          <td class="null">B4</td>
          <td class="null">B5</td>
        </tr>
        <tr>
          <td class="null">C1</td>
          <td class="null">C2</td>
          <td class="null">C3</td>
          <td class="null">C4</td>
          <td class="null">C5</td>
        </tr>
      </table>
    </div>

    <div class="btn_con">
      <div class="pageMoveBtn"><a href="${contextPath}/movieChart.jsp">영화리스트</a></div>
      <div class="pageMoveBtn payment">결제하기</div>
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
            <span><%=mvTitle%></span>
          </div>
        </div>
        <div class="target info">
          <div class="row date">
            <span>일시</span>
            <span class="date"><%=showingDate%></span>
            <span class="time"><%=showingTime%></span>
          </div>
          <div class="row screen">
            <span><%=theater%></span>
            <span class="screen"></span>
          </div>
        </div>
        <div class="row colspan">
          <span class="path_step1">>좌석선택</span>
          <span class="path_step2">>결제</span>
        </div>
      </div>


      <form action="ticketComp.do">
        <input type="hidden" name="mvTitle" id="movie_title" value="<%=mvTitle%>">
        <input type="hidden" name="theater" id="screen" value="<%=theater%>">
        <input type="hidden" name="showingDate" id="date" value="<%=showingDate%>">
        <input type="hidden" name="showingTime" id="time" value="<%=showingTime%>">
        <input type="hidden" name="seatNum" id="seatNum">
        <input type="hidden" name="bookNum" id="bookNum">
        <input type="button" id="seat_btn" value="좌석선택">
      </form>
    </div>
  
</body>
</html>
</head>
<body>

</body>
</html>