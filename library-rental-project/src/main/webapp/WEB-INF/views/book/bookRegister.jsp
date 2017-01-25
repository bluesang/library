<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/bookTop.jsp" />
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
		<h1>도서등록</h1>
		<table class="table table-bordered">				
			<tr>
				<th>도서명</th>
				<td><input type="text" name="bookName"></td>								
			</tr>
			<tr>
				<th>저자</th>
				<td><input type="text" name="bookAuthor"></td>
			</tr>
			<tr>
				<th>출판사</th>
				<td><input type="text" name="bookPublisher"></td>
			</tr>
			<tr>
				<th>장르</th>
				<td>								
					<select name="bookGenre">
						<option>::선택::</option>
						<option>소설</option>
						<option>문학</option>
					</select>
				</td>
			</tr>
		</table>
		
		<input type="submit" value="도서등록">
		<input type="reset" value="초기화">
	</div>
</div>

<jsp:include page="<%=request.getContextPath()%>/main/webapp/WEB_INF/views/template/bookBottom.jsp" />
