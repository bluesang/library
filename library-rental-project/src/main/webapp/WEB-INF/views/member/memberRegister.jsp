<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/memberTop.jsp" />
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>회원등록</h1>
		<table class="table table-bordered">				
			<tr>
				<th>ID</th>
				<td><input type="text" name="id"></td>								
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="pw"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="pw"></td>
			</tr>
			<tr>
				<th>등급</th>
				<td>								
					<select>
						<option>::선택::</option>
						<option>일반회원</option>
						<option>유료회원</option>
					</select>
				</td>
			</tr>
		</table>
		
		<input type="submit" value="회원등록">
		<input type="reset" value="초기화">
	</div>
</div>
<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/template/memberBottom.jsp"/>

