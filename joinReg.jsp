<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.ArrayList, join.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String add = request.getParameter("add");
		String email = request.getParameter("email");
		
		ArrayList<Member> mlist = new ArrayList<Member>();
		for(Member m : mlist){
			m.setId(id);
			m.setPw(pw);
			m.setName(name);
			m.setTel(tel);
			m.setAdd(add);
			m.setEmail(email);
			
			mlist.add(new Member(id, pw, name, tel, add, email));
		}
	%>
	
		<script>
		alert("회원가입이 완료되었습니다.");
		</script>
	<%
		response.sendRedirect("./login.jsp");
	%>	
		
</body>
</html>