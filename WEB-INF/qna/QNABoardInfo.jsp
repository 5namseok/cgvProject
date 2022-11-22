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
	<h2>게시글 보기</h2>
		<table width = "600" border = "1">
			<tr height = "40">
				<td width = "100" align ="center">글번호 </td>
				<td width = "180" align ="left">${vo.qnum}</td>
				<td width = "120" align ="center">조회수</td>
				<td width = "180" align ="center">${vo.readcount}</td>
			</tr>
			
			<tr height = "40">
				<td width = "100" align ="center">아이디</td>
				<td width = "180" align ="left">${vo.id}</td>
				<td width = "120" align ="center">작성일 </td>
				<td width = "180" align ="center">${vo.qdate}</td>
			</tr>
				
			<tr height = "40">
				<td width = "120" align ="center">제목 </td>
				<td colspan = "3" align ="center">${vo.qtitle}</td>
			</tr>
			
			<tr height = "80">
				<td width = "120" align ="center">글 내용 </td>
				<td colspan = "3" align ="center">${vo.qcontent}</td>
			</tr>
			
			<tr height = "40">
				<td align ="center" colspan = "4">
					<c:if test="${sId eq 'admin'}">
						<input type="button" value="답글쓰기" 
						onclick="location.href='${ctx}/QNAReWriteController.do?qnum=${vo.qnum}&q_ref=${vo.q_ref}&q_re_step=${vo.q_re_step}&q_re_level=${vo.q_re_level}'"> 
					</c:if>  
					<input type="button" value="수정하기" onclick="location.href='${ctx}/QNAUpdateProController.do?qnum=${vo.qnum}'"> 
					<input type="button" value="삭제하기" onclick="location.href='${ctx}/QNADeleteController.do?qnum=${vo.qnum}'"> 
					<input type="button" value="목록보기" onclick="location.href='${ctx}/QNAListController.do'">     
				</td>
			</tr>
	</table>
</body>
</html>