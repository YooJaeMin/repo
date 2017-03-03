<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h3>DOM 제어</h3>

- html() ,val()
<span id="sp">text</span> : <input type="text" id="t"/><hr/>

<button id="html">html()</button> ||
<button id="val">val()</button>
<script>
	$("#html").click(function(){
		$("#sp").html("텍스트");
	});
	$("#val").click(function(){
		window.alert($("#t").val());
		$("#t").val("");
	});
</script>
<hr/>
-attr, prop
<hr/>
<textarea rows="3" cols="30" id="sample"></textarea>
<hr/>
<button id="attr">attr</button> || <button id="prop">prop</button>
<hr/>
<script>
	$("#attr").click(function(){
		var r = $("#sample").attr("rows");
		$("#sample").attr("cols",50);
		console.log(r);
		console.log($("#sample").attr("disabled"));
	});
	
	$("#prop").click(function(){
		var r = $("#sample").prop("disabled");
		console.log(r);
		$("#sample").prop("disabled",true);

		console.log($("#sample").prop("disabled"));
	});
</script>