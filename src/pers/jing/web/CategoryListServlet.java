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
import pers.jing.service.ProductService;
import pers.jing.service.impl.ProductServiceImpl;
import pers.jing.utils.JedisPoolUtils;
import redis.clients.jedis.Jedis;

@WebServlet("/categoryList")
public class CategoryListServlet extends HttpServlet {
	private static final long serialVersionUID = 2809409966484172779L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService productService = new ProductServiceImpl();
		Jedis jedis = JedisPoolUtils.getJedis();
		String allCategoryListJson = jedis.get("allCategoryListJson");
		if (allCategoryListJson == null) {
			System.out.println("没有allCategoryListJson缓存，即将从数据库查询");
			List<Category> categoryList = productService.findAllCategoryList();
			// 转成JSON
			Gson gson = new Gson();
			allCategoryListJson = gson.toJson(categoryList);
			jedis.set("allCategoryListJson", allCategoryListJson);
		}
		response.setContentType("text/plain;charset=utf-8");
		response.getWriter().write(allCategoryListJson);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
