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
<h2> 게시글 쓰기 </h2>
	<form action = "${ctx}/QNAWriteProController.do" method = "post">
		<table	width ="600" border = "1" bordercolor = "gray" >
			<tr height="40">
					<td align = "center" width ="150" bgcolor="#FAF4C0">아이디</td>
					<td width="450">${sId}</td>
			</tr>
			
			<tr height="40">
					<td align = "center" width ="150" bgcolor="#FAF4C0">제목</td>
					<td width="450"><input type= "text" name = "qtitle" size = "60"></td>
			</tr>
		
			<tr height="40">
					<td align = "center" width ="150" bgcolor="#FAF4C0">글 내용</td>
					<td width="450"><textarea rows= "10" cols = "60" name = "qcontent"></textarea></td>
			</tr>
			
			<tr height="40">
					<td align = "center" colspan = "2">
						<input type="hidden" name="sId" value="${sId}">
						<input type= "submit" value="글쓰기">&nbsp;&nbsp;
						<input type= "reset"  value="다시 작성">&nbsp;&nbsp;
						<input tpye="button" value="목록보기" onclick="location.href='${ctx}/QNAListController.do'">
					</td>
			</tr>
		</table>		
	</form>
</body>
</html>