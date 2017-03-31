package servlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
import lxy.User;

public class LoginServlet extends HttpServlet {
	 
		public void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	//获取login.jsp的数据
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			User user = new User();
			// 对用户对象中的属性赋值
			user.setUsername(username);
			user.setPassword(password);
			UserDao userDao = new UserDao();		
			if(userDao.login(username,password) != null)
			{		
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");			
				rd.forward(request, response);
			}else{			
				request.setAttribute("info", "密码输入错误！");
				RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
				rd.forward(request, response);
			}	
			
		}
}