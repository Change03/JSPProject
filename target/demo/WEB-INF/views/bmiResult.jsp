<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>BMI 결과</title>
</head>
<body>
  <h2>검사 결과</h2>

  <p>BMI 지수: <strong><%= String.format("%.2f", (Double)request.getAttribute("bmi")) %></strong></p>
  <p>판정 상태: <strong><%= (String)request.getAttribute("status") %></strong></p>

  <hr>

  <a href="<%= request.getContextPath() %>/bmiForm.html">다시 계산하기</a>
</body>
</html>