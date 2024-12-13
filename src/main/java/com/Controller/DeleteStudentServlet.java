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

@WebServlet("/deleteStudent")
public class DeleteStudentServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Admin admin =(Admin) req.getSession().getAttribute("ad");
		if(admin!=null) {
		int studentid =Integer.parseInt(req.getParameter("id")) ;
		// find student by id
		StudentDao studentdao = new StudentDao();
		Student student = studentdao.findById(studentid);
		resp.getWriter().print("<h1> "+student.getName()+" Deleted Successfully<h1/>");
		int adId = admin.getId();
		AdminDao adminDao = new AdminDao();
		 Admin admId = adminDao.findByEId(adId);
		 List<Student> listOfStudent = admId.getStudents();
		 req.getSession().setAttribute("listOfStudent", listOfStudent);
		 req.getRequestDispatcher("studentDashboard.jsp").include(req, resp);
		
		studentdao.deleteStudent(student);
		}else {
			resp.getWriter().print("<h1>DO LOGIN FIRST</h1>");
			req.getRequestDispatcher("adminLogin.jsp").include(req, resp);
		}
	}
}