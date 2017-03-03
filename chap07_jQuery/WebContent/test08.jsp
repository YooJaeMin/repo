<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

ID :
<input type="text" id="id" size="40" class="in" />
<br/>
NAME :
<input type="text" id="name" size="40" class="in" />
<div id="result"></div>
<script>
	$(".in").focus(function(){
		$(this).css("background","yellow");
	});
	
	$(".in").blur(function(){
		$(this).css("background","white");
	});
	

	
	$("#id").on("keyup", function() {
		console.log("입장");
		$.ajax({
			"url" : "/07ajax.jsp?q="+$(this).val()
		}).done(function(rst){
			$("#result").append(":"+rst+"<br/>");
		});
	});
</script>