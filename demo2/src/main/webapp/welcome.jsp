<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %> <%-- Đổi javax thành jakarta --%>
<%
    // Lấy session hiện tại
    HttpSession sessionUser = request.getSession(false);
    String username = (sessionUser != null) ? (String) sessionUser.getAttribute("username") : "Guest";
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .avatar {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 3px solid #fff;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100" style="background-color: #f8f9fa;">
<div class="text-center">
    <!-- Hiển thị ảnh đại diện -->
    <img src="assets/background.jpg" alt="Avatar" class="avatar">



    <h2 class="mb-4">Chào mừng,<%= username %>!</h2>
    <a href="logout.jsp" class="btn btn-danger">Đăng xuất</a>
</div>
</body>
</html>
