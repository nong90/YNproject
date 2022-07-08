<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/*공통 css*/
	ul{list-style: none; padding-left:0px;}
	
	/*join_box css*/
	.join_box{text-align: center;}
	.join_box input[type="text"]{width: 200px;padding: 10px; text-align:center;  border-radius: 10px; border: 1px solid #bbb;}
	.join_box input[type="password"]{width: 200px;padding: 10px; text-align:center; border-radius: 10px;border: 1px solid #bbb;}
	.join_box input[type= "button"]{width: 80px;padding: 10px;  border-radius: 10px;border: 1px solid #bbb;	}
	.join_box ul li{padding : 10px}
	.join_box .double input{margin-right:20px;}
	.join_box .double input[type="button"]{margin-left:20px;}
	.join_box .alone input{margin-right: 145px;}
	.join_box ul li input[type="submit"]{padding: 20px; font-size:20px;color:#fff;background: #363b9c;border: 1px solid #bbb;border-radius:10px;margin-top:20px}
	
	/*require css*/
	.require{border: 1px solid #000; width: 500px; margin: 0 auto;}

		
</style>
</head>
<body>
	<div>
		<div class="wrap">
			<div class="join_box">
				<h2>회원가입</h2>
				<form action="joinReg.jsp">
					<ul class="require">
						<p>필수입력</p>
						<li class="double">
							<input type="text" name="id" id="id" required placeholder="아이디"/>
							<label for="id"><input type="button" value="중복확인"/></label>
						</li>
						
						<li class="alone">
							<input type="password" name="pw" id="pw"  required placeholder="비밀번호"/>
						</li>
						
						<li class="double">
							<input type="password" name="pw1" id="pw1" required placeholder="비밀번호 확인"/>
							<label for="pw1"><input type="button" value="확인"/></label>
						</li>
						
						<li class="alone">
							<input type="text" name="name" id="name" required  placeholder="이름"/>
						</li>
						
						<li class="double">
							<input type="text" name="tel" id="tel" required placeholder="전화번호" />
							<label><input type="button" value="인증하기"/></label>
						</li>
					</ul>
					
					<ul>
						<li class="double">
							<input type="text" name="address" id="address" placeholder="주소"/>
							<label for="address"><input type="button" value="찾기"/></label>
						</li>
						
						<li class="alone">
							<input type="text" name="add" id="add" placeholder="상세주소"/>
						</li>
						
						<li class="alone">
							<input type="text" name="email" id="email" placeholder="이메일"/></span>
						</li>
						
						<li>
							<input type="submit" value="회원가입"/>
						</li>
					</ul>	
				</form>
			</div>
		</div>
	</div>
</body>
</html>