<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/rentalTop.jsp" />
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서대여</h1>
		<form action="<c:url value="/rental/bookRental"/>" method="post">
			<table class="table table-bordered">				
				<tr>
					<th>도서코드 </th>
					<td><input type="text" name="bookCode"></td>								
				</tr>
				<tr>
					<th>회원ID </th>
					<td><input type="text" name="memberId"></td>
				</tr>							
				<tr>
					<th>받은금액 </th>
					<td>								
						<input type="text" name="rentalPayment" placeholder="선불결제 금액"/>
					</td>
				</tr>
			</table>
			<input type="submit" value="대여">
		</form>
	</div>
</div>

<jsp:include page="/template/rentalBottom.jsp" />

