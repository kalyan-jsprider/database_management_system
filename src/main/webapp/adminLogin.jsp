<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
</head>
<body>
    <form action="adminlogin" method="POST">
        <fieldset>
            <legend>Admin Login</legend>
            Email: <input type="email" name="email" required="required"> <br><br>
            Password: <input type="password" name="pass" required="required"> <br><br>
            <button type="submit">LOGIN</button>
            <button type="reset">CANCEL</button>
        </fieldset>
    </form>
</body>
</html>
 --%>
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin sign-up</title>
<!-- <script src="script.js" defer></script> -->
<style>
body {
	font-family: Arial, sans-serif;
	background-image:
		url("./high-angle-view-various-vegetables-black-background.jpg");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	display: flex;
	padding-left: 370px;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	border: 2px solid #04f749;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 4px 15px #0400fd81;
	background-color: transparent;
	backdrop-filter: blur(20px);
	width: 350px; /* Set a fixed width */
	height: 450px; /* Set a standard height */
	display: flex; /* Use flexbox for alignment */
	flex-direction: column; /* Align items in a column */
	justify-content: center; /* Center content vertically */
	align-items: center; /* Center content horizontally */
}

.title-box {
	display: inline-block; /* Makes the box only as wide as the content */
	padding: 5px 10px; /* Add some padding to give it size */
	background-color: transparent; /* Transparent background */
	box-shadow: 0 0 20px rgba(3, 197, 39, 0.5); /* Box shadow with glow */
	border-radius: 8px; /* Rounded corners */
	margin-bottom: 10px; /* Space below the box */
}

.p_title {
	font-size: 20px; /* Larger font size */
	font-weight: bold; /* Bold text */
	color: #0008ff; /* Use a color that matches the theme */
	text-align: center; /* Center the title */
	/* text-shadow: 0 0 5px rgba(0, 255, 21, 0.8); Soft blue glow */
	background-color: transparent; /* Keep it transparent */
}

.form-group {
	margin-bottom: 20px; /* Increased space below each form group */
	width: 100%; /* Ensure the form group takes full width */
	padding: 5px; /* Add padding for more space around the input */
	box-sizing: border-box; /* Include padding in width calculation */
}

label {
	margin-bottom: 5px;
	display: block; /* Makes the label take the full width */
	color: #2200ff;
}

input[type="text"], input[type="email"], input[type="password"], select
	{
	width: 90%; /* Use full width of the container */
	padding: 7px; /* Increased padding for a larger input field */
	border: 1px solid #ccc;
	border-radius: 4px;
	box-shadow: 0 0 20px rgba(0, 123, 255, 0.5);
	transition: box-shadow 0.3s ease;
	background-color: #9fb9d6;
}

input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus,
	select:focus {
	outline: none;
	box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

input[type="submit"], input[type="reset"] {
	padding: 5px 10px;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	transition: box-shadow 0.3s ease, background-color 0.3s ease;
	width: 20%; /* Make buttons full width */
}

.role {
	display: flex;
	justify-content: space-between;
}

input[type="submit"] {
	background-color: #007BFF;
	color: white;
}

input[type="reset"] {
	background-color: #dc3545;
	color: white;
}

input[type="submit"]:hover, input[type="reset"]:hover {
	box-shadow: 0 0 15px rgb(0, 255, 102);
}

#form-button {
	display: flex;
	justify-content: space-between;
}

.login-link {
	color: #00ff99;
	text-align: center;
}

.i_submit {
	margin-left: 30px;
}

.i_cancel {
	margin-right: 30px;
}
</style>
</head>
<body>
	<form action="adminlogin" method="post">
		<div class="container">
			<div class="title-box">
				<div class="p_title">Admin login</div>
			</div>
			
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="pass" name="pass" required>
			</div>
			
			<div class="form-group">

				<div id="form-button">
					<input class="i_submit" type="submit" value="LOGIN"> <input
						class="i_cancel" type="reset" value="CANCEL">
				</div>

			</div>
			<div class="login-link">
				<p>
					If you don't have an account, <a href="adminSignup.jsp"
						style="color: #007BFF;">Signup here</a>.
				</p>
			</div>
		</div>
	</form>
</body>
</html>
 