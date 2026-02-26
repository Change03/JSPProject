<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EL을 이용한 파라미터 처리(생성)</title>
    </head>
    <body>
        <form action="el_param_ok.jsp" method="post">
            이름 : <input type="text" name="name"><br>
            아이디 : <input type="text" name="id"><br>
            비밀번호 : <input type="password" name="pw"><br>
            취미 선택 : <input type="checkbox" name="hobby" value="눕기">눕기
            <input type="checkbox" name="hobby" value="영화보기">영화보기
            <input type="checkbox" name="hobby" value="잠자기">잠자기
            <input type="checkbox" name="hobby" value="릴스보기">릴스보기<br>
            나이 : <input type="text" name="age"><br>
            <input type="submit" value="확인">
        </form>
    </body>
</html>