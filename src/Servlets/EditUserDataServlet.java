package Servlets;

import main.DBManager;
import main.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.ArrayList;

@WebServlet (name = "EditUserDataServlet", value = "/edit-user-data")
public class EditUserDataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fullName = request.getParameter("name");

        User user = DBManager.getUser(id);

        if (user != null) {
            user.setId(id);
            user.setFullName(fullName);
            user.setEmail(email);
            user.setPassword(password);

            DBManager.updateUserData(user);
            response.sendRedirect("/user-profile?id=" + id);
        }

    }
}
