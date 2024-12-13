package com.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.AdminDao;
import com.Dao.StudentDao;
import com.Dto.Admin;
import com.Dto.Student;

@WebServlet("/findAllStudent")
public class FindAllStudentServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Admin admin = (Admin)req.getSession().getAttribute("ad");
		if(admin!=null) {
			int adminId = admin.getId();
			AdminDao admindao= new AdminDao();
			Admin adminID=admindao.findByEId(adminId);
			List<Student> listOfStudent = adminID.getStudents();
			req.getSession().setAttribute("listOfStudent", listOfStudent);
			req.getRequestDispatcher("studentDashboard.jsp").include(req, resp);
			}else {
			 resp.getWriter().print("<h1>DO LOGIN FIRST</h1>");
			 req.getRequestDispatcher("adminLogin.jsp").include(req, resp);
		}

	}
}