<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/rentalTop.jsp"/>

<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서반납</h1>
		<table class="table table-bordered">				
			<tr>
				<th>도서코드</th>
				<td><input type="text" name="bookCode"></td>
				<td><button id="btn" type="button"> 조회 </button></td>						
			</tr>
			<tr>
				<th>도서명</th>
				<td colspan="2"><input type="text" name="bookName"></td>
			</tr>
			<tr>
				<th>회원이름</th>
				<td colspan="2">								
					<input type="text" name="memberId" />
				</td>
			</tr>
			<tr>
				<th>총요금</th>
				<td colspan="2">								
					<input type="text" name="totalPrice" />
				</td>		
			</tr>
			<tr>
				<th>받은금액</th>
				<td colspan="2">								
					<input type="text" name="paid" />
				</td>				
			</tr>
			<tr>
				<th>받을금액</th>
				<td colspan="2">								
					<input type="text" name="pay" />
				</td>			
			</tr>
		</table>		
		<input type="submit" value="반납">
	</div>
</div>


<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/rentalBottom.jsp"/>