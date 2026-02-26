package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import DTO.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cartList.do")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Product> products = new ArrayList<>();

        // 상품 10개 생성
        for (int i = 1; i <= 10; i++) {
            products.add(new Product(
                    "상품" + i,
                    i * 1000,
                    i   // 수량
            ));
        }

        // ✅ JSP에서 사용할 이름으로 넘기기
        req.setAttribute("products", products);

        req.getRequestDispatcher("/WEB-INF/views/cartSummary.jsp")
                .forward(req, resp);
    }
}