<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%@page import="com.timetable.helper.ConnectionProvider" %>
<%@include file="header.jsp" %>
<%@page import="com.timetable.dao.*" %>
<%@page import="com.timetable.entity.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Timetable Management system</title>
<style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
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
	box-shadow: 0px 0px 23px 2px #c7c7c7;
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
.f{
	position: relative;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	background: white;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: 19px;
	margin: auto;
	width: -webkit-fill-available;;
	padding: 3% 3%;
	box-shadow: 0px 0px 23px 2px #c7c7c7;

}    



.flex-container div{
    text-align: center;
}
</style>
</head>
<body>
	
	 <div style="padding-left:16px">
        <h2>Student section</h2>
        
    </div>
   <div class="flex-container" style="margin-bottom:10.8%;">
    <h3 class="h3-c">Lecture Schedule</h3>
  <div>
  <%
	FileuploadDao s = new FileuploadDao(ConnectionProvider.getConnection());
	ArrayList<Fileupload> sub = s.getFacUploadation();
	for(Fileupload fac:sub) {
		
	%>
  
  
 
  
    <p class="f"><b><font color="blue"><%=fac.getDate()%> </font> <%=fac.getDesc()%> <a href="upload/<%=fac.getFile()%>" >click here....</a> </b></p><br>
<%
	}%>

  </div>
 

</div>

<%@include file="footer.jsp" %>