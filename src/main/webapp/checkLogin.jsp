<%@ page language="java" import="javax.servlet.RequestDispatcher"%>
<%@ page language="java" import="javax.servlet.ServletException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSetMetaData" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    String address = "192 Nguyen Luong Bang"; 
    // Truy cập vào DB để kiểm tra username và password có đúng hay không?
    boolean ktra = false;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DULIEU", "root", "");
        Statement stmt = conn.createStatement();
        String sql = "SELECT * FROM admin";
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            if (username.equals(rs.getString(1)) && password.equals(rs.getString(2))) {
                ktra = true;
                break;
            }
        }
    } catch (Exception e) {
        System.out.println(e);
    }

    if (ktra == true) {
        // Thành công: Đi về trang welcome.jsp
        request.setAttribute("address", address);
        RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
        rd.forward(request, response);
    } else {
        // Thất bại: Đi về trang login.jsp
        response.sendRedirect("login.jsp");
    }
%>
