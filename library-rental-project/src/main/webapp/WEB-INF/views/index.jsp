<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<!-- Navigation Bar -->
<ul class="w3-navbar w3-white w3-large">
  <li><a href="#" class="w3-red"><i class="fa fa-bed w3-margin-right"></i>Team 4</a></li>
  <li class="w3-right w3-light-grey"><a href="<%=request.getContextPath() %>/libraryRegister.jsp">관리자 등록</a></li>
</ul>

<!-- Header -->
<header class="w3-display-container w3-content" style="max-width:1500px;">
  <img class="w3-image" src="./image/lib.jpg" style="min-width:1000px" width="1500" height="800">
  <div class="w3-display-left w3-padding w3-col l6 m8">
    <div class="w3-container w3-red">
      <h2>Login</h2>
    </div>
    <div class="w3-container w3-white w3-padding-16">
      <form action="#" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px;">
          <div class="w3-half w3-margin-bottom">
            <label>ID</label>
            <input class="w3-input w3-border" type="text" name="memberId" >
          </div>
        </div>
        <div class="w3-row-padding" style="margin:8px -16px;">
          <div class="w3-half w3-margin-bottom">
            <label>PW</label>
            <input class="w3-input w3-border" type="password" name="memberPw">
          </div>
        </div>
        <button class="w3-btn w3-dark-grey" type="submit">로그인</button>
      </form>
    </div>
  </div>
</header>



</body>
</html>
