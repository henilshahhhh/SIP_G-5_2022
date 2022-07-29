<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.timetable.dao.*"%>
<%@page import="com.timetable.entity.*"%>
<%@page import="java.util.*"%>

<%@include file="admin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Faculty</title>
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
	width: 60%;
	padding: 3% 3%;
	margin-bottom: 7%;
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
.me:focus, me:hover{
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

</style>
</head>
<body>
	<div style="padding-left:16px;">
        <h2>K S School Of Business Management</h2>
        
    </div>
    <br>
    <div class="flex-container">

    <h3 class="h3-c">Subject Allocation</h3>
    <br>
  	<div>
    <div class="container">
        
        
        
        
      <table class="me" id="subject">


						<thead>
							<tr>
								<th class="tuesday-head">No.</th>
								<th class="saturday-head">Subject Name:</th>
								<th class="thursday-head">Faculty Name:</th>
																
								<th class="friday-head">Workload:</th>
							</tr>
						</thead>
						<tbody>
								
							<%
							int i=1;
							SubjectDao s = new SubjectDao(ConnectionProvider.getConnection());
				        	List<Subject> use = s.getfacsu();
				        	
				        	for(Subject s1:use){
				        		System.out.println("sname="+s1.getSname()+"fname"+s1.getFname()+"workload:"+s1.getWorkload1());
							%>
							<th class="tuesday"><%=i %></th>
							<th class="saturday"><%=s1.getSname()%></th>
							<th class="thursday"><%=s1.getFname()%></th>
							<th class="friday"><%=s1.getWorkload1()%></th>
							

					


						</tbody>
						<%
						i++;
						}
						%>

					</table>
      
     </div>
  </div>
</div>
<%@include file="footer.jsp" %>

</body>
</html>