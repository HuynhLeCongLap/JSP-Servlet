<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %> <%-- Nếu dùng Java EE thì đổi jakarta thành javax --%>

<%
    // Xóa session
    HttpSession sessionUser = request.getSession(false);
    if (sessionUser != null) {
        sessionUser.invalidate(); // Hủy session
    }

    // Chuyển hướng về trang đăng nhập
    response.sendRedirect("login.jsp");
%>
