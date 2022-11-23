<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
request.setCharacterEncoding("utf-8");
String seatNum = request.getParameter("seatNum");	
seatNum = seatNum.replaceAll(",$", ""); //seatNum에 저장된 마지막 콤마 제거
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매완료</title>
<script type="text/javascript">

</script>
</head>
<body>
	예매가 완료되었습니다<br>
	영화제목: ${movieInfoVO.mvTitle}<br>
	상영관: ${movieInfoVO.theater}<br>
	상영날짜: ${movieInfoVO.showingDate}<br>
	상영시간: ${movieInfoVO.showingTime}<br>	
	좌석번호: <%=seatNum%><br>	
	예매번호: ${movieInfoVO.bookNum}<br>	
	<a href="${contextPath}">홈페이지로 돌아가기</a>
</body>
</html>