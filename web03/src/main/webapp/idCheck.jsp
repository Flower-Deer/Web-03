<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//idCheck.jsp?id=hong
	String id = request.getParameter("id");
	String[] list = {"hong", "root", "admin", "kim"};
	String result = "가입 가능한 아이디 입니다.";
	for(String s : list){
		if(s.equals(id)){
			result = "이미 사용중 입니다. 사용 불가능 합니다.";
		}
	}
%>
<%= result %>
