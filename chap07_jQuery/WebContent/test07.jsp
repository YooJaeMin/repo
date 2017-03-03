<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
<h2>이벤트 활용</h2>
<hr/>
<div id="eff">
	<h2>약관 설명</h2>
	이런저런 샬라샬라
</div>

<hr/>
<c:forEach var="i" begin="1" end="3">
	<button id="bt_${i }">${i }번 버튼</button>
</c:forEach>
<script>
	$("#bt_1").click(function() {
		//window.alert("클릭!");
		//$("#eff").show(1000);
		$("#eff").slideDown(1000);
	});
	
	$("#bt_2").on("click",function(){
		//on 이벤트들은 on("on종류",function)형태로 처리 가능
		//$("#eff").hide(1000);
		$("#eff").slideUp(1000);
	});
	
	$("#bt_3").click(function(){
		$("#bt_1").trigger("click");
		//bt_1의 클릭 이벤트를 발생시킨것 처럼 효과줌
	});
	
</script>
<hr/>
input type="file" 의 모양이 안이쁨...
<input type="file" style="display:none;" id="f"/>
<button id="add" class="btn btn-danger">파일추가</button>
<script>
	$("#add").on("click",function(){
		$("#f").trigger("click");
	});
	//보통 트리거는 버튼의 모양을 이쁘게 만들어주고 해당 버튼 눌렀을때 file 인풋을 클릭하도록 설정
	
	$("#f").on("change",function(){
		window.alert($("#f").val());
	});
</script>