<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>장바구니 계산기</title>
</head>
<body>

<h2>장바구니 계산기</h2>

<c:choose>
  <%-- 상품이 없을 때 --%>
  <c:when test="${empty products}">
    <p>장바구니가 비어있습니다.</p>
  </c:when>

  <%-- 상품이 있을 때 --%>
  <c:otherwise>
    <table border="1" cellpadding="6" cellspacing="0">
      <thead>
        <tr>
          <th>No</th>
          <th>상품명</th>
          <th>수량</th>
          <th>합계</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="p" items="${products}" varStatus="st" end="3">
          <tr>
            <td>${st.count}</td>
            <td>${p.name}</td>
            <td>${p.amount}</td>
            <td><fmt:formatNumber value="${p.price * p.amount}" type="number" /></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </c:otherwise>
</c:choose>

</body>
</html>