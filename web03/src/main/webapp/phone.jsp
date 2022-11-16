<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String tel = request.getParameter("tel");
//010-0000-0000 앞세클자를 추출하여 조건에 맞게 값을 할당
//010->1111, 011->2222, 나머지 ->3333
//substring(index) : index뒤를 모두 추출
//ex)tel.substring(6) -> 21234(6~end)
//substring(start,end+1) : start인덱스 부터 end 인덱스까지 추출

	String tel2 = tel.substring(0,3);

	//jsp는 servlet(java)코드로 변환되어서 처리, 
    //jsp의 모든 코드는 service()메서드안으로 자동 생성
	String result = ""; //쓰레기값 무조건 초기화!!!
	if(tel2.equals("010")){
		result = "1111";
	}else if(tel2.equals("011")){
		   result = "2222";  
	}else{
		   result = "3333";
	}

	//'랜덤'한 숫자 2 자리 만들어서 붙여줄 예정!!
	Random r = new Random();
	int no = r.nextInt(90) + 10; //0~89 + 10 => 99!!
	result += no; //"1111"+10=> 111110
	//자바는 연산시 하나라도 String이면 결합연산자로 사용!
%>
<%= result  %>