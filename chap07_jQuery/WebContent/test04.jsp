<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
value = <input type="text" id="t" value="아무거나"/><hr/>
html = <textarea rows="3" cols="10" id="ta">미리 작성...</textarea>

<button id="bt">버튼</button>
<script>
	$("#bt").click(function(){
		console.log($("#t").val());
		console.log($("#ta").val());
		window.alert($("#t").attr("value"));
		window.alert($("#ta").html());
	});
</script>