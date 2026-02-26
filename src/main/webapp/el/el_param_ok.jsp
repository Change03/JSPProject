<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EL을 이용한 파라미터 처리(받기)</title>
    </head>
    <body>
        <h2>el_param.jsp로 받은 결과</h2>
       <%-- el에서 parameter값은 param 내장 객체--%>
            이름: ${param.name}<br>
            아이디: ${param.id}<br>
            비밀번호:${param.pw}<br>
            취미 : ${paramValues.hobby}, ${paramValues.hobby[0]}<br>
            나이(만-생일안지난) : ${param.age-2}<br>
            
    </body>
</html>