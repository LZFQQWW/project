package pers.jing.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import pers.jing.entity.User;
import pers.jing.service.UserService;
import pers.jing.service.impl.UserServiceImpl;
import pers.jing.utils.MailUtils;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = -4364671375185307530L;

	private UserService userService = new UserServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 读取客户端发送的显示的数据
		User user = new User();
		try {
			BeanUtils.populate(user, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		user.setUid(UUID.randomUUID().toString());
		String code = UUID.randomUUID().toString();
		user.setCode(code);
		// 处理数据并生成结果
		// UserService userService = new UserServiceImpl();
		boolean isSuccess = userService.register(user);
		if (isSuccess) {
			// 判断注册成功，则点击链接返回激活码
			String emailMsg = "恭喜您注册成功，请点击下面的连接进行激活账户" + "<a href='http://localhost:8080/JingBuy/active?code="
					+ code + "'>" + "http://localhost:8080/JingBuy/active?code=" + code + "</a>";
			//恭喜您注册成功，请点击下面的连接进行激活账户
			//<a href='http://localhost:8080/JingBuy/active?activeCode="+ code + "'>
			//http://localhost:8080/JingBuy/active?activeCode=" + code + "</a>
			try {
				MailUtils.sendMail(user.getEmail(), emailMsg);
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect(request.getContextPath() + "/registerSuccess.jsp");
		} else {
			response.sendRedirect(request.getContextPath() + "/registerFail.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 处理乱码
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
