<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.ArrayList, join.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /*공용 css*/
    ul{list-style: none; padding-left:0px;}
    a{text-decoration: none; color: black}

    /*login css*/
    .login{text-align: center;}
    .login ul{width: 400px;margin: 0 auto;}
    .login ul li{padding: 10px;}
    .ligin .flex{display: flex;}

    .login input{padding: 15px; border-radius: 10px; border: 1px solid #bbb;}
    .login input::placeholder{color: black}
    .login input[type="text"]{width:300px; text-align: center; color: #000;}
    .login input[type="password"]{width:300px; text-align: center;}

    .login .id_pw_search{text-align: right;font-size: 11px;padding-right: 50px;}
    .login .id_pw_search span{font-size: 11px}

    .login .login_button span{padding: 0px 20px;}
    .login .login_button span input{width: 120px;}
    .login .login_button span input[type="button"]{background: #363b9c; color:#fff}

    .login .kakao p{background: #F7E600; width: 300px;margin:0 auto; padding:10px; border-radius: 10px;}
    .login .kakao a{color:#3A1D1D;}
    
    .login .naver p{background: #2db400; width: 300px;margin:0 auto; padding:10px; border-radius: 10px;color:#fff}
    .login .naver a{color:#fff}
</style>

</head>
<body>



<div>
    <div class="wrap">
        <div class="login">
            <h2>LOGIN</h2>
            <ul>
                <form action="loginReg.jsp">                    
                    <li><input type="text" name="id" id="id" placeholder="아이디" required></li>
                    <li><input type="password" name="pw" id="pw" placeholder="비밀번호" required></li>
                    <li class="id_pw_search"><a href=""><span>아이디 찾기</span></a> / <a href=""><span>비밀번호 찾기</span></a></li>
                    <li class="login_button">
                        <span><input type="submit" value="로그인"></span>
                        <span><input type="button" value="회원가입"></span>
                    </li>
                </form>
                <li class="kakao"><p><a href="">카카오톡으로 로그인 하기</a></p></li>
                <li class="naver"><p><a href="">네이버로 로그인 하기</a></p></li>
        </ul>
        </div>
    </div>
</div>
</body>
</html>