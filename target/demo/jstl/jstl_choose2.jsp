<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>학점 판정</title>
    </head>
    <body>
        <!-- 
        choose절을 이용하여 90이상 a
        80이상은 b, 70이상은 c, 나머지는 F 
        -->
        <c:choose>
            <c:when test="${true}">
                이름이 <b>${param.name}</b> 입니다.
            </c:when>
            <c:when test="${param.age >=20}">
                성인 입니다.
            </c:when>
            <c:otherwise>
                성인이 아닙니다.
            </c:otherwise>
         </c:choose>
        <br>
         <c:choose>
            <c:when test="${param.point >=90}">
                성적이 <b>A</b> 입니다.
            </c:when>
            <c:when test="${param.point >=80}">
                성적이 <b>B</b> 입니다.
            </c:when>
            <c:when test="${param.point >=70}">
                성적이 <b>c</b> 입니다.
            </c:when>
            <c:otherwise>
                성적이 <b>F</b> 입니다.
            </c:otherwise>
         </c:choose>

    </body>
</html>