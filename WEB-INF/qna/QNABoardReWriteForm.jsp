<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>답변글 입력하기</h2>
	<form action="${ctx}/QNAReWriteProController.do" method="post">
		<table width="600" border="1" bordercolor="gray" >
			<tr height = "40">
				<td width="150" align="center">아이디</td>
				<td width="450">${sId}</td>
			</tr>
			
			<tr height = "40">
				<td width="150" align="left">제목</td>
				<td width="450"><input type ="text" name="qtitle"  value ="▶[답변]" size ="60"></td>
			</tr>
			
			<tr height = "40">
				<td width="150" align="center">글 내용</td>
				<td width="450"><textarea rows="10" cols="60" name="qcontent"></textarea></td>
			</tr>
			
			<!--form에서 사용자로부터 입력바지 않고 데이터를 넘김 -->
			<tr height ="40">
				<td align ="center" colspan="2">
					<input type="hidden" name="sId" value="${sId}">
					<input type="hidden" name ="q_ref" value="${q_ref}">
					<input type="hidden" name ="q_re_step" value="${q_re_step}">
					<input type="hidden" name ="q_re_level" value="${q_re_level}">
					<input type="submit" value="답글 쓰기 완료">&nbsp;&nbsp;
					<input type="reset" value="취소">
					<input type="button" onclick="location.href='${ctx}/QNAListController.do'" value="전체글보기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>