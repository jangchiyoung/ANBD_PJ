<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/login.css?v=3">
<title>로그인</title>
</head>
<body>
<section>
		<div>
			<form action="loginAction.do" method="post">
				<input type="text" name="userid" placeholder="아이디(이메일) 입력하세요.">
				<input type="password" name="password" placeholder="비밀번호 입력하세요.">
				<input type="submit" value="Login"> <input type="button"
					value="HOME" onclick="loaction.href= './'">
			</form>
		</div>
	</section>


</body>
</html>