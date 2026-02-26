package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bmi.do")
public class BMIServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        // 1) 파라미터 받기
        String heightStr = req.getParameter("height"); // cm
        String weightStr = req.getParameter("weight"); // kg

        double heightCm = Double.parseDouble(heightStr);
        double weightKg = Double.parseDouble(weightStr);

        // 2) BMI 계산: kg / (m^2)
        double heightM = heightCm / 100.0;
        double bmi = weightKg / (heightM * heightM);

        // 3) 판정
        String status;
        if (bmi < 18.5) status = "저체중";
        else if (bmi < 23.0) status = "정상";
        else if (bmi < 25.0) status = "과체중";
        else if (bmi < 30.0) status = "비만";
        else status = "고도비만";

        // 4) 뷰로 넘길 값 세팅
        req.setAttribute("bmi",String.format("%.2f", bmi) );
        req.setAttribute("status", status);

        // 5) JSP로 forward
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/bmiResult.jsp");
        rd.forward(req, resp);
    }

    // (선택) GET으로 들어오면 폼으로 보내고 싶으면:
    @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
    resp.sendRedirect(req.getContextPath() + "/bmiForm.html");
}
}