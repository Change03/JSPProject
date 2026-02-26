<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie"%>
<%
    /*
    1. cookie_login.jsp로 넘어온 아이디, 비밀 번호를 받아 처리
    2. id= abc이고, pw= 1234라면 로그인 성공으로 간주,
    로그인 성공시, 쿠키 생성 - (user_id,id)값을 가지는 쿠키
    3. 쿠키 문법을 사용하고 쿠키를 전송

    4. 만약 아이디, 비밀번호가 틀렸다면, cookie_login.jsp로 이동
    5. 로그인 성공했을 경우에는 cookie_welcom.jsp로 이동했을 경우
    "id님 환영합니다." 출력되게 합니다.(id는 실제id -> abc님 환영합니다.)
    쿠키를 사용해서 표시되게 해주세요.

    6. cookie_login.jsp에는 user_id 쿠키가 있는 경우에 로그인 아이디 입력 부분에 
    cookie에 있는 user_id값이 나오게 해주세요 
    idCheck 박스를 표시한 경우에는 역시 쿠키를 생성해서 추가해야합니다.
    "idCheck"로 생성해서 확인후에 user_id가 아이디 부분에 표시되어야합니다.
    단, 아이디 기억하기가 체크되어있을 경우에
    */
%>

<%
    request.setCharacterEncoding("UTF-8");

    // 1) 폼에서 넘어온 값 받기
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String idCheck = request.getParameter("idCheck"); // 체크되면 "y", 아니면 null

    if (id == null) id = "";
    if (pw == null) pw = "";

    // 2) 로그인 성공 조건: id=abc, pw=1234
    boolean loginOk = id.equals("abc") && pw.equals("1234");

    if (loginOk) {

        // 3) 로그인 성공 시 user_id 쿠키 생성(필수)
        Cookie userId = new Cookie("user_id", id);
        userId.setMaxAge(60 * 10);  // 10분(원하는대로 조절)
        userId.setPath("/demo");    // demo 아래에서 쿠키 보이게(중요)
        response.addCookie(userId);

        // 6) 아이디 기억하기 체크 여부에 따라 쿠키 처리
        if ("y".equals(idCheck)) {
            // 체크했으면 idCheck 쿠키와 user_id 쿠키 유지
            Cookie idCheckCookie = new Cookie("idCheck", "y");
            idCheckCookie.setMaxAge(180); // 7일
            idCheckCookie.setPath("/demo");
            response.addCookie(idCheckCookie);

            // user_id도 길게 유지하고 싶으면 여기서 maxAge를 더 길게 바꿔도 됨
            userId.setMaxAge(60 * 60 * 24 * 7); // 7일로 연장
            response.addCookie(userId);

        } else {
            // 체크 안 했으면 idCheck 쿠키 제거 + user_id 쿠키도 제거(아이디 기억하기 목적이라면)
            Cookie idCheckCookie = new Cookie("idCheck", "");
            idCheckCookie.setMaxAge(0);  // 삭제
            idCheckCookie.setPath("/demo");
            response.addCookie(idCheckCookie);

            Cookie deleteUserId = new Cookie("user_id", "");
            deleteUserId.setMaxAge(0);  // 삭제
            deleteUserId.setPath("/demo");
            response.addCookie(deleteUserId);
        }

        // 5) welcome 페이지로 이동
        response.sendRedirect("cookie_welcome.jsp");
        return;

    } else {
        // 4) 실패하면 로그인 페이지로
        response.sendRedirect("cookie_login.jsp");
        return;
    }
%>