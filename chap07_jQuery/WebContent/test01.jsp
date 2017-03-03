<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<div id="view">샬롸샬롸</div>
<button id="bt">Button</button>
<script>
	console.log($("#view"));
	// 	$("#view") : document.getElementById("view");
	// 	$(".btn") : document.getElementsByClassName("btn");
	// 	$("p") : document.getElementsByTagName("p");

	$("#bt").click(function() {
		window.alert("bt")
		$.ajax({
			url : "/01ajax.jsp"
		}).done(function(txt){
			console.log(txt);
			$("#bt").html(txt);
		})
	});
</script>