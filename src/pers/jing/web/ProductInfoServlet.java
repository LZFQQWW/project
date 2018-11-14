package pers.jing.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.jing.entity.Product;
import pers.jing.service.ProductService;
import pers.jing.service.impl.ProductServiceImpl;

@WebServlet("/productInfo")
public class ProductInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 3331864171075036073L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pid = request.getParameter("pid");
		ProductService productService = new ProductServiceImpl();
		Product product = productService.findProductById(pid);
		request.setAttribute("product", product);
		request.getRequestDispatcher("/product_info.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
