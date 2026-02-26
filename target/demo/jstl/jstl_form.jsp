<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>jstl 테스트를 위한 form</title>
    </head>
    <body>
        <h2>if절 확인</h2>
        <!-- request 객체로 이름, 나이를 전달. name, age이름으로 전달-->
        <form action="jstlif.jsp">
            이름: <input type="text" name="name"><br>
            나이: <input type="text" name="age"><br>
            <input type="submit" value="확인">
        </form>

        <h2>choose절 확인</h2>
        <!-- request 객체로 이름, 나이를 전달. name, age이름으로 전달-->
        <form action="jstl_choose.jsp">
            이름: <input type="text" name="name"><br>
            나이: <input type="text" name="age"><br>
            <input type="submit" value="확인">
        </form>

        <h2>choose절 (else if) 확인</h2>
        <form action="jstl_choose2.jsp">
            이름: <input type="text" name="name"><br>
            나이: <input type="text" name="age"><br>
            점수: <input type="text" name="point"><br>
            <input type="submit" value="확인">
        </form>
    </body>
</html>