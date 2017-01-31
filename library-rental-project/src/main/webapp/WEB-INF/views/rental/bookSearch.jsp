<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/template/rentalTop.jsp"/>
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<form action="<c:url value="/rental/bookSearch"/>" method="post">
			<table class="table table-bordered">
				<tr>
					<th>도서코드 </th>
					<td>
						<input type="text" name="bookCode">
					</td>
				</tr>
			</table>
			
			<input type="submit" value="조회">
		</form>
	</div>
</div>

<jsp:include page="/template/rentalBottom.jsp"/>