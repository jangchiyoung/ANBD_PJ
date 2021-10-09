<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function invalidCheck(){
	//dom트리에서 name속성값이 id인 객체찾기
	var inputIdObj = document.querySelector("input[name=id]");
	//dom트리에서 name속성값이 pwd인 객체찾기
	var inputPwdObj = document.querySelector("input[name=pwd]");

	if(inputIdObj.value.length >10){
		alert("ID는 최대10자리까지만 가능합니다.");
		inputIdObj.focus();
		return false;
	}
	var rePwd1 = /\W/; //특수문자용 정규식만들기 /  /
	var rePwd2 = /\w/; //문자와숫자,_용 정규식
	//정규식확인하는 메서드 : test()
	if(!rePwd1.test(inputPwdObj.value)){
		alert("비밀번호는 특수문자를 포함하세요.");
		inputPwdObj.focus();
		return false;
	}
	if(!rePwd2.test(inputPwdObj.value)){
		alert("영문또는 숫자를 포함하세요.")
		inputPwdObj.focus();
		return false;
	}
	return true;
}
function init(){
	//dom트리에서 id속성값이 btLogin인 객체찾기
	var btLoginObj = document.querySelector("#btLogin");
	var formObj = document.querySelector("form");
	formObj.addEventListener("submit",function(){
		var requestURL = "login1.do";
		this.action=requestURL;
		this.method='post';
		this.submit();
	});
	/* btLoginObj.addEventListener("click", function(e){
		if(invalidCheck()){
			var requestURL = "login.do";
			//dom트리에서 form객체찾기
			var formObj = document.querySelector("form");
			formObj.action=requestURL;
			formObj.method='post';
			formObj.submit();//????
		}
		e.preventDefault();
	});	 */
}
//window의 load이벤트발생감시
window.addEventListener("load", init);
</script>
</head>
<body>
<div>
<form>
ID : <input name="id"><br>
PWD : <input type="password" name="pwd"><br>
<button id="btLogin">로그인</button> &nbsp;&nbsp;
<button id="btSignup">가입</button>
</form>
</div> 
</body>
</html>