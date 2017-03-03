<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div style="margin:5%" align="center">
	<button id="b1" class="btn">버튼</button>
	
	<div style="margin:5%" id="result"></div>
</div>
<script>
	$("#b1").on("click", function() {
		$("#result").html("");
		$.ajax({
			"url" : "/08ajax.jsp",
			"method" : "post",
			"data" : {
				"q" : "query",
				"v" : "value"
			}
		}).done(function(rst) {
			$("#result").append("id : " + rst.id + "<br/>");
			$("#result").append("pass : " + rst.pass + "<br/>");
			$("#result").append("age : " + rst.age + "<br/>");
			$("#result").append("alive : " + rst.alive + "<br/>");
			$("#result").append("hobby : " + rst.hobby + "<br/>");
		})
	});
</script>
