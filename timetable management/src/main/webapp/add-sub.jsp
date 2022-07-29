<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="admin.jsp" %>
<%@page import="com.timetable.dao.*"%>
<%@page import="com.timetable.entity.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Subject</title>
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

input[type=text]:hover, input[type=password]:hover, input[type=text]:focus,
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

    <h3 class="h3-c">Add subject</h3>
  	<div>
    <div class="container">
    <br>
        <form class="modal-content animate" action="SubServlet" method="post">
             
        
        
      <label for="sname"><b>Subject Name:</b></label>
      <input class="me" type="text" placeholder="Enter Subject name:" name="sname" required>
      <br><br>
      <label for="sem"><b>Select Sem:</b></label>
      <select class="me" id="sem" name="sem">
    <option value="1">1</option>
    <option value="3">3</option>
    <option value="5">5</option>
    <option value="7">7</option>
    <option value="9">9</option>
    </select><br><br>
    
      

      
     
      <label for="credit"><b>Choose subject credit:</b></label>
        
    <select class="me" id="credit" name="credit">
        <option value="5">5</option>
    
    <option value="3">3</option>
    <option value="2">2</option>
    </select><br><br>
      <button class="login-btn"  type="submit">Submit</button>
      </form>
     </div>
  </div>
</div>
<%@include file="footer.jsp" %>