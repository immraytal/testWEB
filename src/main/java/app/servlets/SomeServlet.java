package app.servlets;

import app.entities.User;
import app.model.Model;

import javax.servlet.RequestDispatcher;
import java.util.List;

public class SomeServlet extends javax.servlet.http.HttpServlet {
    

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        User user = new User(request.getParameter("login_field"), request.getParameter("password_field"));
        System.out.println(request.getParameter("login_field"));
        Model model = Model.getInstance();
        model.add(user);
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        Model model = Model.getInstance();
        List<String> names = model.list();
        request.setAttribute("users", names);
        System.out.println("get");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request,response);
    }
}
