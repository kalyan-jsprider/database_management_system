<%@page import="com.Dto.Admin"%>
<%@ page import="com.Dto.Student" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <script src="Script.js" defer></script>

    <!-- Adding Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7f6;
            display: flex;
        }

        /* Sidebar Styling */
        .sidebar {
            height: 100%;
            width: 210px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #2c3e50;
            padding-top: 20px;
            text-align: center;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar h2 {
            color: white;
            margin-bottom: 20px;
            font-size: 22px;
        }

        .sidebar a {
            display: block;
            color: white;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            margin: 5px 0;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #3498db;
            cursor: pointer;
        }

        .sidebar .profile-section {
            display: flex;
            align-items: center;
            flex-direction: column;
            margin-bottom: 20px;
        }

        .sidebar .profile-section img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 10px;
            border: 2px solid white;
        }

        .sidebar .profile-section .profile-name {
            color: white;
            font-size: 18px;
            margin-bottom: 5px;
        }

        .main-content {
            margin-left: 250px;
            padding:20px 7px 20px 0px;
            width: calc(100% - 250px);
        }

        /* Glowing Button Styles */
        .btn-glow {
            padding: 10px 20px;
            color: #fff;
            border: none;
            background-color: #3498db;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 20px rgba(52, 152, 219, 0.4);
            transition: all 0.3s ease-in-out;
        }

        .btn-glow:hover {
            background-color: #2980b9;
            box-shadow: 0 0 20px rgba(41, 128, 185, 0.8);
            transform: translateY(-3px);
        }

        /* Table Styling */
        table {
			    width: 100%;
			    border-collapse: collapse;
			    background-color: #ffffff;
			    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
			    border-radius: 10px;
			    overflow: hidden;
			    /* Adding max height and enabling scrolling */
			    max-height: 720px; /* Adjust as per your need */
			    overflow-y: auto;
			    display: block; /* This is necessary to make the header sticky */
				}

	table th, table td {
	    padding: 8px 4px;
	    text-align: center;
	    border-bottom: 1px solid #ddd;
	    
	}
	
	table th {
	    position: sticky; /* Sticky position */
	    top: 0; /* Stick to the top */
	    background-color: #3498db; /* Background color */
	    color: white;
	    /* Ensure header is on top */
	}
	
	#h:hover {
	    background-color: #f1f1f1;
	    transform: scale(1.02);
	    transition: all 0.3s ease-in-out;
	}


        /* Pagination Styling */
        .pagination {
            margin: 20px 0;
            text-align: center;
        }

        .pagination a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            margin: 0 5px;
            transition: background-color 0.3s ease;
        }

        .pagination a:hover {
            background-color: #2980b9;
        }

    </style>
</head>
<body>
	
<% Admin admin=(Admin)session.getAttribute("ad"); 
	
%>
<div class="sidebar">
    <h2>Dashboard</h2>
    <div class="profile-section">
        <img src="myPhoto.jpg" alt="Profile Picture">
        <div class="profile-name"><%= admin != null ? admin.getName() : "" %></div>
        <div><%= admin != null ? admin.getEmail() : "" %></div>
    </div>

    <a href="menu.jsp">Home</a>
    <a href="createfoodProduct.jsp">Add Food Product</a>
    <a href="logout">Logout</a>
</div>

<div class="main-content">
<% List<Student>list=(List<Student>)session.getAttribute("listOfStudent"); 
	if(list!=null){
%>

        <h1>Welcome Student Dashboard</h1>
        <table>
            
            <tr class="ta">
                <th>S.NO</th>
                <th>S_ID</th>
                <th>S_NAME</th>
                <th>S.EMAIL</th>
                <th>S_PHONE_NUMBER</th>
                <th>S_GENDER</th>
                <th>S_DOB</th>
                <th>UPDATE</th>
                <th>DELETE</th>
                <th>SUBJECT</th>
            </tr>
        
         
         <%
            int i = 1;
            for (Student s : list) {
            %>
            <tr id="h">
                <td><%=i++%></td>
                <td><%=s.getId()%></td>
                <td><%=s.getName()%></td>
                <td><%=s.getEmail()%></td>
                <td><%=s.getPhone()%></td>
                <td><%=s.getGender()%></td>
                <td><%=s.getDOB()%></td>
                <td><a href="updateStudent.jsp?id=<%=s.getId()%>"><button class="btn-glow">UPDATE</button></a></td>
                <td><a href="deleteStudent?id=<%=s.getId()%>"><button class="btn-glow">DELETE</button></a></td>
                <td><a href="deleteStudent?id=<%=s.getId()%>"><button class="btn-glow">SUBJECT</button></a></td>
            </tr>
            <%
            }
            %>
        </table>

        <br>
        
        <a href="createstudent.jsp"><button class="btn-glow">AddStudent</button></a>
        <a href="adminDashBorad.jsp"><button class="btn-glow">Home</button></a>
        <a href="logout"><button class="btn-glow">LOGOUT</button></a>
<%
    }
%> 
</div>
</body>
</html>