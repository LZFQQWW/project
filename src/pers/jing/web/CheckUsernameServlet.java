package pers.jing.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.jing.service.UserService;
import pers.jing.service.impl.UserServiceImpl;

@WebServlet("/checkUsername")
public class CheckUsernameServlet extends HttpServlet {

	private static final long serialVersionUID = -1484181975980156429L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		UserService userService = new UserServiceImpl();
		Boolean isExist = userService.checkUsername(username);
		// ajax需要返回的数据类型是JSON
		String json = "{\"isExist\":" + isExist + "}";
		response.getWriter().write(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
