package org.example;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/users/delete")
public class DeleteUserServlet extends HttpServlet {
    private UserDao userDao;

    @Override
    public void init(){
        userDao = UserDao.getInstance();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userDao.delete(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect("/users/list");
    }


}
