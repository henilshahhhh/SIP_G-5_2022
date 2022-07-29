<%@page import="com.timetable.helper.ThreeDArray"%>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,700;1,600&display=swap" rel="stylesheet">
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

button {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
	background-color: tomato;
}
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
	width: 30%;
	border-radius: 12px;
	font-weight: 600;
}

.login-btn:hover {
	border: 2px solid white;
	box-shadow: 0px 0px 23px 2px lightgreen;
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

</style>
</head>
<body>
	<div style="padding-left: 16px">
		<h2>K S School Of Business Management</h2>

	</div>

		<h3>Create Timetable</h3>
		<div>
		<% 
		
		SubjectDao s = new SubjectDao(ConnectionProvider.getConnection());
		ArrayList<Subject> sub = s.getsemwise(1);
		
		System.out.println(sub);
		%>
			<div class="container">
			


					<h2 class="year-heading" align="center">FIRST YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >




						<tr>
							
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday</th>
							<th class="tuesday-head">Tuesday</th>
							<th class="wednesday-head">Wednesday</th>
							<th class="thursday-head">Thursday</th>
							<th class="friday-head">Friday</th>
							<th class="saturday-head">Saturday</th>
						</tr>
						<tr>
							<th rowspan="3">9:00 To 10:30</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub.get(6).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub.get(6).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub.get(6).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub.get(6).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub.get(6).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub.get(6).getSname()%></td>
						</tr>
						<tr>
							<th rowspan="3">10:30 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub.get(7).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub.get(7).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub.get(7).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub.get(7).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub.get(7).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub.get(7).getSname()%></td>
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

						</tr> -->
						<!-- break 1 -->
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						<!-- break1 ends here -->
						
						<tr>
							<th rowspan="3">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub.get(8).getSname()%></td>
							<td class="tuesday"><%=sub.get(5).getSname()%></td>
							<td class="wednesday"><%=sub.get(8).getSname()%></td>
							<td class="thursday"><%=sub.get(5).getSname()%></td>
							<td class="friday"><%=sub.get(8).getSname()%></td>
							<td class="saturday"><%=sub.get(5).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub.get(0).getSname()%></td>
							<td class="tuesday"><%=sub.get(1).getSname()%></td>
							<td class="wednesday"><%=sub.get(0).getSname()%></td>
							<td class="thursday"><%=sub.get(1).getSname()%></td>
							<td class="friday"><%=sub.get(0).getSname()%></td>
							<td class="saturday"><%=sub.get(1).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub.get(2).getSname()%></td>
							<td class="tuesday"><%=sub.get(3).getSname()%></td>
							<td class="wednesday"><%=sub.get(2).getSname()%></td>
							<td class="thursday"><%=sub.get(3).getSname()%></td>
							<td class="friday"><%=sub.get(2).getSname()%></td>
							<td class="saturday"><%=sub.get(4).getSname()%></td>

						</tr>

						<tr>
							<th rowspan="3">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub.get(2).getSname()%></td>
							<td class="tuesday"><%=sub.get(3).getSname()%></td>
							<td class="wednesday"><%=sub.get(2).getSname()%></td>
							<td class="thursday"><%=sub.get(3).getSname()%></td>
							<td class="friday"><%=sub.get(2).getSname()%></td>
							<td class="saturday"><%=sub.get(4).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub.get(8).getSname()%></td>
							<td class="tuesday"><%=sub.get(5).getSname()%></td>
							<td class="wednesday"><%=sub.get(8).getSname()%></td>
							<td class="thursday"><%=sub.get(5).getSname()%></td>
							<td class="friday"><%=sub.get(8).getSname()%></td>
							<td class="saturday"><%=sub.get(5).getSname()%></td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub.get(0).getSname()%></td>
							<td class="tuesday"><%=sub.get(1).getSname()%></td>
							<td class="wednesday"><%=sub.get(0).getSname()%></td>
							<td class="thursday"><%=sub.get(1).getSname()%></td>
							<td class="friday"><%=sub.get(0).getSname()%></td>
							<td class="saturday"><%=sub.get(1).getSname()%></td>
						</tr>
						<!-- break 1 -->
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
					<!-- break1 ends here -->
						<tr>
							<th rowspan="3">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub.get(0).getSname()%></td>
							<td class="tuesday"><%=sub.get(1).getSname()%></td>
							<td class="wednesday"><%=sub.get(0).getSname()%></td>
							<td class="thursday"><%=sub.get(1).getSname()%></td>
							<td class="friday"><%=sub.get(0).getSname()%></td>
							<td class="saturday"><%=sub.get(1).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub.get(2).getSname()%></td>
							<td class="tuesday"><%=sub.get(3).getSname()%></td>
							<td class="wednesday"><%=sub.get(2).getSname()%></td>
							<td class="thursday"><%=sub.get(3).getSname()%></td>
							<td class="friday"><%=sub.get(2).getSname()%></td>
							<td class="saturday"><%=sub.get(4).getSname()%></td>

						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub.get(8).getSname()%></td>
							<td class="tuesday"><%=sub.get(5).getSname()%></td>
							<td class="wednesday"><%=sub.get(8).getSname()%></td>
							<td class="thursday"><%=sub.get(5).getSname()%></td>
							<td class="friday"><%=sub.get(8).getSname()%></td>
							<td class="saturday"><%=sub.get(5).getSname()%></td>						
							</tr>
						<tr>
							<th rowspan="3">3:40 TO 4:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub.get(4).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub.get(4).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub.get(4).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<!-- <tr>
							<th rowspan="3">4:00 To 5:00</th>
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
						</tr> -->

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
					

					<h2 class="year-heading" align="center">SECOND YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >
							<% 
		
								SubjectDao s1 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub1 = s1.getsemwise(3);
		
								System.out.println(sub);
							%>
		



						<tr>
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday</th>
							<th class="tuesday-head">Tuesday</th>
							<th class="wednesday-head">Wednesday</th>
							<th class="thursday-head">Thursday</th>
							<th class="friday-head">Friday</th>
							<th class="saturday-head">Saturday</th>
						</tr>
						<!-- <tr>
							<th rowspan="3">9:00 To 10:30</th>
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
						<tr>
							<th rowspan="3">10:30 To 12:00</th>
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
						</tr> -->
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

						</tr> -->
						<!-- break 1 -->
							<!-- <tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
	 -->					<!-- break1 ends here -->
						<tr>
							<th rowspan="3">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub1.get(0).getSname()%></td>
							<td class="tuesday"><%=sub1.get(5).getSname()%></td>
							<td class="wednesday"><%=sub1.get(0).getSname()%></td>
							<td class="thursday"><%=sub1.get(5).getSname()%></td>
							<td class="friday"><%=sub1.get(0).getSname()%></td>
							<td class="saturday"><%=sub1.get(5).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub1.get(8).getSname()%></td>
							<td class="tuesday"><%=sub1.get(6).getSname()%></td>
							<td class="wednesday"><%=sub1.get(8).getSname()%></td>
							<td class="thursday"><%=sub1.get(6).getSname()%></td>
							<td class="friday"><%=sub1.get(6).getSname()%></td>
							<td class="saturday"><%=sub1.get(1).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub1.get(3).getSname()%></td>
							<td class="tuesday"><%=sub1.get(2).getSname()%></td>
							<td class="wednesday"><%=sub1.get(3).getSname()%></td>
							<td class="thursday"><%=sub1.get(2).getSname()%></td>
							<td class="friday"><%=sub1.get(1).getSname()%></td>
							<td class="saturday"><%=sub1.get(2).getSname()%></td>

						</tr>

						<tr>
							<th rowspan="3">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub1.get(3).getSname()%></td>
							<td class="tuesday"><%=sub1.get(2).getSname()%></td>
							<td class="wednesday"><%=sub1.get(3).getSname()%></td>
							<td class="thursday"><%=sub1.get(2).getSname()%></td>
							<td class="friday"><%=sub1.get(1).getSname()%></td>
							<td class="saturday"><%=sub1.get(2).getSname()%></td>


						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub1.get(0).getSname()%></td>
							<td class="tuesday"><%=sub1.get(5).getSname()%></td>
							<td class="wednesday"><%=sub1.get(0).getSname()%></td>
							<td class="thursday"><%=sub1.get(5).getSname()%></td>
							<td class="friday"><%=sub1.get(0).getSname()%></td>
							<td class="saturday"><%=sub1.get(5).getSname()%></td>
							</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub1.get(8).getSname()%></td>
							<td class="tuesday"><%=sub1.get(6).getSname()%></td>
							<td class="wednesday"><%=sub1.get(8).getSname()%></td>
							<td class="thursday"><%=sub1.get(6).getSname()%></td>
							<td class="friday"><%=sub1.get(6).getSname()%></td>
							<td class="saturday"><%=sub1.get(1).getSname()%></td>
						</tr>
						<!-- break 1 -->
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
					<!-- break1 ends here -->
						<tr>
							<th rowspan="3">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub1.get(8).getSname()%></td>
							<td class="tuesday"><%=sub1.get(6).getSname()%></td>
							<td class="wednesday"><%=sub1.get(8).getSname()%></td>
							<td class="thursday"><%=sub1.get(6).getSname()%></td>
							<td class="friday"><%=sub1.get(6).getSname()%></td>
							<td class="saturday"><%=sub1.get(1).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub1.get(3).getSname()%></td>
							<td class="tuesday"><%=sub1.get(2).getSname()%></td>
							<td class="wednesday"><%=sub1.get(3).getSname()%></td>
							<td class="thursday"><%=sub1.get(2).getSname()%></td>
							<td class="friday"><%=sub1.get(1).getSname()%></td>
							<td class="saturday"><%=sub1.get(2).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub1.get(0).getSname()%></td>
							<td class="tuesday"><%=sub1.get(5).getSname()%></td>
							<td class="wednesday"><%=sub1.get(0).getSname()%></td>
							<td class="thursday"><%=sub1.get(5).getSname()%></td>
							<td class="friday"><%=sub1.get(0).getSname()%></td>
							<td class="saturday"><%=sub1.get(5).getSname()%></td>
						</tr>
						<tr>
							<th rowspan="3">3:40 TO 5:15</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub1.get(4).getSname()%></td>
							<td class="tuesday"><%=sub1.get(1).getSname()%></td>
							<td class="wednesday"><%=sub1.get(7).getSname()%></td>
							<td class="thursday"><%=sub1.get(4).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub1.get(7).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub1.get(7).getSname()%></td>
							<td class="tuesday"><%=sub1.get(4).getSname()%></td>
							<td class="wednesday"><%=sub1.get(1).getSname()%></td>
							<td class="thursday"><%=sub1.get(7).getSname()%></td>
							<td class="friday"><%=sub1.get(4).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub1.get(1).getSname()%></td>
							<td class="tuesday"><%=sub1.get(7).getSname()%></td>
							<td class="wednesday"><%=sub1.get(4).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub1.get(7).getSname()%></td>
							<td class="saturday"><%=sub1.get(4).getSname()%></td>
						</tr>
						<!-- <tr>
							<th rowspan="3">4:00 To 5:00</th>
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
						</tr> -->

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
					<h2 class="year-heading" align="center">THIRD YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >
							<% 
		
								SubjectDao s2 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub2 = s2.getsemwise(5);
		
								System.out.println(sub);
							%>
		



						<tr>
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday</th>
							<th class="tuesday-head">Tuesday</th>
							<th class="wednesday-head">Wednesday</th>
							<th class="thursday-head">Thursday</th>
							<th class="friday-head">Friday</th>
							<th class="saturday-head">Saturday</th>
						</tr>
						<tr>
							<th rowspan="3">9:00 To 10:30</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub2.get(3).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub2.get(3).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub2.get(3).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub2.get(3).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub2.get(3).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub2.get(3).getSname()%></td>
						</tr>
						<tr>
							<th rowspan="3">10:30 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub2.get(6).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub2.get(6).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub2.get(6).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub2.get(6).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub2.get(6).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub2.get(6).getSname()%></td>
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

						</tr> -->
						<!-- break 1 -->
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						<!-- break1 ends here -->
						<tr>
							<th rowspan="3">12:20 TO 1:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub2.get(0).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub2.get(0).getSname()%></td>
							<td class="thursday"><%=sub2.get(5).getSname()%></td>
							<td class="friday"><%=sub2.get(0).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub2.get(1).getSname()%></td>
							<td class="tuesday"><%=sub2.get(4).getSname()%></td>
							<td class="wednesday"><%=sub2.get(1).getSname()%></td>
							<td class="thursday"><%=sub2.get(4).getSname()%></td>
							<td class="friday"><%=sub2.get(1).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub2.get(2).getSname()%></td>
							<td class="tuesday"><%=sub2.get(5).getSname()%></td>
							<td class="wednesday"><%=sub2.get(2).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub2.get(2).getSname()%></td>
							<td class="saturday">PROJECT</td>

						</tr>

						<tr>
							<th rowspan="3">1:20 To 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub2.get(2).getSname()%></td>
							<td class="tuesday"><%=sub2.get(4).getSname()%></td>
							<td class="wednesday"><%=sub2.get(2).getSname()%></td>
							<td class="thursday"><%=sub2.get(4).getSname()%></td>
							<td class="friday"><%=sub2.get(2).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub2.get(0).getSname()%></td>
							<td class="tuesday"><%=sub2.get(5).getSname()%></td>
							<td class="wednesday"><%=sub2.get(0).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub2.get(0).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub2.get(1).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub2.get(1).getSname()%></td>
							<td class="thursday"><%=sub2.get(5).getSname()%></td>
							<td class="friday"><%=sub2.get(1).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<!-- break 1 -->
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
					<!-- break1 ends here -->
						<tr>
							<th rowspan="3">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub2.get(1).getSname()%></td>
							<td class="tuesday"><%=sub2.get(5).getSname()%></td>
							<td class="wednesday"><%=sub2.get(1).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub2.get(1).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub2.get(2).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub2.get(2).getSname()%></td>
							<td class="thursday"><%=sub2.get(5).getSname()%></td>
							<td class="friday"><%=sub2.get(2).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"><%=sub2.get(0).getSname()%></td>
							<td class="tuesday"><%=sub2.get(4).getSname()%></td>
							<td class="wednesday"><%=sub2.get(0).getSname()%></td>
							<td class="thursday"><%=sub2.get(4).getSname()%></td>
							<td class="friday"><%=sub2.get(0).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th rowspan="3">3:40 TO 4:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub2.get(5).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub2.get(5).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<tr>
							<th class="sub-div">DIV-C</th>
							<td class="monday"></td>
							<td class="tuesday"></td>
							<td class="wednesday"></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub2.get(5).getSname()%></td>
							<td class="saturday">PROJECT</td>
						</tr>
						<!-- <tr>
							<th rowspan="3">4:00 To 5:00</th>
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
						</tr> -->

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

					<!-- table three year ends here -->


					<!-- table of fourth year starts here  -->
					<h2 class="year-heading" align="center">FOURTH YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >

						<% 
		
								SubjectDao s3 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub3 = s3.getsemwise(7);
		
								
							%>
		


						<tr>
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday</th>
							<th class="tuesday-head">Tuesday</th>
							<th class="wednesday-head">Wednesday</th>
							<th class="thursday-head">Thursday</th>
							<th class="friday-head">Friday</th>
							<th class="saturday-head">Saturday</th>
						</tr>
						<tr>
							<th rowspan="2">9:00 To 10:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub3.get(0).getSname()%></td>
							<td class="tuesday"><%=sub3.get(7).getSname()%></td>
							<td class="wednesday"><%=sub3.get(0).getSname()%></td>
							<td class="thursday"><%=sub3.get(7).getSname()%></td>
							<td class="friday"><%=sub3.get(0).getSname()%></td>
							<td class="saturday"><%=sub3.get(4).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub3.get(3).getSname()%></td>
							<td class="tuesday"><%=sub3.get(1).getSname()%></td>
							<td class="wednesday"><%=sub3.get(3).getSname()%></td>
							<td class="thursday"><%=sub3.get(1).getSname()%></td>
							<td class="friday"><%=sub3.get(3).getSname()%></td>
							<td class="saturday"><%=sub3.get(1).getSname()%></td>
						</tr>
						
						<tr>
							<th rowspan="2">10:00 To 11:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub3.get(2).getSname()%></td>
							<td class="tuesday"><%=sub3.get(5).getSname()%></td>
							<td class="wednesday"><%=sub3.get(2).getSname()%></td>
							<td class="thursday"><%=sub3.get(5).getSname()%></td>
							<td class="friday"><%=sub3.get(2).getSname()%></td>
							<td class="saturday"><%=sub3.get(5).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub3.get(0).getSname()%></td>
							<td class="tuesday"><%=sub3.get(7).getSname()%></td>
							<td class="wednesday"><%=sub3.get(0).getSname()%></td>
							<td class="thursday"><%=sub3.get(7).getSname()%></td>
							<td class="friday"><%=sub3.get(0).getSname()%></td>
							<td class="saturday"><%=sub3.get(4).getSname()%></td>
	
						</tr>
						
						<tr>
							<th rowspan="2">11:00 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub3.get(3).getSname()%></td>
							<td class="tuesday"><%=sub3.get(1).getSname()%></td>
							<td class="wednesday"><%=sub3.get(3).getSname()%></td>
							<td class="thursday"><%=sub3.get(1).getSname()%></td>
							<td class="friday"><%=sub3.get(3).getSname()%></td>
							<td class="saturday"><%=sub3.get(1).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub3.get(2).getSname()%></td>
							<td class="tuesday"><%=sub3.get(5).getSname()%></td>
							<td class="wednesday"><%=sub3.get(2).getSname()%></td>
							<td class="thursday"><%=sub3.get(5).getSname()%></td>
							<td class="friday"><%=sub3.get(2).getSname()%></td>
							<td class="saturday"><%=sub3.get(5).getSname()%></td>
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

						</tr> -->
						<!-- break 1 -->
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						<!-- break1 ends here -->
						<tr>
							<th rowspan="2">12:20 TO 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub3.get(6).getSname()%></td>
							<td class="tuesday"><%=sub3.get(4).getSname()%></td>
							<td class="wednesday"><%=sub3.get(6).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub3.get(6).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub3.get(4).getSname()%></td>
							<td class="tuesday"><%=sub3.get(6).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub3.get(6).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub3.get(6).getSname()%></td>
						</tr>
						
						
						<!-- break 1 -->
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
					<!-- break1 ends here -->
						<tr>
							<th rowspan="2">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub3.get(6).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub3.get(6).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub3.get(6).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub3.get(6).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub3.get(6).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub3.get(6).getSname()%></td>
						</tr>
						
						
						<!-- <tr>
							<th rowspan="3">4:00 To 5:00</th>
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
						</tr> -->

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
					<!-- fourth year table ends here -->
					<h2 class="year-heading" align="center">FIFTH YEAR M.Sc (CA&IT)</h2>

					<table border="1" align="center" width="90%" >
							<% 
		
								SubjectDao s4 = new SubjectDao(ConnectionProvider.getConnection());
								ArrayList<Subject> sub4 = s4.getsemwise(9);
		
								
							%>
						



						<tr>
							<th>Time</th>
							<th class="sub-div"></th>
							<th class="monday-head">Monday</th>
							<th class="tuesday-head">Tuesday</th>
							<th class="wednesday-head">Wednesday</th>
							<th class="thursday-head">Thursday</th>
							<th class="friday-head">Friday</th>
							<th class="saturday-head">Saturday</th>
						</tr>
						<tr>
							<th rowspan="2">9:00 To 10:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub4.get(2).getSname()%></td>
							<td class="tuesday"><%=sub4.get(4).getSname()%></td>
							<td class="wednesday"><%=sub4.get(2).getSname()%></td>
							<td class="thursday"><%=sub4.get(1).getSname()%></td>
							<td class="friday"><%=sub4.get(2).getSname()%></td>
							<td class="saturday"><%=sub4.get(1).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub4.get(3).getSname()%></td>
							<td class="tuesday"><%=sub4.get(7).getSname()%></td>
							<td class="wednesday"><%=sub4.get(3).getSname()%></td>
							<td class="thursday"><%=sub4.get(7).getSname()%></td>
							<td class="friday"><%=sub4.get(3).getSname()%></td>
							<td class="saturday"><%=sub4.get(7).getSname()%></td>
						</tr>
						
						<tr>
							<th rowspan="2">10:00 To 11:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub4.get(0).getSname()%></td>
							<td class="tuesday"><%=sub4.get(5).getSname()%></td>
							<td class="wednesday"><%=sub4.get(0).getSname()%></td>
							<td class="thursday"><%=sub4.get(5).getSname()%></td>
							<td class="friday"><%=sub4.get(0).getSname()%></td>
							<td class="saturday"><%=sub4.get(5).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub4.get(2).getSname()%></td>
							<td class="tuesday"><%=sub4.get(4).getSname()%></td>
							<td class="wednesday"><%=sub4.get(2).getSname()%></td>
							<td class="thursday"><%=sub4.get(1).getSname()%></td>
							<td class="friday"><%=sub4.get(2).getSname()%></td>
							<td class="saturday"><%=sub4.get(1).getSname()%></td>
						</tr>
						
						<tr>
							<th rowspan="2">11:00 To 12:00</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub4.get(3).getSname()%></td>
							<td class="tuesday"><%=sub4.get(7).getSname()%></td>
							<td class="wednesday"><%=sub4.get(3).getSname()%></td>
							<td class="thursday"><%=sub4.get(7).getSname()%></td>
							<td class="friday"><%=sub4.get(3).getSname()%></td>
							<td class="saturday"><%=sub4.get(7).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub4.get(0).getSname()%></td>
							<td class="tuesday"><%=sub4.get(5).getSname()%></td>
							<td class="wednesday"><%=sub4.get(0).getSname()%></td>
							<td class="thursday"><%=sub4.get(5).getSname()%></td>
							<td class="friday"><%=sub4.get(0).getSname()%></td>
							<td class="saturday"><%=sub4.get(5).getSname()%></td>
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

						</tr> -->
						<!-- break 1 -->
							<tr>
								<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 12:00 TO 12:20</th>
								
							</tr>
							<tr>
								
							</tr>
							<tr>
								
	
							</tr>
						<!-- break1 ends here -->
						<tr>
							<th rowspan="2">12:20 TO 2:20</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"><%=sub4.get(4).getSname()%></td>
							<td class="tuesday"><%=sub4.get(6).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub4.get(6).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub4.get(6).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub4.get(6).getSname()%></td>
							<td class="tuesday"><%=sub4.get(4).getSname()%></td>
							<td class="wednesday"><%=sub4.get(6).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub4.get(6).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						
						
						<!-- break 1 -->
						<tr>
							<th style="background: rgb(160, 62, 160);" rowspan="3" colspan="12">Break: 2:20 TO 2:40</th>
							
						</tr>
						<tr>
							
						</tr>
						<tr>
							

						</tr>
					<!-- break1 ends here -->
						<tr>
							<th rowspan="2">2:40 to 3:40</th>
							<th class="sub-div">DIV-A</th>
							<td class="monday"></td>
							<td class="tuesday"><%=sub4.get(6).getSname()%></td>
							<td class="wednesday"></td>
							<td class="thursday"><%=sub4.get(6).getSname()%></td>
							<td class="friday"></td>
							<td class="saturday"><%=sub4.get(6).getSname()%></td>
						</tr>
						<tr>
							<th class="sub-div">DIV-B</th>
							<td class="monday"><%=sub4.get(6).getSname()%></td>
							<td class="tuesday"></td>
							<td class="wednesday"><%=sub4.get(6).getSname()%></td>
							<td class="thursday"></td>
							<td class="friday"><%=sub4.get(6).getSname()%></td>
							<td class="saturday"></td>
						</tr>
						 
						
						<!-- <tr>
							<th rowspan="3">4:00 To 5:00</th>
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
						</tr> -->


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
		</div>
		<div id="darshil" style="width:50%;margin:1% auto;border: 2px solid black;padding:1% 2%;display:none;">
		<div id="myProgress">
  		<div id="myBar"></div>
		</div>
		</div>

		
		<center>
		<button class="login-btn" id="darshil1" onclick="myFunction1()" >Check Conflict</button>
		
		</center>
<script type="text/javascript">

var i = 0;
function move() {
  if (i == 0) {
    i = 1;
    var elem = document.getElementById("myBar");
    var width = 1;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= 100) {
        clearInterval(id);
        i = 0;
        alert("No Conflict Detected");
		//location.reload();
		document.getElementById('darshil1').style.display = 'none';
		document.getElementById('darshil').style.display = 'none';

      } else {
        width++;
        elem.style.width = width + "%";
        
      }
    }
  }
}

	function myFunction1() {
	document.getElementById('darshil').style.display = 'block';
	move();
	}
	function myFunction(){
		window.print();

		
	}

</script>



	<%@include file="footer.jsp"%>