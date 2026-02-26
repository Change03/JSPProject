package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import DTO.Member;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/members.do")
public class MemberServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Member> list = new ArrayList<>();

        // 10명 생성
        for (int i = 1; i <= 10; i++) {
            list.add(new Member(
                    i,
                    "회원" + i,
                    "user" + i + "@test.com",
                    i % 2 == 0
            ));
        }

        req.setAttribute("members", list);

        req.getRequestDispatcher("/WEB-INF/views/memberList.jsp")
           .forward(req, resp);
    }
}