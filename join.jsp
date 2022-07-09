<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList, join.Member" %>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	.join_box #member_addr{width: 250px;margin-right: 25px;}
	.join_box #add{width: 335px; margin-right: 15px}
	.join_box #member_post{width:50px; margin-left:0px}
	.join_box #email{width:335px; margin-right:15px}
	/*require css*/
	.require{border: 1px solid #000; width: 500px; margin: 0 auto;}
	

		
</style>
<%
	ArrayList<Member> mlist = new ArrayList<Member>();
	mlist.add(new Member("admin","1111","관리자", "ㅇㅇㅇ", "ㅇㅇㅇ","ㅇㅇㅇ" ));
	application.setAttribute("mlist", mlist);	
%>

<script>
	function idCheck(){
		var idDuplicateValue = document.getElementById("id").value;
		<%
		for(int i = 0; i < mlist.size(); i++){
		%>
		var id = "<%=mlist.get(i).getId()%>";
		if(idDuplicateValue == id){
			alert('중복된 아이디 입니다.');
		}else{
			alert('사용가능한 아이디 입니다.');
		}
		<%}%>
	}
	

</script>
<script>
	
	
	function checkPassword(){
		var pw1 = document.getElementById('pw').value;
		var pw2 = document.getElementById('pw1').value;
		if(pw1.length < 6) {
            alert('입력한 글자가 6글자 이상이어야 합니다.');
            return false;
        }
        
        if( pw1 != pw2 ) {
          alert("비밀번호가 일치 하지 않습니다.");
          return false;
        } else{
          alert("비밀번호가 일치합니다");
          return true;
        }
	}
	
	function findAddr(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	
	        	console.log(data);
	        	
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var jibunAddr = data.jibunAddress; // 지번 주소 변수
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('add').value;
	            if(roadAddr !== ''){
	                document.getElementById("member_addr").value = roadAddr;
	            } 
	            else if(jibunAddr !== ''){
	                document.getElementById("member_addr").value = jibunAddr;
	            }
	        }
	    }).open();
	}
</script>
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
							<label for="id"><input type="button" value="중복확인" onclick="idCheck()"/></label>
						</li>
						
						<li class="alone">
							<input type="password" name="pw" id="pw"  required placeholder="비밀번호"/>
						</li>
						
						<li class="double">
							<input type="password" name="pw1" id="pw1" required placeholder="비밀번호 확인"/>
							<label for="pw1"><input type="button" value="확인" onclick="checkPassword()"/></label>
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
						  <input id="member_addr" type="text" placeholder="주소" readonly> 
						  <input id="member_post" type="button" placeholder="Zip Code" readonly onclick="findAddr()" value="찾기"> 						  
						</li>
						<li class="alone">
							<input type="text" name="add" id="add" placeholder="상세주소">
							
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