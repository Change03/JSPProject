<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSTL 사용 1</title>
    </head>
    <body>
        <%-- JSTL을 이용한 출력 : EL표기법, JSP 표현식과 같은 기능 --%>
        <%-- 변수 선언--%>
        <c:set var="firstjstl" value="첫번째 jstl연습" scope="page"></c:set>
            <%-- 화면 출력--%>
            <c:out value= "${firstjstl}" />
            <c:if test="true">
                ${"if가 true 인 경우에 실행됩니다."}
            </c:if>
    </body>
</html>