<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/memberTop.jsp" flush="true"/>
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>회원등록</h1>
		<form action="<c:url value="/member/memberAdd"/>" method="post">
			<table class="table table-bordered">				
				<tr>
					<th>ID</th>
					<td><input type="text" name="memberId"></td>								
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="memberName"></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" name="memberPhone"></td>
				</tr>
				<tr>
					<th>등급</th>
					<td>								
						<select name="memberlevelNo">
							<option value="0">::선택::</option>
							<c:forEach var="memberlevel" items="${memberlevelList}">
								<option value="${memberlevel.memberlevelNo}"> ${memberlevel.memberlevelName} </option>						
							</c:forEach>
						</select>
					</td>
				</tr>
			</table>
			<input type="submit" value="회원등록">
			<input type="reset" value="초기화">
		</form>
	</div>
</div>

<jsp:include page="/template/memberBottom.jsp"  flush="true"/>

