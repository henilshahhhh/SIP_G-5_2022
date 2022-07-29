<%@page import="com.timetable.helper.ThreeDArray"%>
<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="faculty.jsp"%>
<%@page import="com.timetable.dao.*"%>
<%@page import="com.timetable.entity.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,700;1,600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
<title>Create</title>
<style>
	*{
		font-family: 'Poppins', sans-serif;
		outline: none;
		border: none;
		border-radius: 6px;
	}
h2 {
	text-align: center;
}

h3 {
	text-align: center;
}

/* .flex-container {
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	/* background: linear-gradient(207deg, #d6d6d6, transparent); */
	/* word-wrap: break-word;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, .125);
	border-radius: 0.25rem;
	margin: auto;
	width: fit-content;
	padding: 2% 6%;
	box-shadow: 0px 1px 29px 2px #ffbbbb;
}  */

table {
	overflow: hidden;
	margin: 1% 4%;
	/* border-bottom: none;border-top: none; */
	
}
.login-btn {
	color: white;
	background: linear-gradient(135deg, #6dff8e, #c196fd);
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 80%;
	border-radius: 12px;
	font-weight: 600;
}

.login-btn:hover {
	border: 2px solid white;
	box-shadow: 0px 0px 23px 2px lightgreen;
}
.me:focus, me:hover {
	box-shadow: 0px 0px 23px 2px lightgreen;
	border: 4px solid lightgreen;
	outline: none;
}

.year-heading{
	font-style: italic;
}
th{
	background: #abadaf;
	color: white;
	/* border: 2px solid black; */
}
.sub-div{
	background: #788392;
	border: none;
}
.monday-head{
	background: #ee6674;
	/* border: 1px solid black; */

}
.monday{
	background: #f6aab2;
	text-align: center;
	font-weight: 700;
}
.tuesday-head{
	background: #f37d64;
}
.tuesday{
	background: #f9b7a9;
	text-align: center;
	font-weight: 700;
}
.wednesday-head{
	background: #76a2d5;
}
.wednesday{
	background: #b3cce8;
	text-align: center;
	font-weight: 700;
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
.friday{
	background: #ade0d3;
	text-align: center;
	font-weight: 700;
}
.saturday-head{
	background: #e994bf;
}
.saturday{
	background: #f3c4dc;
	text-align: center;
	font-weight: 700;
}
#myBar {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}
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


input[type=radio]:hover, input[type=radio]:focus {
	border: 2px solid white;
	box-shadow: 0px 0px 23px 2px lightgreen;
}

.hen{
	font-size:3vh;
}
</style>
</head>
<body>
	<div style="padding-left: 30px">
		<h2>K S School Of Business Management</h2>

	</div>
		<br>	<% 
		
		SubjectDao s = new SubjectDao(ConnectionProvider.getConnection());
		ArrayList<Subject> sub = s.getsemwise(1);
		
		System.out.println(sub);
		%>
	
	
	<div id="form" class="flex-container">
								<p class="h3-c">Please select year:</p><br>
							<input type="radio" id="first1" name="year" value="first" checked>
							<label for="first">FIRST YEAR</label> 
							<input type="radio" id="second1" name="year" value="second"> <label for="second">SECOND YEAR</label>
							<input type="radio" id="third1" name="year" value="third"> <label for="third">THIRD YEAR</label><br>
							<input type="radio" id="fourth1" name="year" value="fourth"> <label for="fourth">FOURTH YEAR</label>
						    <input type="radio" id="fifth1" name="year" value="fifth"> <label for="fifth">FIFTH YEAR</label>
							
							<br><button class="login-btn" type="submit" onclick="myFunction()">Submit</button>
	</div>
	<div id="first" style="display:none;"> 
					<h2 class="year-heading" align="center"><input type="text" class="hen">FIRST YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >




						<tr>
							
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday<br><input type="date"></th>
							<th class="tuesday-head">Tuesday<br><input type="date"></th>
							<th class="wednesday-head">Wednesday<br><input type="date"></th>
							<th class="thursday-head">Thursday<br><input type="date"></th>
							<th class="friday-head">Friday<br><input type="date"></th>
							<th class="saturday-head">Saturday<br><input type="date"></th>
						</tr>
						<tr>
							<th rowspan="3">9:00 To 10:30</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
								<input type="text">
								
														
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday" >
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday" >
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday" >
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th rowspan="3">10:30 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<!-- <tr>
							<th rowspan="3">11:00 to 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>

						</tr>
 -->		
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						
						
						<tr>
							<th rowspan="3">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>

						<tr>
							<th rowspan="3">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
					
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
				
						<tr>
							<th rowspan="3">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>						
							</tr>
						<tr>
							<th rowspan="3">3:40 TO 5:15</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">	
    						
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" >
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						</table>
											<table>
					<tr>
					<th>Subject Name:</th>
					
					<th>Faculty Name:</th>
					
					
					</tr>
					<%for (int i=0;i<=8;i++){ %>
					<tr>
					<td class="thursday"><%=sub.get(i).getSname()%></td>
					<td class="thursday"><%=sub.get(i).getFname()%></td>
					</tr>
					<%}%>
					
					
					</table>
						
						</div>
						<div style="display:none;" id="second">
						<h2 class="year-heading" align="center"><input type="text" class="hen">SECOND YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >

													<% 
		
								SubjectDao s1 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub1 = s1.getsemwise(3);
		
								System.out.println(sub);
							%>
						


						<tr>
							
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday<br><input type="date"></th>
							<th class="tuesday-head">Tuesday<br><input type="date"></th>
							<th class="wednesday-head">Wednesday<br><input type="date"></th>
							<th class="thursday-head">Thursday<br><input type="date"></th>
							<th class="friday-head">Friday<br><input type="date"></th>
							<th class="saturday-head">Saturday<br><input type="date"></th>
						</tr>
						<tr>
							<th rowspan="3">9:00 To 10:30</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text">
							
							</td>
							<td class="tuesday">
								<input type="text">
								
														
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th rowspan="3">10:30 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<!-- <tr>
							<th rowspan="3">11:00 to 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>

						</tr>
 -->		
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						
						
						<tr>
							<th rowspan="3">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>

						<tr>
							<th rowspan="3">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
					
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
				
						<tr>
							<th rowspan="3">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>						
							</tr>
						<tr>
							<th rowspan="3">3:40 TO 5:15</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">	
    						
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						</table>
					<table>
					<tr>
					<th>Subject Name:</th>
					
					<th>Faculty Name:</th>
					
					
					</tr>
					<%for (int i=0;i<=8;i++){ %>
					<tr>
					<td class="thursday"><%=sub1.get(i).getSname()%></td>
					<td class="thursday"><%=sub1.get(i).getFname()%></td>
					</tr>
					<%}%>
					
					
					</table>
						
						
						
						</div>
						<div style="display:none;" id="third">
						<h2 class="year-heading" align="center"><input type="text" class="hen">THIRD YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >
												<% 
		
								SubjectDao s2 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub2 = s2.getsemwise(5);
		
								System.out.println(sub);
							%>
					



						<tr>
							
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday<br><input type="date"></th>
							<th class="tuesday-head">Tuesday<br><input type="date"></th>
							<th class="wednesday-head">Wednesday<br><input type="date"></th>
							<th class="thursday-head">Thursday<br><input type="date"></th>
							<th class="friday-head">Friday<br><input type="date"></th>
							<th class="saturday-head">Saturday<br><input type="date"></th>
						</tr>
						<tr>
							<th rowspan="3">9:00 To 10:30</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
								<input type="text">
								
														
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th rowspan="3">10:30 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text"disabled>
							</td>
						</tr>
						<!-- <tr>
							<th rowspan="3">11:00 to 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>

						</tr>
 -->		
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						
						
						<tr>
							<th rowspan="3">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
							<input type="text" >
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>

						<tr>
							<th rowspan="3">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
					
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
				
						<tr>
							<th rowspan="3">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>						
							</tr>
						<tr>
							<th rowspan="3">3:40 TO 5:15</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">	
    						
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						</table>
						<table>
					<tr>
					<th>Subject Name:</th>
					
					<th>Faculty Name:</th>
					
					
					</tr>
					<%for (int i=0;i<=6;i++){ %>
					<tr>
					<td class="thursday"><%=sub2.get(i).getSname()%></td>
					<td class="thursday"><%=sub2.get(i).getFname()%></td>
					</tr>
					<%}%>
					
					
					</table>
						
						
						
						</div>
						<div style="display:none;" id="fourth">
						<h2 class="year-heading" align="center"><input type="text" class="hen">FOURTH YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >
											<% 
		
								SubjectDao s3 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub3 = s3.getsemwise(7);
		
								
							%>
					



						<tr>
							
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday<br><input type="date"></th>
							<th class="tuesday-head">Tuesday<br><input type="date"></th>
							<th class="wednesday-head">Wednesday<br><input type="date"></th>
							<th class="thursday-head">Thursday<br><input type="date"></th>
							<th class="friday-head">Friday<br><input type="date"></th>
							<th class="saturday-head">Saturday<br><input type="date"></th>
						</tr>
						<tr>
							<th rowspan="2">9:00 To 10:30</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
								<input type="text" disabled>
								
														
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						
						<tr>
							<th rowspan="2">10:30 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<!-- <tr>
							<th rowspan="3">11:00 to 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>

						</tr>
 -->		
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						
						
						<tr>
							<th rowspan="2">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" >
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" >
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" >
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>

						<tr>
							<th rowspan="2">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" >
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" >
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" >
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>

					
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
				
						<tr>
							<th rowspan="2">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>

						</tr>
						<tr>
							<th rowspan="2">3:40 TO 5:15</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">	
    						
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						</table>
						<table>
					<tr>
					<th>Subject Name:</th>
					
					<th>Faculty Name:</th>
					
					
					</tr>
					<%for (int i=0;i<=7;i++){ %>
					<tr>
					<td class="thursday"><%=sub3.get(i).getSname()%></td>
					<td class="thursday"><%=sub3.get(i).getFname()%></td>
					</tr>
					<%}%>
					
					
					</table>
						
						
						
						</div>
						<div style="display:none;" id="fifth">
						<h2 class="year-heading" align="center"><input type="text" class="hen">FIFTH YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >
												<% 
		
								SubjectDao s4 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub4 = s4.getsemwise(9);
		
								
							%>
					



						<tr>
							
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday<br><input type="date"></th>
							<th class="tuesday-head">Tuesday<br><input type="date"></th>
							<th class="wednesday-head">Wednesday<br><input type="date"></th>
							<th class="thursday-head">Thursday<br><input type="date"></th>
							<th class="friday-head">Friday<br><input type="date"></th>
							<th class="saturday-head">Saturday<br><input type="date"></th>
						</tr>
						<tr>
							<th rowspan="2">9:00 To 10:30</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
								<input type="text" disabled>
								
														
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th rowspan="2">10:30 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						
						<!-- <tr>
							<th rowspan="3">11:00 to 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>

						</tr>
 -->		
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						
						
						<tr>
							<th rowspan="2">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th rowspan="2">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text" disabled>
							
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
				
						<tr>
							<th rowspan="2">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text" disabled>
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text" disabled>
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text" disabled>
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text" disabled>
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text" disabled>
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text" disabled>
							</td>
							<td class="saturday">
							<input type="text">
							</td>

						</tr>
						
						<tr>
							<th rowspan="2">3:40 TO 5:15</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">	
    						
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday">
							<input type="text">
							</td>
							<td class="tuesday">
							<input type="text">
							</td>
							<td class="wednesday">
							<input type="text">
							</td>
							<td class="thursday">
							<input type="text">
							</td>
							<td class="friday">
							<input type="text">
							</td>
							<td class="saturday">
							<input type="text">
							</td>
						</tr>
						</table>
											<table>
					<tr>
					<th>Subject Name:</th>
					
					<th>Faculty Name:</th>
					
					
					</tr>
					<%for (int i=0;i<=7;i++){ %>
					<tr>
					<td class="thursday"><%=sub4.get(i).getSname()%></td>
					<td class="thursday"><%=sub4.get(i).getFname()%></td>
					</tr>
					<%}%>
					
					
					</table>

						
						
						
						</div>
						<center>
						
						
						<button class="login-btn" id="hidden" type="submit" onclick="myFunction1()" style="display:none;">Print</button></center>
<br><br>
						
 <script type="text/javascript">
 function myFunction() {
	

	 if(document.getElementById('first1').checked == true) {   
		 document.getElementById('first').style.display = 'block';
			document.getElementById('second').style.display = 'none';
			document.getElementById('third').style.display = 'none';
			document.getElementById('fifth').style.display = 'none';
			document.getElementById('fourth').style.display = 'none';
			document.getElementById('form').style.display = 'none';

	 }
	 else if(document.getElementById('second1').checked == true) {  
		 document.getElementById('second').style.display = 'block';
			document.getElementById('third').style.display = 'none';
			document.getElementById('first').style.display = 'none';
			document.getElementById('fifth').style.display = 'none';
			document.getElementById('fourth').style.display = 'none';
			document.getElementById('form').style.display = 'none';

	 }

	 else if(document.getElementById('third1').checked == true) {  
		 document.getElementById('third').style.display = 'block';
			document.getElementById('second').style.display = 'none';
			document.getElementById('first').style.display = 'none';
			document.getElementById('fifth').style.display = 'none';
			document.getElementById('fourth').style.display = 'none';
			document.getElementById('form').style.display = 'none';

	 }
	 else if(document.getElementById('fourth1').checked == true) {  
		 document.getElementById('fourth').style.display = 'block';
			document.getElementById('second').style.display = 'none';
			document.getElementById('first').style.display = 'none';
			document.getElementById('fifth').style.display = 'none';
			document.getElementById('third').style.display = 'none';
			document.getElementById('form').style.display = 'none';

	 }
	 else if(document.getElementById('fifth1').checked == true) {  
		 document.getElementById('fifth').style.display = 'block';
			document.getElementById('second').style.display = 'none';
			document.getElementById('first').style.display = 'none';
			document.getElementById('third').style.display = 'none';
			document.getElementById('fourth').style.display = 'none';
			document.getElementById('form').style.display = 'none';

	 }
	 document.getElementById('hidden').style.display = 'block';


 }
	function myFunction1(){
		const hide=document.getElementById('hidden');
		const hide1=document.getElementById('hidden1');
		const hide2=document.getElementById('hidden2');
		const hide3=document.getElementById('hidden3');


		
		hide.style.display = 'none';
		hide1.style.display = 'none';
		hide2.style.display = 'none';
		hide3.style.display = 'none';


		window.print();
		location.reload();
		
	}

 </script>
 
 <div class="footer" id="hidden3" style="position:fixed;">
   <p> &copy KSSBM &nbsp; @ 2022 All Rights Reserved</p>
 </div> 
 </body>
 </html> 