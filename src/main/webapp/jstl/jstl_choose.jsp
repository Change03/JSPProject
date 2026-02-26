<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>jstl choose 1</title>
    </head>
    <body>
        <!-- choose의 자식으로 오는 태그 c:when, c:otherwise-->
         <c:choose>
            <c:when test="${param.name eq '홍길동'}">
                이름이 <b>홍길동</b> 입니다.
            </c:when>
            <c:when test="${param.age >=20}">
                성인 입니다.
            </c:when>
            <c:otherwise>
                홍길동도 아니고, 성인도 아닙니다.ㅏ
            </c:otherwise>
         </c:choose>
    </body>
</html>