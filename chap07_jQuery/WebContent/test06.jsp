<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
<h1>약관</h1>
<hr/>
아래의 모든 약관에 동의합니다.<input id="all" type="checkbox"/>
<hr/>
<div id="area1" style="height:200; ">
	<h2>이용 약관</h2>
</div>
아래의 약관에 동의합니다.<input id="check1" type="checkbox"/>
<hr/>
<div id="area2" style="height:200; ">
	<h2>위치 이용 약관</h2>
</div>
아래의 약관에 동의합니다.<input id="check2" type="checkbox"/>
<hr/>
<button id="next" disabled class="btn btn-danger">다음으로</button>

<script>
	$("#all").on("click",function(){
		if($("#all").prop("checked")==true){
			$("#check1").prop("checked",true);
			$("#check2").prop("checked",true);
			$("#area1").fadeOut();
			$("#area2").fadeOut();
		} else{
			$("#check1").prop("checked",false);
			$("#check2").prop("checked",false);
			$("#area1").fadeIn();
			$("#area2").fadeIn();
		}
		checker();
	});
	$("#check1").on("click",function(){
		if($("#check1").prop("checked") == true){
			$("#area1").fadeOut();
		} else {
			$("#area1").fadeIn();
		}
		checker();
	});
	$("#check2").on("click",function(){
		if($("#check2").prop("checked") == true){
			$("#area2").fadeOut();
		} else {
			$("#area2").fadeIn();
		}
		checker();
	});
	
	function checker(){
		if($("#check1").prop("checked") == true && $("#check2").prop("checked") == true){
			$("#next").prop("disabled",false);
		}
		else {
			$("#next").prop("disabled",true);
		}
	}
	
</script>