<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="admin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
<style>
h2 {
	text-align: center;
}

h3 {
	text-align: center;
}

.flex-container {
	position: relative;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	background: white;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: 19px;
	margin: auto;
	width: 37%;
	padding: 3% 3%;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
}

.login-btn {
	color: white;
	background: linear-gradient(135deg, #6dff8e, #c196fd);
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	border-radius: 12px;
	font-weight: 600;
}

.login-btn:hover {
	border: 2px solid white;
	box-shadow: 0px 0px 23px 2px lightgreen;
}

.h3-c {
	text-align: center;
	background: linear-gradient(135deg, #6dff8e, #c196fd);
	margin-top: 0%;
	padding: 2% 1%;
	color: white;
	font-size: 1.6rem;
	border-radius: 17px;
}
/* Add a hover effect for buttons */
.animate {
	border: 3px solid white;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	border-radius: 16px;
	padding: 1% 6%;
}

.me:focus, me:hover {
	box-shadow: 0px 0px 23px 2px lightgreen;
	border: 4px solid lightgreen;
	outline: none;
}

input[type=text], input[type=password] {
	border-radius: 17px;
	width: 60%;
	padding: 4% 4%;
	margin: 2% 1%;
	display: inline-block;
	border: 4px solid white;
	box-sizing: border-box;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
}

input[type=text]:hover, input[type=file]:hover, input[type=date]:hover, input[type=text]:focus,
	input[type=password]:focus, input[type=text]:active, input[type=password]:active
	{
	box-shadow: 0px 0px 23px 2px lightgreen;
	border: 4px solid lightgreen;
	outline: none;
}

input[type=radio]:hover, input[type=radio]:focus {
	border: 2px solid white;
	box-shadow: 0px 0px 23px 2px lightgreen;
}
</style>
</head>
<body>
	<div style="padding-left:16px">
        <h2>K S School Of Business Management</h2>
        
    </div>
    <br>
    <div class="flex-container">

    <h3 class="h3-c">Upload Timetable</h3>
  	<div>
    <div class="container">
        <form action="UploadDataServlet" method="post" enctype="multipart/form-data">
        <label for="sname"><b><br>Select Date:</b></label>

        <input type="date" name="date"><br>
        <label for="sname"><b>Enter Name:</b></label>

        <input type="text" name="desc" placeholder="Enter Name of pdf">
        <label for="sname"><b><br>Choose File:</b></label>

      <input type="file" id="hans" name="file"><br>
      
      <button class="login-btn" type="submit" name="submit">submit</button>
      </form>
     </div>
  </div>
</div>
<%@include file="footer.jsp" %>