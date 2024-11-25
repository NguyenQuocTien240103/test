<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Screen</title>
</head>
<body>
    <% 
        String temp = "temp"; 
        session.setAttribute("temp", temp); 
    %>
    <form name="form1" action="checkLogin.jsp" method="post">
        Username: <input type="text" name="username" /><br />
        Password: <input type="password" name="password" /><br />
        <input type="submit" value="Login" />
        <input type="reset" value="Reset" />
    </form>
</body>
</html>
