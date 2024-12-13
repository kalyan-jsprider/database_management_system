<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Student</title>
</head>
<body>
    <form action="createstudent">
        <fieldset>
            <legend>CREATE STUDENT</legend>
            Student Name: <input type="text" name="fname" required="required"> <br><br>
            Student Email: <input type="email" name="email" required="required"> <br><br>
            Student Password: <input type="password" name="pass" required="required"> <br><br>
            Student Phone: <input type="tel" name="ph" required="required"> <br><br>
            Student DOB: <input type="date" name="dob" required="required"> <br><br>
            Gender:
            <input type="radio" name="gen" value="male" required> MALE
            <input type="radio" name="gen" value="female"> FEMALE
            <input type="radio" name="gen" value="other"> OTHER <br><br>
            
            Subjects:
            <input type="checkbox" name="sub" value="Eng.Math" id="math">
            <label for="math">Eng.Math</label>
            <input type="checkbox" name="sub" value="Networking" id="net">
            <label for="net">Networking</label> <br><br>
            
            <input type="submit" value="SIGNUP">
            <input type="reset" value="CANCEL">
        </fieldset>
    </form>
</body>
</html> --%>
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Create</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-image: url("./high-angle-view-various-vegetables-black-background.jpg");
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
    width: 450px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.title-box {
    display: inline-block;
    padding: 5px 10px;
    background-color: transparent;
    box-shadow: 0 0 20px rgba(3, 197, 39, 0.5);
    border-radius: 8px;
    margin-bottom: 10px;
}

.p_title {
    font-size: 20px;
    font-weight: bold;
    color: #0008ff;
    text-align: center;
}

.form-group {
    margin-bottom: 5px;
    width: 100%;
    padding: 5px;
    box-sizing: border-box;
}

label {
    display: block;
    color: #2200ff;
}

input[type="text"], input[type="email"], input[type="password"], input[type="tel"], input[type="date"] {
    width: 90%;
    padding: 7px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    background-color: #9fb9d6;
    box-shadow: 0 0 20px rgba(0, 123, 255, 0.5);
    transition: box-shadow 0.3s ease;
}

input:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

.radio-group, .checkbox-group {
    display: flex;
    justify-content: space-between;
    width: 100%;
    margin-top: 10px;
}

input[type="radio"], input[type="checkbox"] {
    margin-right: 5px;
}

input[type="submit"], input[type="reset"] {
    padding: 7px 15px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    width: 40%;
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
    width: 100%;
}

.login-link {
    text-align: center;
    color: #00ff99;
}

a {
    color: #007BFF;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
    <form action="createstudent">
        <div class="container">
            <div class="title-box">
                <div class="p_title">Student Create</div>
            </div>

            <!-- Name -->
            <div class="form-group">
                <label for="fname">Student Name:</label>
                <input type="text" id="fname" name="fname" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Student Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="pass">Student Password:</label>
                <input type="password" id="pass" name="pass" required>
            </div>

            <!-- Phone -->
            <div class="form-group">
                <label for="ph">Student Phone:</label>
                <input type="tel" id="ph" name="ph" required>
            </div>

            <!-- DOB -->
            <div class="form-group">
                <label for="dob">Student DOB:</label>
                <input type="date" id="dob" name="dob" required>
            </div>

            <!-- Gender -->
            <div class="form-group">
                <label>Gender:</label>
                <div class="radio-group">
                    <label><input type="radio" name="gen" value="male" required> Male</label>
                    <label><input type="radio" name="gen" value="female"> Female</label>
                    <label><input type="radio" name="gen" value="other"> Other</label>
                </div>
            </div>

            <!-- Subjects -->
            <div class="form-group">
                <label>Subjects:</label>
                <div class="checkbox-group">
                    <label><input type="checkbox" name="sub" value="Eng.Math" id="math"> Eng.Math</label>
                    <label><input type="checkbox" name="sub" value="Networking" id="net"> Networking</label>
                </div>
            </div>

            <!-- Buttons -->
            <div class="form-group" id="form-button">
                <input class="i_submit" type="submit" value="SIGNUP">
                <input class="i_cancel" type="reset" value="CANCEL">
            </div>

            <!-- Login link -->
            
        </div>
    </form>
</body>
</html>