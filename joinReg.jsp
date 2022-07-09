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
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String add = request.getParameter("add");
		String email = request.getParameter("email");
		
		ArrayList<Member> members = (ArrayList<Member>) application.getAttribute("mlist");
		application.setAttribute("mlist", members);
		members.add(new Member(id, pw, name, tel, add, email));
	%>
	
		<script>
			alert("회원가입이 완료되었습니다.");
		</script>
	<%
		response.sendRedirect("./join.jsp");
	%>	
</body>
</html>