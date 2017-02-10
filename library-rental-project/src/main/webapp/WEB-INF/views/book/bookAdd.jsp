<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/template/bookTop.jsp" flush="true"/>
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
	 <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">도서등록</h1>		
		<form action="<c:url value="/book/bookAdd"/>" method="post">
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
						<select name="genreNo">
							<option value="0">::선택::</option>
							<c:forEach var="genre" items="${genreList}">
								<option value="${genre.genreNo}">${genre.genreName}</option>							
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>도서상태</th>
					<td>								
						<select name="stateNo">
							<option value="0">::선택::</option>
							<c:forEach var="state" items="${stateList}">
								<option value="${state.stateNo}">${state.stateName}</option>							
							</c:forEach>
						</select>
					</td>
				</tr>
			</table>
			
			<input type="submit" value="도서등록">
			<input type="reset" value="초기화">
		</form>
	 </div>
	</div>
</div>

<jsp:include page="/template/bookBottom.jsp" flush="true"/>
