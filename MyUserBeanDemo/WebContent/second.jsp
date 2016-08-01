<%@page import="com.sujata.model.LoginDaoImpl"%>
<%@page import="com.sujata.model.LoginDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" scope="session" class="com.sujata.model.User">
</jsp:useBean>
<jsp:setProperty property="username" name="user" param="username"/>
<jsp:setProperty property="password" name="user" param="pwd"/>

<%LoginDao obj=new LoginDaoImpl();
if(obj.check(user))
{ %>
<jsp:forward page="./success.jsp"></jsp:forward>
<%} 
else { %>
<jsp:forward page="./failure.jsp"></jsp:forward>
<%} %>
</body>
</html>