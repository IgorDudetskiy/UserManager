package org.example;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/users/list")
public class UserListServlet extends HttpServlet {
    private UserDao userDao;

    @Override
    public void init(){
        userDao = UserDao.getInstance();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/user-list.jsp");
        request.setAttribute("users", userDao.readAll());
        requestDispatcher.forward(request, response);
    }


}
