package com.Controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.AdminDao;
import com.Dao.StudentDao;
import com.Dto.Admin;
import com.Dto.Student;

@WebServlet("/createstudent")
public class CreateStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Fetch form data
    	 Admin admin = (Admin) req.getSession().getAttribute("ad");
    	 if(admin!=null) {
    		 	String name = req.getParameter("fname");
    	        String email = req.getParameter("email");
    	        String password = req.getParameter("pass");
    	        Long phone = Long.parseLong(req.getParameter("ph")) ;
    	        String dob = req.getParameter("dob");
    	        String gender = req.getParameter("gen");
    	        // Fetch multiple subjects (checkboxes)
    	        String[] subject = req.getParameterValues("sub");
    	        List<String> subjects = null;
    	        // validation 
    	        if (subject != null) {
    	            // Convert the array to a List
    	            subjects = Arrays.asList(subject);
    	        }
    	     // Create Student object
    	        Student std = new Student();
    	        std.setName(name);
    	        std.setEmail(email);
    	        std.setPassword(password);
    	        std.setPhone(phone);
    	        std.setDOB(dob);
    	        std.setGender(gender);
    	        std.setSubjects(subjects); 
    	        std.setAdmin(admin);
    	        AdminDao adminD= new AdminDao();
    	        StudentDao sDao = new StudentDao();
    	        Student student = sDao.createStudent(std);
    	      
    	        Admin a =adminD.findByEId( admin.getId());
    	        List<Student> listOfStudent = a.getStudents();
    	        req.getSession().setAttribute("listOfStudent", listOfStudent);
    	        resp.getWriter().print("<h1>Student created by: "+admin.getName()+"</h1>");
    	        req.getRequestDispatcher("studentDashboard.jsp").include(req, resp);
    	 }else {
         	resp.getWriter().print("<h1>AdminSignup</h1>");
         }
        
    }
}