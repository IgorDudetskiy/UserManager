package org.example;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/users/update")
public class UpdateUserServlet extends HttpServlet {
    private UserDao userDao;
    private User user;

    @Override
    public void init() {
        userDao = UserDao.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = userDao.read(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/update-user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user.setUsername(request.getParameter("username"));
        user.setUsername(request.getParameter("password"));
        userDao.update(user.getId(), user);
        response.sendRedirect("/users/list");
    }
}
