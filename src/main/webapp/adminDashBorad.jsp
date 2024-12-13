
 
 <%@page import="com.Dto.Admin"%>
<%@page import="com.Dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>
     <script src="Script.js" defer></script>
    
    <!-- Adding Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    
    <style>
        

        .container {
            margin-top: 50px;
        }

        .btn-custom {
            padding: 15px 25px;
            margin: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            color: white;
            background-color: #007bff;
            cursor: pointer;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        .back-button {
            background-color: #6c757d;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
        }

        h1, h2 {
            text-align: center;
            color: #2c3e50;
            font-size: 2em;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        table th, table td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background-color: #3498db;
            color: white;
        }

        table tr:hover {
            background-color: #f1f1f1;
            transform: scale(1.02); /* Small scale animation on hover */
            transition: all 0.3s ease-in-out; /* Smooth transition */
        }

        table td a {
            text-decoration: none;
        }

        /* Glowing Button Styles */
        .btn-glow {
            padding: 10px 20px;
            color: #fff;
            border: none;
            margin-left:15px;
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
            transform: translateY(-5px); /* Button moves up slightly on hover */
        }

        /* Back and Logout Button Styles */
        .btn-back, .btn-logout {
            background-color: #e74c3c;
            color: white;
            margin-left:15px;
            padding: 10px 15px;
            font-size: 14px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        .btn-back:hover, .btn-logout:hover {
            background-color: #c0392b;
            box-shadow: 0 0 20px rgba(231, 76, 60, 0.6);
            transform: translateY(-5px);
        }

        /* .container {
            text-align: center;
            margin-top: 20px;
        } */

        /* Navbar Styling */
        .navbar {
            background-color: #2c3e50;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar .brand {
            color: white;
            font-size: 24px;
            font-weight: 500;
        }

        .navbar .profile-section {
            display: flex;
            align-items: center;
            cursor: pointer;
            margin-right: 15px;
        }

        .navbar .profile-section img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .navbar .profile-section .profile-name {
            color: white;
            font-size: 18px;
        }

        /* User Details Section */
        #user-details {
            display: none;
            background-color: #ecf0f1;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        #user-details h3 {
            margin-bottom: 15px;
            color: #2c3e50;
        }

        #user-details p {
            font-size: 16px;
            color: #34495e;
        }

        /* Change Photo Button */
        #change-photo-form {
            margin-top: 20px;
            background-color: #f9f9f9;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        #change-photo-form input[type="file"] {
            margin-bottom: 10px;
        }

        #change-photo-form button {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #change-photo-form button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
	<%
        Admin admin = (Admin) session.getAttribute("ad");
        
        if (admin != null) { 
        %>
    
	<div class="navbar">
        <div class="brand">Admin Dashboard</div>
        <div class="profile-section" onclick="toggleProfile()">
            <img src="profile-logo.jpg" alt="Profile Logo"> <!-- Use a valid image path -->
            <div class="profile-name"><%=admin!=null?admin.getName():""%></div>
        </div>
    </div>
    
    <!-- User Details Section -->
    <div id="user-details">
        <h3>User Profile Details</h3>
        <p><strong>Name:</strong> <%=admin!=null ? admin.getName(): "N/A" %></p>
        <p><strong>Email:</strong> <%=admin!= null ? admin.getEmail() : "N/A" %></p>
        <p><strong>Role:</strong> Admin</p>

        <!-- Change Photo Form -->
        <div id="change-photo-form">
            <form action="uploadPhoto" method="post" enctype="multipart/form-data">
                <label for="profile-photo">Change Profile Photo:</label><br>
                <input type="file" id="profile-photo" name="profile-photo" accept="image/*" required><br>
                <button type="submit">Upload</button>
            </form>
        </div>
    </div>
    <div class="container text-center">
        
            	<a href="createstudent.jsp" ><button class="btn-glow">ADD STUDENT</button></a>
                <a href="findAllStudent" ><button class="btn-glow">Find All</button></a>
                <a href="logout"><button class="btn-logout">Admin Logout</button></a>
                <a href="adminSignup.jsp"><button class="btn-logout">Home</button></a>
                <a href="socialmediaAccount"><button class="btn-logout">SocialMedia</button></a>
        <%
            } else {
        %>
            <h1>DO LOGIN FIRST</h1>
            <%
                request.getRequestDispatcher("login.jsp").include(request, response);
            %>
        <%
            }
        %>
    </div>
	<script>
        // Toggle user profile details display
        function toggleProfile() {
            var userDetails = document.getElementById('user-details');
            if (userDetails.style.display === "none" || userDetails.style.display === "") {
                userDetails.style.display = "block";
            } else {
                userDetails.style.display = "none";
            }
        }
    </script>
    <!-- Back button functionality -->
    

    <!-- Bootstrap JS for functionality like dropdowns, modals, etc. -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script> -->
</body>
</html>
 