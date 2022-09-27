package Servlets;

import main.DBManager;
import main.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet (name = "AuthenticationServlet", value = "/authentication")
public class AuthenticationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("JSPs/authentication.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = null;
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        ArrayList<User> users = DBManager.getUsers();
        for (User user : users) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                id = user.getId();
            }
        }

        if (id != null) {
            response.sendRedirect("/user-profile?id=" + id);
        }
        else {
            response.sendRedirect("JSPs/authentication.jsp?status=invalid");
        }
    }
}
