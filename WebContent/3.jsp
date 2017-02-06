<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.itcast.bean.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String data="abc";
		session.setAttribute("data", data);
	%>
	${data }
	<%
		Person p=new Person();
		p.setName("wuli");
		request.setAttribute("person", p);
	%>
	${person.name }
	<%
		List persons=new ArrayList();
		persons.add(p);
		request.setAttribute("persons", persons);
	%>
	${persons[0].name }
	<%
		Map map=new HashMap();
		map.put("p1", p);
		request.setAttribute("map", map);
	%>
	${map.p1.name }
	
</body>
</html>