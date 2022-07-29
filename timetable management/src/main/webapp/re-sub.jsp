<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.timetable.dao.*"%>
<%@page import="com.timetable.entity.*"%>
<%@page import="java.util.*"%>
<%@include file="admin.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Subject</title>
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">

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
	margin-bottom: 7%;
	width: 60%;
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
.tuesday-head{
	background: #f37d64;
}
.thursday-head{
	background: #ffd366;
}
.thursday{
	background: #ffe7aa;
	text-align: center;
	font-weight: 700;
}
.friday-head{
	background: #6bc7af;
}
.saturday-head{
	background: #e994bf;
}
.monday{
	background: #f6aab2;
	text-align: center;
	font-weight: 700;
}
.friday{
	background: #ade0d3;
	text-align: center;
	font-weight: 700;
}
.saturday{
	background: #f3c4dc;
	text-align: center;
	font-weight: 700;
}
.tuesday{
	background: #f9b7a9;
	text-align: center;
	font-weight: 700;
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
/* Add a hover effect for buttons */
.me:focus, me:hover {
	box-shadow: 0px 0px 23px 2px lightgreen;
	border: 4px solid lightgreen;
	outline: none;
}

table {
	margin:auto;
	border: 2px solid transparent;
	text-align: center;
	display: inline-table;
	box-shadow: 0px 0px 4px 3px #dbdbdb;
	border-radius: 14px;
	padding: 2% 2%;
	width:100%;
}

th, td {
	border: 1px solid black;
	margin: 2% 2%;
}

</style>
</head>
<body>
	<div style="padding-left: 16px">
		<h2>K S School Of Business Management</h2>

	</div>
	<br>

	<div class="flex-container">

		<h3 class="h3-c">Remove Subject</h3>
		<br>
		<div>
			<div class="container">
				


					<table class="me" id="subject">


						<thead>
							<tr>
								<th class="tuesday-head">sub</th>
								<th class="thursday-head">Subject Name:</th>
								<th class="friday-head">Sem:</th>
								<th class="saturday-head">Delete</th>
							</tr>
						</thead>
						<tbody>
								
							<%
							int i=1;
							SubjectDao s = new SubjectDao(ConnectionProvider.getConnection());
							List<Subject> sub = s.getsubject();
							for (Subject s1 : sub) {
							%>
							<th class="tuesday"><%=i %></th>
							<th class="thursday" value="<%=s1.getS_id()%>"><%=s1.getSname()%></th>
							<th class="friday"><%=s1.getSem()%></th>

							<th class="saturday"><a href="contact.jsp?d=<%=s1.getS_id()%>" style="color:red";><i class="fa fa-trash" aria-hidden="true"></i></a></th>


						</tbody>
						<%
						i++;}
						%>

					</table>





				
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>