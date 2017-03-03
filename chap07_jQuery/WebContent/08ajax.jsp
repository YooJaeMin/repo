<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	System.out.println(request.getParameter("q"));
	System.out.println(request.getParameter("v"));
	Map map = new HashMap();
	map.put("id", "john0212");
	map.put("pass", "1111");
	map.put("age", 20);
	map.put("alive", true);
	map.put("hobby", new String[]{"독서","농구","프로그래밍","드라마"});
	ObjectMapper om = new ObjectMapper();
	String str = om.writeValueAsString(map);
	out.println(str);
%>