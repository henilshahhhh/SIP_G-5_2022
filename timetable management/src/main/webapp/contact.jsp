<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@page import="com.timetable.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<style>
h2{
            text-align: center;
        }
        h3{
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
	font-size:2.5vh;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	text-align:center;
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
</style>
</head>
<body>
	 <div style="padding-left:16px">
        <h2>Contact Us</h2>
        
    </div>
   <div class="flex-container" style="margin-bottom:7.1%;">
    <h3 class="h3-c">K S School Of Business Management</h3>
  <div>
    <p><b>Address:</b>Gujarat University Campus<br>Navrangpura,<br>Ahmedabad, 380009,<br>Gujarat<br><b>Phone:</b> 079 2630 5972<br><b>Phone:</b> 079 2630 2119<br><b>Email: </b> ksschool31@yahoo.co.in<br><b>Working Hours :</b> 8:00 am to 5:30 pm</p>
</div>
</div>
<% 
if(request.getParameter("d")!=null)
{
int id = Integer.parseInt(request.getParameter("d"));
SubjectDao sd = new SubjectDao(ConnectionProvider.getConnection());

if(sd.deleteSub(id)) {
	
	System.out.println("done");
	response.sendRedirect("re-sub.jsp");
}
else
{
	System.out.println("pending");
	response.sendRedirect("contact.jsp");
}
}
 %>

<%@include file="footer.jsp" %>