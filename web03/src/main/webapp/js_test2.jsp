<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function one() {
		id = prompt('id를 입력하세요')
		pw = prompt('pw를 입력하세요')
		if (id=='root' && pw=='1234') {
			location.href = "https://www.google.com/search?q=yes&tbm=isch&ved=2ahUKEwjVuoimpqX7AhXJTPUHHUMkAOMQ2-cCegQIABAA&oq=yes&gs_lcp=CgNpbWcQAzIFCAAQgAQyCAgAEIAEELEDMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6BAgjECc6CwgAEIAEELEDEIMBUOkHWJEMYMINaABwAHgAgAGMAYgB3AOSAQMwLjSYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=otBtY9XhGMmZ1e8Pw8iAmA4&bih=754&biw=1536"
		} else {
			location.href = "https://www.google.com/search?q=no&sxsrf=ALiCzsZ54zKcaXJl_aeDdZCCnIGgeNqlcw:1668141216848&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiwhqmlpqX7AhW3XmwGHShfAZcQ_AUoAXoECAIQAw&biw=1536&bih=754&dpr=1.25"
		}
	}
	function two() {
		name = prompt('사이트 이름 입력')
		if (name == '네이버') {
			location.href = "https://www.naver.com"
		}else if (name =='구글') {
			location.href = "https://www.google.com"
		}else if (name =='다음') {
			location.href = "https://www.daum.net"
		}else {
			alert('일치하는 사이트가 없습니다.')
		}
	}
</script>
</head>
<body style="background: yellow;">
<h3 style="color: green;">사이트 연결 테스트</h3>
<button onclick="one()">로그인 처리 버튼</button>
<button onclick="two()">사이트 이동 버튼</button>
</body>
</html>