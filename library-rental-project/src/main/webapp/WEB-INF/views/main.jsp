<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>

<body class="w3-light-grey">

<%
	String SID = (String)session.getAttribute("SID");
%>
<!-- Navigation Bar -->
<ul class="w3-navbar w3-white w3-large">
  <li><a href="#" class="w3-red"><i class="fa fa-bed w3-margin-right"></i>Team 4</a></li>
  <li><a href="<c:url value='/book/bookAdd' />">도서관리</a></li>
  <li><a href="<c:url value='/member/memberAdd' />">회원관리</a></li>
  <li><a href="<c:url value='/rental/bookRental' />">대여관리</a></li>
  
  <li class="w3-right w3-light-grey"><a href="<c:url value='/library/logout' />">로그아웃</a></li>
  <li class="w3-right w3-light-grey">
	<%=SID %>님 로그인 되었습니다
  </li>
</ul>

<!-- Header -->
<header class="w3-display-container w3-content" style="max-width:1500px;">
  <img src="../resources/image/1.jpg" style="min-width:1000px" width="1500" height="800">
</header>

</body>
</html>
