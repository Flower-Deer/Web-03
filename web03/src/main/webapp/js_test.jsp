<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idtest() {
		id = document.getElementById("id").value;
		alert("id = " + id);
		alert("글자 수 = " + id.length);
		result="";
		if (id.length >= 5){
			result="5글자 이상입니다. 유요!";
		}else {
			result="5글자 미만입니다. 재입력!!";
		}
		divtag = document.getElementById("result");
		divtag.innerHTML = result;
	}
	function pw() {
		pw = document.getElementById("pw").value;
		pw2 = document.getElementById("pw2").value;
		
		result = "불일치!!<img src=img/no.png>"
		
		if (pw == pw2) {
			result = "일치!!<img src =img/yes.png>"
		}
		divtag = document.getElementById("result")
		divtag.innerHTML = result
	}
	
</script>
</head>
<body>
아이디 : <input type="text" id="id" value="test">
<button onclick="idtest()" id="b1">글자 수 체크</button> <br>
패스워드 : <input type="text" id="pw" value="test"> <br>
패스워드2 : <input type="text" id="pw2" value="test">
<button onclick="pw()" id="b2">패스워드 동일</button><br>
<hr>
<div id="result"></div>
</body>
</html>