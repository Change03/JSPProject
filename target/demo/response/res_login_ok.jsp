<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    // null 방지 (입력 안 하면 NPE 터질 수 있음)
    if (id == null) id = "";
    if (pw == null) pw = "";

    if (id.equals("abc1234")) {
        if (pw.equals("asd123")) {
            // 로그인 성공
            response.sendRedirect(request.getContextPath() + "/response/login_welcome.jsp");
        } else {
            // 비밀번호 틀림
            response.sendRedirect(request.getContextPath() + "/response/login_pw_fail.jsp");
        }
    } else {
        // 아이디 틀림
        response.sendRedirect(request.getContextPath() + "/response/login_id_fail.jsp");
    }
%>