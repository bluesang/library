<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/template/rentalTop.jsp"/>
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서반납</h1>
		
		<form action="<c:url value="/rental/bookReturn"/>" method="post">
			<table class="table table-bordered">				
				<tr>
					<th>도서코드</th>
					<td><input type="text" name="bookCode" readonly="readonly" value="${rental.bookCode}"></td>						
				</tr>
				<tr>
					<th>도서명</th>
					<td><input type="text" name="bookName" readonly="readonly" value="${rental.bookName}"></td>
				</tr>
				<tr>
					<th>회원이름</th>
					<td>								
						<input type="text" name="memberName" readonly="readonly" value="${rental.memberName}">
						
					</td>
				</tr>
				<tr>
					<th>총요금</th>
					<td>								
						<input type="text" name="totalPrice" readonly="readonly" value="${totalPrice}">						
					</td>		
				</tr>
				<tr>
					<th>받은금액</th>
					<td>								
						<input type="text" name="paid" readonly="readonly" value="${rental.rentalPayment}" >
					</td>				
				</tr>
				<tr>
					<th>받을금액</th>
					<td>								
						<input type="text" name="paying" value="${paying}">
					</td>			
				</tr>
			</table>		
			<input type="submit" value="반납">
		</form>
	</div>
</div>
<jsp:include page="/template/rentalBottom.jsp"/>