<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="admin.jsp"%>
    
    <%@page import="com.timetable.dao.*"%>
<%@page import="com.timetable.entity.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.flex-container {
	position: relative;
	
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	background: white;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: 19px;
	margin: auto;
	width: 37%;
	margin-bottom: 5%;
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




</style>
</head>
<body style="background-color: #eefff0;">


<form action="SelectFac" method="post">
			<div class="flex-container">

	<% String sname=request.getParameter("id");
	SignupDao sf = new SignupDao(ConnectionProvider.getConnection());
	ArrayList<String> se = sf.getdata(sname);
	System.out.println(sname);
	System.out.println("---"+se);
	for (String s1 : se) {
		%>


		<input type="radio" name="val" value="<%=s1%>"><%=s1 %><br>
		
		<% }%>
		<input type="hidden" name="snm" value="<%=sname%>">
	<!-- SubjectDao sd = new SubjectDao(ConnectionProvider.getConnection());
	sd.savestatus(sname);
	response.sendRedirect("re-sub.jsp");
	 -->
	 <button class="login-btn" type="submit">submit</button>
	 </div>
	</form>
	
	
	
	

</body>
</html>