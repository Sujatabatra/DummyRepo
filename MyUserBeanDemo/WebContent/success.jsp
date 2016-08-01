
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--<%User user=(User)session.getAttribute("user"); --%>
<jsp:useBean id="user" class="com.sujata.model.User"></jsp:useBean>
<h1>Welcome <%=user.getUsername() %> Login Successful!!!</h1>
<h1>Welcome <jsp:getProperty property="username" name="user"/> Login Successful!!!</h1>
</body>
</html>