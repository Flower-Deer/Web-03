<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String m = request.getParameter("money");
	int money = Integer.parseInt(m);
	String chc = request.getParameter("choice");
	int choice = Integer.parseInt(chc);
	//"1" --> equals()메서드 이용 비교
	if(choice==1){
		money -= 1000;
	}else if(choice==2){
		money += 1000;
	}
	
%>
<%= money %>