<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/template/rentalTop.jsp"/>
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서반납</h1>
		<form action="<c:url value="/rental/bookReturn"/>" method="post">
			<table class="table table-bordered">				
				<c:forEach var="bookReturn" items="bookReturn">
					<tr>
						<th>도서코드</th>
						<td><input type="text" name="bookCode" readonly>${bookReturn.bookCode}</td>						
					</tr>
					<tr>
						<th>도서명</th>
						<td><input type="text" name="bookName" readonly>${bookReturn.bookName}</td>
					</tr>
					<tr>
						<th>회원이름</th>
						<td>								
							<input type="text" name="memberName" readonly>
							${bookReturn.memberName}
						</td>
					</tr>
					<tr>
						<th>총요금</th>
						<td>								
							<input type="text" name="totalPrice" readonly>
							${bookReturn.rentalPayment}
						</td>		
					</tr>
					<tr>
						<th>받은금액</th>
						<td>								
							<input type="text" name="paid" readonly>
						</td>				
					</tr>
					<tr>
						<th>받을금액</th>
						<td>								
							<input type="text" name="pay" readonly>
						</td>			
					</tr>
				</c:forEach>
			</table>		
			<input type="submit" value="반납">
		</form>
	</div>
</div>
<jsp:include page="/template/rentalBottom.jsp"/>