<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>����������</title>
  <!-- CSS LINK -->
  <link rel="stylesheet" href="${contextPath}/css/icommon.css">
  <!--���뿵�� CSS-->

  <!-- BOXICONE https://boxicons.com/ ����Ʈ���� �̸�Ƽ�� ������ �� ����-->
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <!-- LODASH CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
    integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
    crossorigin="anonymous"></script>
  <!-- GSAP CDN (javascript�� �ִϸ��̼� ȿ��)-->
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

  <!-- JAVA SCRIPT ���� -->
  <script src="${contextPath}/js/common.js" defer></script>
  <script src="${contextPath}/js/members.js" defer></script>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>


</head>

<body>
  <!-- HEADER -->
  <header>
    <div class="inner">
      <!-- logo & �̸�Ƽ�ܿ��� -->
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
                  <p>ȸ������</p> <!--  -->
                </a>
              </div>
            </c:when>
            <c:otherwise>
              <div class="mem_join">
                <%
                  Object ID_get=session.getAttribute("id");
                %>
                <a href="#">
                  <p><%=ID_get %>��<br> ȯ���մϴ�</p>
                </a>
              </div>

            </c:otherwise>
          </c:choose>

          <div class="login_info">
            <!-- �α���/��α��� ���¿� ���� �ٸ��� ���̰� -->
            <c:choose>
              <c:when test="${sessionScope.id==null ||  sessionScope.id==''}">
                <div class="login">
                  <a href="${contextPath}/member/login.do">
                    <i class='bx bx-log-in-circle'></i>
                    <p>�α���</p>
                  </a>
                </div>
              </c:when>
              <c:otherwise>
                <div class="logout">
                  <a href="${contextPath}/member/logout.do">
                    <i class='bx bx-log-out-circle'></i>
                    <p>�α׾ƿ�</p>
                  </a>
                </div>
              </c:otherwise>
            </c:choose>
          </div> <!--  //div class="login_info" -->




          <div class="myCGV">
            <a href="#">
              <i class='bx bx-user'></i>
              <p>MY CGV</p>
            </a>
          </div>
          <div class="QNA">
            <a href="${contextPath}/NoticeListCon.do">
              <i class='bx bx-support'></i>
              <p>������</p>
            </a>
          </div>
        </div>
      </div>
    </div>

    <!-- MENU & SEARCH ���� -->
    <div class="menu_area">
      <div class="inner">
        <ul class="main_menu">
          <li>
            <h2 class="menu_name">��ȭ</h2>
            <ul class="menu_contents">
              <li>
                <h3>��ȭ</h3>
              </li>
              <li><a href="${contextPath}/movie/movieChart.do">������Ʈ</a></li>
              <li><a href="#">��Ʈ�Ͽ콺</a></li>
              <li><a href="#">ICECON</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">����</h2>
            <ul class="menu_contents">
              <li>
                <h3>����</h3>
              </li>
              <li><a href="#">CGV ����</a></li>
              <li><a href="#">Ư����</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">����</h2>
            <ul class="menu_contents">
              <li>
                <h3>����</h3>
              </li>
              <li><a href="${contextPath}/movie/ticket.do">��������</a></li>
              <li><a href="#">�󿵽�����</a></li>
              <li><a href="#">English Ticketing</a></li>
              <li><a href="#">English Scedule</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">�����</h2>
            <ul class="menu_contents">
              <li>
                <h3>�����</h3>
              </li>
              <li><a href="#">��ȭ������</a></li>
              <li><a href="#">����Ʈī��</a></li>
              <li><a href="#">�޺�</a></li>
              <li><a href="#">����</a></li>
              <li><a href="#">����</a></li>
              <li><a href="#">����</a></li>
              <li><a href="#">�÷�����</a></li>
              <li><a href="#">���׼�></a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">�̺�Ʈ</h2>
            <ul class="menu_contents">
              <li>
                <h3>�̺�Ʈ</h3>
              </li>
              <li><a href="#">SPECIAL</a></li>
              <li><a href="#">��ȭ/����</a></li>
              <li><a href="#">�����/CLUB</a></li>
              <li><a href="#">CGV ���庰</a></li>
              <li><a href="#">��������</a></li>
              <li><a href="#">��÷�� ��ǥ</a></li>
              <li><a href="#">����� �̺�Ʈ</a></li>
            </ul>
          </li>

          <li>
            <h2 class="menu_name">����</h2>
            <ul class="menu_contents">
              <li>
                <h3>����</h3>
              </li>
              <li><a href="#">CGV ��������</a></li>
              <li><a href="#">CLUB ����</a></li>
              <li><a href="#">VIP �����</a></li>
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

  <!-- CONTAINER -->
  <div class="container">
    <div class="inner">
      <h2>Q&A �Խ���</h2>
		<table width="700" border="1" bordercolor="gray">
			<tr height = "40">
				<td colspan="5" align="right">
					<input type="button" value="�۾���" onclick="location.href ='${contextPath}/QNAWriteController.do'">
				</td>
			</tr>
			
			<tr height = "40" bgcolor="#FAF4C0">
				<td width = "50" align ="center">��ȣ </td>
				<td width = "320" align ="center">����</td>
				<td width = "100" align ="center">���̵� </td>
				<td width = "150" align ="center">�ۼ��� </td>
				<td width = "80" align ="center">��ȸ��</td>
			</tr>
			
			<c:set var="number" value="${number}" />
			<c:forEach var="vo" items="${vo}">
			
			<tr height = "40">
				<td width = "50" align ="center">${number}</td>
				<td width = "320" align ="Left">
					<c:if test="${vo.q_re_step>1}">
						<c:forEach var="j" begin="1" end="${(vo.q_re_step-1)}">
							&nbsp;
						</c:forEach>
					</c:if>
					<a href="${contextPath}/QNAInfoController.do?qnum=${vo.qnum}" style ="text-decoration:none">${vo.qtitle}</a>
				</td>
				<td width = "100" align ="Left">${vo.id}</td>
				<td width = "150" align ="Left">${vo.qdate} </td>
				<td width = "80" align ="Left">${vo.readcount}</td>
			</tr>
			<c:set var="number" value="${number-1}" />
			</c:forEach>
		</table>
		
	<c:if test="${count>0}">
		<c:if test="${blockStart > page}">
			<a href="${contextPath}/QNAListController.do?pageNum=${blockStart-page}">[����]</a>
		</c:if>
		<c:forEach var="i" begin="${blockStart}" end="${blockEnd}">
				<a href="${contextPath}/QNAListController.do?pageNum=${i}" style ="text-decoration:none">[${i}]</a>
		</c:forEach>
		<c:if test="${blockEnd < pageCount}">
			<a href="${contextPath}/QNAListController.do?pageNum=${blockStart+page}">[����]</a>
		</c:if>
	</c:if>
    </div>
  </div>

  <!-- FOOTER -->
  <footer>
    <div class="policy_list">
      <div class="inner">
        <ul>
          <li><a href="#">ȸ��Ұ�</a></li>
          <li><a href="#">IR</a></li>
          <li><a href="#">ä������</a></li>
          <li><a href="#">����/����/��������</a></li>
          <li><a href="#">�̿���</a></li>
          <li><a href="#">������</a></li>
          <li><a href="#">��������ó����ħ</a></li>
          <li><a href="#">��������</a></li>
          <li><a href="#">�̸����ּҹ��ܼ����ź�</a></li>
          <li><a href="#">�����濵</a></li>
          <li><a href="#">���̹������</a></li>
        </ul>
      </div>
    </div>
    <div class="company_info_wrap">
      <div class="inner">
        <div class="company_info">
          <p>(04377)����Ư���� ��걸 �Ѱ���� 23�� 55, ����ī�Ƿ� 6��(�Ѱ��ε�)</p>
          <p>��ǥ�̻� : ������ �� ����ڵ�Ϲ�ȣ : 123-45-678910 �� ����Ǹž��Ű��ȣ : 2017-������-0662 <a href="#">���������Ȯ��</a></p>
          <p>ȣ���û���� : CJ�ø����Ʈ���� �� ����������ȣ å���� : ���ع� �� ��ǥ�̸��� : abcdefg@cj.net</p>
          <p>�� CJ CGV. All Rights Reserved</p>
        </div>
      </div>
    </div>
  </footer>

  <div id="to-top">
    <i class='bx bx-up-arrow-alt'></i>
  </div>
</body>
</html>