<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" class="com.itcast.bean.Person" scope="session">
	</jsp:useBean>
	<jsp:setProperty property="name" name="p" value="xxxx"/>
	<%
		out.write(p.getName());
	%>
	<br/>
	<jsp:setProperty property="name" name="p" param="name"/>
	<jsp:setProperty property="age" name="p" param="age"/>
	<%--支持八种基本数据类型 --%>
	<jsp:setProperty property="birthday" name="p" param="<%= new Date(request.getParameter("birthday")) %>"/>
	<%= p.getName() %> <br/>
	<%= p.getAge() %> <br/>
	<%= p.getBirthday() %> <br/>
	
	<%="------------------------------" %>
	<%--用所有请求参数为Bean赋值--%>
	<jsp:setProperty property="*" name="p"/>
</body>
</html>