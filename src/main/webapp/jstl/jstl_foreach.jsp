<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>jstl foreach 사용</title>
    </head>
    <body>
        <%--1~100 까지의 합--%>
        <%  // 스크립틀릿
            //1~100
            int sum =0;
            for(int i= 1; i<=100; i++){
                sum +=i;
            }
        %>
        결과 : <%=sum%><br>
        <%--jstl--%>
        <c:set var="sum" value="0" />
        <c:forEach var="i" begin="1" end="100" step="1">
            <c:set var="sum" value="${sum+i}" />
        </c:forEach>
        결과 : ${sum}<br>
        결과 : <c:out value="${sum}" /><br>
        <hr>
        <h2>구구단 3단 출력</h2>
        <c:forEach var="i" begin="1" end="9" step="1">
            3x${i} = ${i*3}<br>
        </c:forEach>

        <h2>구구단 전체 출력</h2>
        <c:forEach var="y" begin="1" end="9" step="1">
            <h3>${y}단</h3>
            <c:forEach var="i" begin="1" end="9" step="1">
            ${y}x${i} = ${i*y}<br>
        </c:forEach>
        <br>
        </c:forEach>
        
        <h2>향상된 for문</h2>
        <%
            int[] arr = {1,2,3,4,5,6};
            for(int a: arr){
                out.print(a+" ");
            }
        %>
        <br>
        <c:set var="arr2" value="<%=new int[]{1,2,3,4,5,6} %>" />
        <h3>jstl을 이용한 향상된 for문 출력</h3>
        <c:forEach var="i" items="${arr2}">
            ${i} &nbsp;
        </c:forEach>
        <br>
        <%-- forTokens 태그
        자바의 StringTokenizer를 jstl로 사용하기 위해서 구현된 것
        --%>
        <c:forTokens var="abc" items="안녕/하세요/지금은/JSP시간/입니다." delims="/">
            ${abc}<br>
        </c:forTokens>
        
        <%--
            //자바의 경우
            try{
                검증할 내용
            }catch(Exception e){
                에러 발생시 처리할 내용
            }
        --%>
        <%--jstl로 구현한 경우--%>>
        <c:catch var="abc">
            검증할 내용이 있는 영역
        </c:catch>
            에러 내용은 ${abc}로 빼서 처리함.
        
        

    </body>
</html>