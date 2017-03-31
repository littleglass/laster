package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import lxy.User;

public class RegServlet extends HttpServlet {
    private static final long serialVersionUID = 5280356329609002908L;
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 获取用户名
        String username = request.getParameter("username");
        // 获取密码
        String password = request.getParameter("password");

        UserDao userDao = new UserDao();
        if(username != null && !username.isEmpty()){
            if(userDao.userIsExist(username)){
                // 实例化一个User对象
                User user = new User();   
                // 对用户对象中的属性赋值
                user.setUsername(username);
                user.setPassword(password);
                // 保存用户注册信息
                userDao.saveUser(user);
                request.setAttribute("info", "恭喜，注册成功！<br>");
                }
            
            else{
                request.setAttribute("info", "错误：此用户名已存在！");
            }
        }
        // 转发到message.jsp页面
        request.getRequestDispatcher("message.jsp").forward(request, response);
        
    }
   
}