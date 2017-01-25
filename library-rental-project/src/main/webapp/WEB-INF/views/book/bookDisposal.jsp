<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/bookTop.jsp" />

<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서폐기등록</h1>
		<table class="table table-bordered">				
			<tr>
				<th>도서코드</th>
				<td><input type="text" name="id"></td>								
			</tr>
			
		</table>
		
		<input type="submit" value="도서폐기">
	</div>
</div>

<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/bookBottom.jsp" />
