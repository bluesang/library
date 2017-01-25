<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
.w3-sidenav a,.w3-sidenav h4 {padding: 12px;}
.w3-navbar li a {
    padding-top: 12px;
    padding-bottom: 12px;
}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <ul class="w3-navbar w3-theme w3-top w3-left-align w3-large">
    <li class="w3-opennav w3-right w3-hide-large">
      <a class="w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
    </li>
    <li><a href="#" class="w3-theme-l1">Team4</a></li>
    
  </ul>
</div>

<!-- Overlay effect when opening sidenav on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<form action="/library/libraryAdd" method="post">
			<table class="table table-bordered">				
				<tr>
					<th>관리자 ID</th>
					<td>
						<input type="text" name="libraryId">
					</td>								
				</tr>
				<tr>
					<th>PW</th>
					<td>
						<input type="password" name="libraryPw">
					</td>
				</tr>
				<tr>
					<th>지역</th>
					<td>				
						<select name="localNo">
							<option value="0">지역을 선택해 주세요</option>
							<c:forEach var="local" items="${localList}">
								<option value="${local.localNo}">${local.localName}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
			</table>
			<input type="submit" value="등록하기" />
		</form>
	</div>
</div>
<c:url value=""></c:url>
<%-- <jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/bookBottom.jsp"/> --%>
