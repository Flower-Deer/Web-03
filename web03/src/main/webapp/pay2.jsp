<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String id1 = request.getParameter("id1");
    	String id2 = request.getParameter("id2");
    	String pay = request.getParameter("pay");
    	String num = request.getParameter("num");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	고유 ID = <%= id1 %> 입니다. <br>
	상점 거래 ID = <%= id2 %> 입니다. <br>
	결제 금액 = <%= pay %> 입니다. <br>
	카드 승인번호 = <%= num %> 입니다.
</body>
</html>