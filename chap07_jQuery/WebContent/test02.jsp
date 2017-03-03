<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<h2>jQuery DOM 탐색</h2>
<hr />
<c:forTokens var="tk" items="가위,바위,보" delims=",">
	<button>${tk }</button>
</c:forTokens>
<br/>
<c:forEach var="i" begin="1" end="10">
	<input type="checkbox" class="chk" />목록 .${i }<br/>
</c:forEach>
<button id="click">클릭</button>
<input type="text" readonly value="아무말이나" id="t"/>
<script>
	$("button").each(function() {
		console.log(this);
		$(this).html("음...");
		this.disabled =true;
	});
	
	$(".chk").each(function(){
		this.checked =true;
		$(this).prop("checked",true);
	});
	
	$("#click").prop("disabled",false);
	
	$("#click").click(function(){
		$("button").each(function() {
			$(this).prop("disabled",!$(this).prop("disabled"));
			$("#click").prop("disabled",false);
		});
		$(".chk").each(function(){
			$(this).prop("checked",!$(this).prop("checked"));
		});
		$(this).html("체크됨");
		$("#t").prop("readonly",false);
	});
	

</script>