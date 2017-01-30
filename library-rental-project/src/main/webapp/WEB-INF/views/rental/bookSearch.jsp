<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/template/rentalTop.jsp"/>
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<form action="<c:url value="/rental/bookSearch"/>" method="post">
			<input type="text" name="bookCode">
			<input type="submit" value="조회">
		</form>
	</div>
</div>

<jsp:include page="/template/rentalBottom.jsp"/>