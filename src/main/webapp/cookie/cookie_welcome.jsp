<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie"%>

<%
    // user_id 쿠키 읽기
    String userId = null;
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("user_id".equals(c.getName())) {
                userId = c.getValue();
                break;
            }
        }
    }

    // user_id 쿠키 없으면 로그인 페이지로 보내기(보안/흐름상 자연스러움)
    if (userId == null || userId.trim().isEmpty()) {
        response.sendRedirect("cookie_login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cookie Welcome</title>
</head>
<body>
    <h2>로그인 성공</h2>
    <p><b><%= userId %>님 환영합니다.</b></p>
    <a href="cookie_login.jsp">로그인 화면으로 이동</a>

    <hr>

    <%
        out.println("<b>out 객체를 사용한 화면에 출력입니다.</b><br>");
    %>
    <%= "<b>표현식으로 값을 출력해봅니다.</b>" %>
</body>
</html>