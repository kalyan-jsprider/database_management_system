<%@page import="com.Dto.Admin"%>
<%@page import="com.Dto.Student"%>
<%@page import="com.Dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student update</title>
</head>
<body>
	<%
        Admin admin = (Admin) session.getAttribute("ad");
        
        if (admin != null) { 
        	int sId= Integer.parseInt(request.getParameter("id"));
        	StudentDao studentdao = new StudentDao();
        	Student student=studentdao.findById(sId);
        
        %>
        <form action="updateStudent">
        	<fieldset>
        	<legend>UPDATE STUDENT</legend>
        	id:<input type="text" name="id" value="<%=student.getId()%>" readonly="readonly"><br><br>
        	name:<input type="text" name="fname" value="<%=student.getName()%>"><br><br>
        	DOB:<input type="date" name="dob" value="<%=student.getDOB()%>"><br><br>
        	Phone:<input type="tel" name="ph" value="<%=student.getPhone()%>"><br><br>
        	<input type="submit" value="UPDATE STUDENT">
			<input type="reset" value="CANCEL">
        	</fieldset>
        	<a href="logout"><button>ADMIN LOGOUT</button> </a>
        	<a href="adminDashBorad.jsp"><button>HOME</button> </a>
        </form>
        
        <%}else{
        	response.getWriter().print("<h1>DO LOGIN FIRST</h1>");
        	request.getRequestDispatcher("adminLogin.jsp").include(request, response);
        } %>
</body>
</html>