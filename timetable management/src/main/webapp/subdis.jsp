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
<title>Subject Distribution</title>
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

input[type=text], input[type=password],input[type=number] {
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
.checkv{
display:table-cell;
}
</style>
</head>
<body>
	<div style="padding-left: 16px">
		<h2>K S School Of Business Management</h2>

	</div>
	<br>
	<div class="flex-container" style="margin-bottom:9.7%;">

		<h3 class="h3-c">Subject Distribution</h3>
		<br>
			<div class="container">

 				<form name="form1" action="subdis.jsp" method="post">
 			
				<label for="faculty"><b>Choose Subject:</b></label> 
				
				<select class="me" name="choice" id="faculty">
				
 				
						 <%
						 if(request.getParameter("choice")!=null){
						 String c = request.getParameter("choice");
						 %>
							 <option value="<%=c %>" selected disabled><%=c %></option>
							 
						 <% request.removeAttribute(c);}else{%>
							 <option value="selectsubject" selected disabled>Select Subject:</option>
						 <% }
						SubjectDao s = new SubjectDao(ConnectionProvider.getConnection());
						List<Subject> use = s.getsubjectbystatus();
						for (Subject s1 : use) {
						%>


						<option value="<%=s1.getSname()%>"><%=s1.getSname()%></option>

						<% }%>
						
				</select><button class="login-btn" type="submit" onclick="fac()">Submit</button>
				<br></form>
				<%if(request.getParameter("choice")!=null){
				String sname = request.getParameter("choice");%>
									
				<form action="SelectFac" method="post">
			    <label for="faculty"><b>Choose Faculty:</b></label> <br>
				<%
				SignupDao sf = new SignupDao(ConnectionProvider.getConnection());
				ArrayList<String> se = sf.getdata(sname);
				System.out.println(sname);
				System.out.println("---"+se);
				SubjectDao sd = new SubjectDao(ConnectionProvider.getConnection());
				sd.savestatus(sname);
			
				
				for (String s1 : se) {
					%>
				<div class="checkv">

					<input type="checkbox" id="myCheck" name="val" value="<%=s1%>" ><%=s1 %><br>
					<input type="number" min="2" max="10" name="wke">
					</div>
					<% }%>
					<input type="hidden" name="snm" value="<%=sname%>">

					
				
				
				
				<button class="login-btn" type="submit">Done</button>
				</form>
 				
 			</div>
	
		

			<%} %>
			</div>
	</div>
</body>
</html>
<script type="text/javascript">
var e = document.getElementById("faculty");


function fac(){
	
	var s = document.getElementById("faculty");
	console.log(e.value);
	return s.value;
}


	<% 	//SignupDao sf = new SignupDao(ConnectionProvider.getConnection());
	
	//ArrayList<String> se = sf.getdata("FCO");

	//String strUser=null; strUser;%>// = //e.value;
	<%-- var a  =  [
    	<%for(String pro: se){%>
    	
       		"<%=pro%>",
    	
    	<%}%>
    ];console.log(a);
	//va --%>//r strUser = e.value;
	<% 
	//SignupDao sf = new SignupDao(ConnectionProvider.getConnection());
	//ArrayList<String> se = sf.getdata(strUser);
	//System.out.println(strUser);
	//System.out.println("---"+se);
	//SubjectDao sd = new SubjectDao(ConnectionProvider.getConnection());
	//sd.savestatus(strUser);
	//response.sendRedirect("re-sub.jsp");
	
	
	%>
	//console.log(strUser);



</script>
		
	<%@include file="footer.jsp"%>