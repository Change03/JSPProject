<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%
    /*
    1. Date 클래스를 이용해서 페이지에 접근한 시간 정보를 YYYY년 MM월 DD일 형태로 생성
     해당 날짜 형식으로 문자열을 show라는 이름을 가진 쿠키로 생성
    2. 클라이언트에 전달.
    */
   // 날짜 생성
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cookie01 테스트</title>
    </head>
    <body>
        <a href="cookie02.jsp">쿠키에 저장된 값을 확인</a>
    </body>
</html>