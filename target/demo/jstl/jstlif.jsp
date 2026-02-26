
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>jstl if 사용</title>
    </head>
    <body>
        <%-- if문 사용
        prefix로 taglib을 지정해서 해당 태그에 있는 기능을 호출
        자바의 기본 제어 관련 기능은 core에 존재하고 있어요.
        "c"라는 프리픽스를 사용.    <c:if></c:if>       
        --%>
        
        <%--
        (사용 방법) - 자바의 단순 if문
        <c:if test="(조건문)">
            (if가 참인 경우 실행할 부분)
        </c:if>
        --%>
        <c:if test="true">
            <b>test속성의 조건이 참이기 때문에, 무조건 실행하는 문장</b>
        </c:if>
        <c:if test="false">
            <b>test속성의 조건이 참이기 때문에, 무조건 실행하지 않는 문장</b>
        </c:if>
        <br>
        <%-- request 객체에 있는 name, age를 통한 if 동작 확인 --%>
        <c:if test="${param.name eq '홍길동'}">
            이름이 홍길동입니다.
        </c:if>

        <c:if test="${param.name eq '이순신'}">
            이름이 이순신입니다.
        </c:if>

        <c:if test="true">
            이름이 ${param.name}입니다.
        </c:if>
        <br>
        <c:if test="${param.age >= 20}">
            성인입니다.
        </c:if>
        <c:if test="${param.age < 20}">
            미성년자입니다.
        </c:if>
    </body>
</html>