package pers.jing.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import pers.jing.entity.Category;
import pers.jing.entity.Product;
import pers.jing.service.ProductService;
import pers.jing.service.impl.ProductServiceImpl;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = -6995555787565085339L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService productService = new ProductServiceImpl();
		List<Product> hotProductList = productService.findHotProductList();
		List<Product> newProductList0 = productService.findNewProductList0();
		List<Product> newProductList2 = productService.findNewProductList2();
		List<Product> newProductList4 = productService.findNewProductList4();
		//List<Category> allCategoryList = productService.findAllCategoryList();
		request.setAttribute("hotProductList", hotProductList);
		request.setAttribute("newProductList0", newProductList0);
		request.setAttribute("newProductList2", newProductList2);
		request.setAttribute("newProductList4", newProductList4);
		// allCategoryList转换为JSON
		// request.setAttribute("allCategoryList", allCategoryList);
		/*Gson gson = new Gson();
		String allCategoryListJson = gson.toJson(allCategoryList);*/
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
