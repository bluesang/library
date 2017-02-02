<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/rentalTop.jsp" />
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서대여목록</h1>
		<table class="table table-bordered">
			<tr>
				<th>대여번호</th>
				<th>도서코드</th>
				<th>도서명</th>
				<th>대여일</th>
				<th>회원이름</th>
				<th>반납예정일</th>
				<th>선불금액</th>
				
			</tr>
			<c:forEach var="rentalList" items="${rentalList}">
				<tr>					
					<td>${rentalList.rentalCode}</td>
					<td>${rentalList.bookCode}</td>
					<td>${rentalList.bookName}</td>
					<td>${rentalList.rentalStart}</td>
					<td>${rentalList.memberName}</td>
					<td>${rentalList.rentalEnd}</td>
					<td>${rentalList.rentalPayment}</td>	
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<jsp:include page="/template/rentalBottom.jsp" />