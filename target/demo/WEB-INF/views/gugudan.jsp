<%-- 서블릿 주석 : JSP에서 page 지시자는 현재 보여지는 페이지에 대한 설정 --%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<!DOCTYPE html> 
<html> 
    <head>
        <title>구구단 결과</title>
    </head> 
    <body>
        <% 
            Integer dan = (Integer)request.getAttribute("dan"); 
        %>
        <h2><%= dan%>단 출력 결과</h2> 
    <ul> 
        <% 
            List<String> results = (List<String>) request.getAttribute("results"); 
            for(String res : results) { 
        %> 
        <li><%= res %></li> 
        <% 
            } 
        %> 
    </ul> 
    <a href="index.jsp">처음으로</a> 
    </body> 
</html>