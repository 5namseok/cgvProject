<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2> 게시글 수정</h2>
<form action="${ctx}/QNAUpdateController.do" method ="post">
	<table width = "600" border = "1">
		<tr height= "40">
			<td width="120" align="center">작성자</td>
			<td width="180" align="center">${vo.id}</td>
		</tr>
		
		<tr height= "40">
			<td width="120" align="center">제목</td>
			<td width="480" colspan="3">&nbsp;<input type="text" name="qtitle" value="${vo.qtitle}" size="60"></td>
		</tr>

		<tr height= "40">
			<td width="120" align="center">글내용</td>
			<td width="480" colspan="3"><textarea rows="10" cols="60" name="qcontent" align="left">${vo.qcontent}</textarea></td>
		</tr>
		
		<tr height= "40">
			<td colspan="4" align="center">
				<input type="hidden" name="qnum" value="${vo.qnum}">			
				<input type="submit" value="글수정">&nbsp;&nbsp;
				<input type="button" onclick = "location.href='${ctx}/QNAListController.do'" value="목록보기">
			</td>
		</tr>
	</table>
</form>
</body>
</html>