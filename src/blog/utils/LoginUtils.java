package blog.utils;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blog.dao.UserDao;
import blog.daoImpl.UserDaoImpl;
import blog.model.User;

public class LoginUtils {

	public static int login(HttpServletRequest request)  {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
			//request.setAttribute("loginError", "用户名或密码为空。"); 
			return 2;
		}
			

		UserDao dao = UserDaoImpl.getInstance();
		User user = dao.login(username, password);
		if (user == null){
			request.setAttribute("loginError", "用户名或密码错误。");  
			return 0;
		}
			

		// 写入session
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		return 1;
	}

}
