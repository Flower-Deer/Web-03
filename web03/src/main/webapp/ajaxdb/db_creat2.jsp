<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    	//1.보낸 데이터를 받자.
    	//db_creat.jsp?id=1&email=aaa@a.com&car=honda
    	String id = request.getParameter("id");
    	String name = request.getParameter("name");
    	String company = request.getParameter("company");
    	String country = request.getParameter("country");
    	
    	//2.JDBC프로그래밍
    	//2-1)드라이버 설정
    	//2-2)db연결(url,id,pw)
    	//2-3)SQL문 객체 생성
    	//2-4)SQL문을 전송.
    	//3.결과를 보내자.
    	//jsp에서 단축 import키 : 클릭하고 ctrl + shift + m
    	Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		Connection con = DriverManager.getConnection(url, user, password); // Connection

		String sql = "insert into DRUG values (?, ?, ?, ?)";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id); // 1번 물음표에 id에 저장해놓은 값을 스트링으로 넣어줘!
		ps.setString(2, name); // 2번 물음표에 pw에 저장해놓은 값을 스트링으로 넣어줘!
		ps.setString(3, company); // 3번 물음표에 name에 저장해놓은 값을 스트링으로 넣어줘!
		ps.setString(4, country);
	
		int result = ps.executeUpdate();
		
		con.close();
		ps.close();
    %>

<!-- ajax호출시 html 필요 x 아래 모두 지워줌 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>	-->