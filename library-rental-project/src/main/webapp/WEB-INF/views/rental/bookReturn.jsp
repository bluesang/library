<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/template/rentalTop.jsp"/>
<div class="w3-main" style="margin-left:250px">
	<div class="w3-row w3-padding-64">
	 <div class="w3-twothird w3-container">
      <h1 class="w3-text-teal">도서반납</h1>
		<form action="<c:url value="/rental/bookReturn"/>" method="post">
			<table class="table table-bordered">				
				<tr>
					<th>도서코드</th>
					<td>
						<input type="text" id="bookCode" name="bookCode">
						<input type="button" id="btn" value="조회">
					</td>						
				</tr>
				<tr>
					<th>도서명</th>
					<td>
						<input type="text" id="bookName" name="bookName" readonly="readonly" >
					</td>
				</tr>
				<tr>
					<th>회원이름</th>
					<td>								
						<input type="text" id="memberName" name="memberName" readonly="readonly" >	
					</td>
				</tr>
				<tr>
					<th>총요금</th>
					<td>								
						<input type="text" id="totalPrice" name="totalPrice" readonly="readonly" >						
					</td>		
				</tr>
				<tr>
					<th>받은금액</th>
					<td>								
						<input type="text" id="paid" name="paid" readonly="readonly" >
					</td>				
				</tr>
				<tr>
					<th>받을금액</th>
					<td>								
						<input type="text" id="paying" name="paying" >
					</td>			
				</tr>
			</table>		
			<input type="submit" value="반납">
		</form>
	 </div>
	</div>
</div>
<script>
	$(document).ready(function(){
		function getContextPath() {
			var hostIndex = location.href.indexOf(location.host) + location.host.length;
			return location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
		};
		
		$("#btn").bind("click", function(){
			if($('#bookCode').val()==""){ //String과 int의 차이가 있나?
				alert('도서코드를 입력하시오');
				return;
			}
			$.ajax({
				url : "/rental/bookReturnSearch",
				type : "GET",
				data : {"bookCode" : $("#bookCode").val()},
				success : function(data){
					if(!data){
						$("#bookName").val("");
						$("#memberName").val("");
						$("#totalPrice").val("");
						$("#paid").val("");
						$("#paying").val("");
						alert("해당 도서의 정보가 없습니다.");
						return false;
					}
					$("#bookName").val(data.bookName);
					$("#memberName").val(data.memberName);
					$("#totalPrice").val(data.totalPrice);
					$("#paid").val(data.paying);
					$("#paying").val(data.rentalPayment);
				}
			
			});
		});
	});
</script>
<jsp:include page="/template/rentalBottom.jsp"/>