<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/rentalTop.jsp">
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서대여</h1>
		<table class="table table-bordered">				
			<tr>
				<th>도서코드</th>
				<td><input type="text" name="bookCode"></td>								
			</tr>
			<tr>
				<th>회원코드</th>
				<td><input type="text" name="memberId"></td>
			</tr>
			<tr>
				<th>대여일</th>
				<td>								
					<input type="date" name="startDate" />
				</td>
			</tr>
			<tr>
				<th>종료일</th>
				<td>								
					<input type="date" name="endDate" />
				</td>
			</tr>
			<tr>
				<th>결제금액</th>
				<td>								
					<input type="text" name="rentalPay" />
				</td>
			</tr>
		</table>
		<input type="submit" value="대여">
	</div>
</div>

<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/rentalBottom.jsp">

