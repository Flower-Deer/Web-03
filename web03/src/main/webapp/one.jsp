<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String one = request.getParameter("one");
	float one2 = Float.parseFloat(one);
	
	one2 /= 1323.5;
%>
<%= one2 %>