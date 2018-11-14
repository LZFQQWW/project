package pers.jing.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.jing.entity.PageBean;
import pers.jing.entity.Product;
import pers.jing.service.ProductService;
import pers.jing.service.impl.ProductServiceImpl;

@WebServlet("/productListByCid")
public class ProductListByCidServlet extends HttpServlet {
	private static final long serialVersionUID = 7341537431972079557L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService productService = new ProductServiceImpl();
		String cid = request.getParameter("cid");
		String page = request.getParameter("currentPage");
		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}
		int currentCount = 6;
		PageBean<Product> pageBean = productService.findProductListByCid(cid, currentPage, currentCount);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("cid", cid);
		request.getRequestDispatcher("/product_list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
