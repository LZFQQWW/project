package pers.jing.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.jing.service.UserService;
import pers.jing.service.impl.UserServiceImpl;

@WebServlet("/active")
public class ActiveServlet extends HttpServlet {

	private static final long serialVersionUID = 476303430341397706L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String code = request.getParameter("code");
		UserService userService = new UserServiceImpl();
		userService.active(code);
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
