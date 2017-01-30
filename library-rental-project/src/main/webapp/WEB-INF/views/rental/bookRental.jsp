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
					<th>도서코드</th>
					<td><input type="text" name="bookCode"></td>								
				</tr>
				<tr>
					<th>대여상태변경</th>
					<td>								
						<select name="rentalstateNo">
							<option value="0">::::상태::::</option>
							<c:forEach var="rentalstate" items="${rentalstateList}">
								<option value="${rentalstate.rentalstateNo }">${rentalstate.rentalstateName}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>회원코드</th>
					<td><input type="text" name="memberId"></td>
				</tr>
				<tr>
					<th>대여일</th>
					<td>								
						<input type="date" name="rentalStart" />
					</td>
				</tr>
				<tr>
					<th>종료일</th>
					<td>								
						<input type="date" name="rentalEnd" />
					</td>
				</tr>
				
				<tr>
					<th>결제금액</th>
					<td>								
						<input type="text" name="rentalPayment" />
					</td>
				</tr>
			</table>
			<input type="submit" value="대여">
		</form>
	</div>
</div>

<jsp:include page="/template/rentalBottom.jsp" />

