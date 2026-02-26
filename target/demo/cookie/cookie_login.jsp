<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie"%>

<%
    String savedId = "";
    boolean checked = false;

    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("user_id".equals(c.getName())) {
                savedId = c.getValue();
            } else if ("idCheck".equals(c.getName()) && "y".equals(c.getValue())) {
                checked = true;
            }
            // if(c.getName().equals("user_id")){
            //     response.sendRedirect("cookie_welcome.jsp")
            // }
        }
    }

    // idCheck가 y일 때만 savedId를 입력칸에 보여주기
    if (!checked) {
        savedId = "";
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cookie Login</title>
    <style>
        .wrap{ width:257px; margin: 0 auto; text-align: center; }
        .btn{ width:60px; height: 50px; background-color : aqua; }
    </style>
</head>
<body>
    <div class="wrap">
        <form action="cookie_login_ok.jsp" method="post">
            <table border="1">
                <tr>
                    <td>
                        <input type="text" name="id" placeholder="아이디" value="<%= savedId %>">
                    </td>
                    <td rowspan="2">
                        <input type="submit" value="로그인" class="btn">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="pw" placeholder="비밀번호">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="idCheck">아이디 기억하기</label>
                        <input type="checkbox" id="idCheck" name="idCheck" value="y" <%= checked ? "checked" : "" %> >
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>