<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome Screen</title>
</head>
<body>
    <% 
    String username = request.getParameter("username"); 
    String address = (String)request.getAttribute("address"); 
    String temp = (String)session.getAttribute("temp");
    %>
    Welcome: <%=username%>! <br>
	You are living at <%=address%> <br>
	Temp = <%=temp%> 
</body>
</html>