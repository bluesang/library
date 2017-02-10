<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/bookTop.jsp" flush="true"/>


<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
	 <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">도서폐기등록</h1>
		<form action ="<c:url value='/book/bookDisposal'/>" method="post">
			<table class="table table-bordered">				
				<tr>
					<th>도서코드</th>
					<td><input type="text" name="bookCode"></td>								
				</tr>
			</table>
			<input type="submit" value="도서폐기">
		</form>
	 </div>
	</div>
</div>

<jsp:include page="/template/bookBottom.jsp" flush="true"/>
