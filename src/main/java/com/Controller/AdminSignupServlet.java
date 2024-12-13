package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.AdminDao;
import com.Dto.Admin;

@WebServlet("/adminsignup")
public class AdminSignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get form parameters from the POST request
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("pass");

        // Create Admin class object and set the fields
        Admin adm = new Admin();
        adm.setName(name);
        adm.setEmail(email);
        adm.setPassword(password);

        // Save the admin object into the database
        AdminDao dao = new AdminDao();
        Admin admin = dao.saveAdmin(adm);
        req.getSession().setAttribute("admin", admin);

        // Send success response
        resp.getWriter().print("<h1>Admin Signup Successful</h1>");
        req.getRequestDispatcher("adminLogin.jsp").include(req, resp);
    }
}