<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Arrays" %>

<%
    request.setCharacterEncoding("UTF-8");

    StringBuffer url = request.getRequestURL();
    String uri = request.getRequestURI();
    String path = request.getContextPath();
    String query = request.getQueryString();
    String remoteIp = request.getRemoteAddr();   // addr 대신 remoteIp로

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String addrParam = request.getParameter("addr"); // 주소 파라미터는 addrParam

    String[] intros = request.getParameterValues("intro"); // checkbox 배열
    String major = request.getParameter("major");
    String phone = request.getParameter("phone");

    // null 안전 처리
    String introsText = (intros == null) ? "선택 없음" : Arrays.toString(intros);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>request 객체</title>
</head>
<body>
    url 주소 : <%= url %><br>
    uri 주소 : <%= uri %><br>
    컨텍스트경로 : <%= path %><br>
    쿼리값 : <%= query %><br>
    접속 IP : <%= remoteIp %><br>
    <hr>
    아이디 : <%= id %><br>
    비밀번호 : <%= pw %><br>
    이름 : <%= name %><br>
    주소 : <%= addrParam %><br>
    관심분야 : <%= introsText %><br>
    전공 : <%= major %><br>
    통신사 : <%= phone %><br>
</body>
</html>