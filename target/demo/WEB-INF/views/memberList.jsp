<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List, DTO.Member" %>

<html>
<head>
    <title>회원 목록</title>
</head>
<body>

<h2>회원 목록 대시보드</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>이름</th>
        <th>Email</th>
        <th>상태</th>
    </tr>

<%
    List<Member> members = (List<Member>) request.getAttribute("members");
    for (Member m : members) {
%>
    <tr>
        <td><%= m.id() %></td>
        <td><%= m.name() %></td>
        <td><%= m.email() %></td>
        <td><%= m.active() ? "활성" : "비활성" %></td>
    </tr>
<%
    }
%>

</table>

</body>
</html>