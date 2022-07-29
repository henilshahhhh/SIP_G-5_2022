<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="faculty.jsp" %>
<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@page import="com.timetable.dao.*"%>
<%@page import="com.timetable.entity.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
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

/* Add a hover effect for buttons */
button:hover {
 
  background-color: tomato;
}
</style>
</head>
<body>
	<div style="padding-left:16px">
        <h2>K S School Of Business Management</h2><br><br>
        
    </div>
    <div class="flex-container">

    
  	<div>
    <div class="container">
	
<%

SignupDao s = new SignupDao(ConnectionProvider.getConnection());
List<Users> use = s.getfac();
SubjectDao s1 = new SubjectDao(ConnectionProvider.getConnection());

ArrayList<Subject> sub = s1.getsemwise(1);
ArrayList<Subject> sub2 = s1.getsemwise(5);
ArrayList<Subject> sub3 = s1.getsemwise(3);
ArrayList<Subject> sub5 = s1.getsemwise(9);
ArrayList<Subject> sub4 = s1.getsemwise(7);




	
%>

	
<center>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(0).getuName()%></th><br></label><br>
</center>




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
	
	<td class="monday">
	<%=sub.get(6).getSname()%>
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday">
	<%=sub.get(6).getSname()%>
</td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday"></td>
	<td class="tuesday">	<%=sub.get(6).getSname()%>
</td>
	<td class="wednesday"></td>
	<td class="thursday"></td>
	<td class="friday">	<%=sub.get(6).getSname()%>
</td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-C</th>
	<td class="monday"></td>
	<td class="tuesday"></td>
	<td class="wednesday">	<%=sub.get(6).getSname()%>
</td>
	<td class="thursday"></td>
	<td class="friday"></td>
	<td class="saturday">	<%=sub.get(6).getSname()%>
</td>
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

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(1).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">10:30 To 12:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	<%=sub.get(7).getSname()%>
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday">
	<%=sub.get(7).getSname()%>
</td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday"></td>
	<td class="tuesday">	<%=sub.get(7).getSname()%>
</td>
	<td class="wednesday"></td>
	<td class="thursday"></td>
	<td class="friday">	<%=sub.get(7).getSname()%>
</td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-C</th>
	<td class="monday"></td>
	<td class="tuesday"></td>
	<td class="wednesday">	<%=sub.get(7).getSname()%>
</td>
	<td class="thursday"></td>
	<td class="friday"></td>
	<td class="saturday">	<%=sub.get(7).getSname()%>
</td>
</tr>
<tr>
	<th rowspan="3">12:20 To 1:20</th>
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
	<td class="saturday"><%=sub3.get(1).getSname()%></td>
</tr>
<tr>
	<th class="sub-div">DIV-C</th>
	<td class="monday"></td>
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday"></td>
	<td class="friday"><%=sub3.get(1).getSname()%></td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">1:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"><%=sub3.get(1).getSname()%></td>
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
<td class="saturday"><%=sub3.get(1).getSname()%></td>
</tr>
<tr>
<th rowspan="3">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"><%=sub3.get(1).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"><%=sub3.get(1).getSname()%></td>
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
<th rowspan="3">3:40 To 5:15</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub3.get(1).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(1).getSname()%></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-C</th>
<td class="monday"><%=sub3.get(1).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>


</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(2).getuName()%></th><br></label><br>
</center>




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
<th rowspan="2">10:00 To 11:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">

</td>


<td class="tuesday"><%=sub5.get(5).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday">
<%=sub5.get(5).getSname()%>
</td>
<td class="friday"></td>
<td class="saturday"><%=sub5.get(5).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday">	
</td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday">	
</td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="2">11:00 To 12:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">

</td>


<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday">

</td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"><%=sub5.get(5).getSname()%>
</td>
<td class="wednesday"></td>
<td class="thursday"><%=sub5.get(5).getSname()%></td>
<td class="friday">	
</td>
<td class="saturday"><%=sub5.get(5).getSname()%></td>
</tr>

<tr>
<th rowspan="2">12:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub5.get(6).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub5.get(6).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub5.get(6).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"><%=sub5.get(6).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub5.get(6).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub5.get(6).getSname()%></td>
<td class="saturday"></td>
</tr>

<tr>
<th rowspan="2">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub5.get(6).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub5.get(6).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub5.get(6).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"><%=sub5.get(6).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub5.get(6).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub5.get(6).getSname()%></td>
<td class="saturday"></td>
</tr>


</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(3).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">09:00 To 10:30</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	<%=sub2.get(3).getSname()%>
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday">
	<%=sub2.get(3).getSname()%>
</td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday"></td>
	<td class="tuesday">	<%=sub2.get(3).getSname()%>
</td>
	<td class="wednesday"></td>
	<td class="thursday"></td>
	<td class="friday">	<%=sub2.get(3).getSname()%>
</td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-C</th>
	<td class="monday"></td>
	<td class="tuesday"></td>
	<td class="wednesday">	<%=sub2.get(3).getSname()%>
</td>
	<td class="thursday"></td>
	<td class="friday"></td>
	<td class="saturday">	<%=sub2.get(3).getSname()%>
</td>
</tr>
<tr>
	<th rowspan="3">12:20 To 1:20</th>
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
	<td class="tuesday"><%=sub3.get(6).getSname()%></td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub3.get(6).getSname()%></td>
	<td class="friday"><%=sub3.get(6).getSname()%></td>
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
<th rowspan="3">1:20 To 2:20</th>
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
<td class="tuesday"><%=sub3.get(6).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub3.get(6).getSname()%></td>
<td class="friday"><%=sub3.get(6).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub3.get(6).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub3.get(6).getSname()%></td>
<td class="friday"><%=sub3.get(6).getSname()%></td>
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


</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(4).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="2">09:00 To 10:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday">

</td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday"></td>
	<td class="tuesday"><%=sub4.get(1).getSname()%>	
</td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub4.get(1).getSname()%></td>
	<td class="friday">	
</td>
	<td class="saturday"><%=sub4.get(1).getSname()%></td>
</tr>
<tr>
<th rowspan="2">11:00 To 12:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">

</td>


<td class="tuesday"><%=sub4.get(1).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday">
<%=sub4.get(1).getSname()%>
</td>
<td class="friday"></td>
<td class="saturday"><%=sub4.get(1).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday">
</td>
<td class="wednesday"></td>
<td class="thursday">
<td class="friday">	
</td>
<td class="saturday">
</tr>
<tr>
<th rowspan="3">12:20 To 1:20</th>
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
<td class="monday"><%=sub.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub.get(0).getSname()%></td>
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
<th rowspan="3">1:20 To 2:20</th>
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
<td class="monday"><%=sub.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub.get(0).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub.get(0).getSname()%></td>
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

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(5).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="2">09:00 To 10:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday">

</td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday"></td>
	<td class="tuesday"><%=sub5.get(7).getSname()%>	
</td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub5.get(7).getSname()%></td>
	<td class="friday">	
</td>
	<td class="saturday"><%=sub5.get(7).getSname()%></td>
</tr>
<tr>
<th rowspan="2">11:00 To 12:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">

</td>


<td class="tuesday"><%=sub5.get(7).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday">
<%=sub5.get(7).getSname()%>
</td>
<td class="friday"></td>
<td class="saturday"><%=sub5.get(7).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday">
</td>
<td class="wednesday"></td>
<td class="thursday">
<td class="friday">	
</td>
<td class="saturday">
</tr>
<tr>
<th rowspan="3">12:20 To 1:20</th>
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
<td class="monday"><%=sub2.get(2).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(2).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(2).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">1:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub2.get(2).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(2).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(2).getSname()%></td>
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
<th rowspan="3">2:40 To 3:40</th>
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
<td class="monday"><%=sub2.get(2).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(2).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(2).getSname()%></td>
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

</table>

<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(6).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">12:20 To 1:20</th>
	<th class="sub-div">DIV-A</th>
	<td class="monday"><%=sub3.get(0).getSname()%></td>
	<td class="tuesday"></td>
	<td class="wednesday"><%=sub3.get(0).getSname()%></td>
	<td class="thursday"></td>
	<td class="friday"><%=sub3.get(0).getSname()%></td>
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
	<td class="tuesday"><%=sub.get(3).getSname()%></td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub.get(3).getSname()%></td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">1:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub.get(3).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub.get(3).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"><%=sub3.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub3.get(0).getSname()%></td>
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
<th rowspan="3">2:40 To 3:40</th>
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
<td class="tuesday"><%=sub.get(3).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub.get(3).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-C</th>
<td class="monday"><%=sub3.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub3.get(0).getSname()%></td>
<td class="saturday"></td>
</tr>
</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(7).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">12:20 To 1:20</th>
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
	<td class="monday"><%=sub.get(2).getSname()%></td>
	<td class="tuesday"><%=sub3.get(2).getSname()%></td>
	<td class="wednesday"><%=sub.get(2).getSname()%></td>
	<td class="thursday"><%=sub3.get(2).getSname()%></td>
	<td class="friday"><%=sub.get(2).getSname()%></td>
	<td class="saturday"><%=sub3.get(2).getSname()%></td>
</tr>
<tr>
<th rowspan="3">1:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub.get(2).getSname()%></td>
<td class="tuesday"><%=sub3.get(2).getSname()%></td>
<td class="wednesday"><%=sub.get(2).getSname()%></td>
<td class="thursday"><%=sub3.get(2).getSname()%></td>
<td class="friday"><%=sub.get(2).getSname()%></td>
<td class="saturday"><%=sub3.get(2).getSname()%></td>
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
<th rowspan="3">2:40 To 3:40</th>
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
<td class="monday"><%=sub.get(2).getSname()%></td>
<td class="tuesday"><%=sub3.get(2).getSname()%></td>
<td class="wednesday"><%=sub.get(2).getSname()%></td>
<td class="thursday"><%=sub3.get(2).getSname()%></td>
<td class="friday"><%=sub.get(2).getSname()%></td>
<td class="saturday"><%=sub3.get(2).getSname()%></td>
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
</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(8).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">12:20 To 1:20</th>
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
	<td class="tuesday"><%=sub.get(1).getSname()%></td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub.get(1).getSname()%></td>
	<td class="friday"></td>
	<td class="saturday"><%=sub.get(1).getSname()%></td>
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
<th rowspan="3">1:20 To 2:20</th>
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
<td class="tuesday"><%=sub.get(1).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub.get(1).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub.get(1).getSname()%></td>
</tr>
<tr>
<th rowspan="3">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub.get(1).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub.get(1).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub.get(1).getSname()%></td>
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
<th rowspan="3">3:40 To 5:15</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(7).getSname()%></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"><%=sub3.get(7).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"><%=sub3.get(7).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub3.get(7).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-C</th>
<td class="monday"></td>
<td class="tuesday"><%=sub3.get(7).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"><%=sub3.get(7).getSname()%></td>
<td class="saturday"></td>
</tr>

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(9).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="2">09:00 To 10:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday">

</td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday"><%=sub5.get(3).getSname()%>	</td>
	<td class="tuesday">
</td>
	<td class="wednesday"><%=sub5.get(3).getSname()%>	</td>
	<td class="thursday"></td>
	<td class="friday">	<%=sub5.get(3).getSname()%>	
</td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="2">11:00 To 12:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">
<%=sub5.get(3).getSname()%>	
</td>


<td class="tuesday"></td>
<td class="wednesday"><%=sub5.get(3).getSname()%>	</td>
<td class="thursday">

</td>
<td class="friday"><%=sub5.get(3).getSname()%>	</td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday">
</td>
<td class="wednesday"></td>
<td class="thursday">
<td class="friday">	
</td>
<td class="saturday">
</tr>
<tr>
<th rowspan="3">12:20 To 1:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub2.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(0).getSname()%></td>
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
<th rowspan="3">1:20 To 2:20</th>
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
<td class="monday"><%=sub2.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(0).getSname()%></td>
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
<th rowspan="3">2:40 To 3:40</th>
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
<td class="monday"><%=sub2.get(0).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(0).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(0).getSname()%></td>
<td class="saturday"></td>
</tr>

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(10).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="2">09:00 To 10:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub5.get(1).getSname()%>	</td>
	<td class="friday"></td>
	<td class="saturday"><%=sub5.get(1).getSname()%>	</td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday"><%=sub4.get(3).getSname()%>	</td>
	<td class="tuesday">
</td>
	<td class="wednesday"><%=sub4.get(3).getSname()%>		</td>
	<td class="thursday"></td>
	<td class="friday">	<%=sub4.get(3).getSname()%>		
</td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="2">10:00 To 11:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">

</td>


<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday">
<%=sub5.get(1).getSname()%>
</td>
<td class="friday"></td>
<td class="saturday"><%=sub5.get(1).getSname()%></td>
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
<th rowspan="2">11:00 To 12:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">
<%=sub4.get(3).getSname()%>	
</td>


<td class="tuesday"></td>
<td class="wednesday"><%=sub4.get(3).getSname()%>		</td>
<td class="thursday">

</td>
<td class="friday"><%=sub4.get(3).getSname()%>		</td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday">
</td>
<td class="wednesday"></td>
<td class="thursday">
<td class="friday">	
</td>
<td class="saturday">
</tr>
<tr>
<th rowspan="3">12:20 To 1:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub2.get(5).getSname()%></td>
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
<td class="tuesday"><%=sub2.get(5).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">1:20 To 2:20</th>
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
<td class="tuesday"><%=sub2.get(5).getSname()%></td>
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
<td class="thursday"><%=sub2.get(5).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub2.get(5).getSname()%></td>
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
<td class="thursday"><%=sub2.get(5).getSname()%></td>
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
<th rowspan="3">3:40 To 4:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub2.get(5).getSname()%></td>
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
<td class="thursday"><%=sub2.get(5).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-C</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(5).getSname()%></td>
<td class="saturday"></td>
</tr>

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(11).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">12:20 To 1:20</th>
	<th class="sub-div">DIV-A</th>
	<td class="monday"><%=sub.get(8).getSname()%></td>
	<td class="tuesday"><%=sub3.get(5).getSname()%></td>
	<td class="wednesday"><%=sub.get(8).getSname()%></td>
	<td class="thursday"><%=sub3.get(5).getSname()%></td>
	<td class="friday"><%=sub.get(8).getSname()%></td>
	<td class="saturday"><%=sub3.get(5).getSname()%></td>
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
<th rowspan="3">1:20 To 2:20</th>
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
<td class="monday"><%=sub.get(8).getSname()%></td>
<td class="tuesday"><%=sub3.get(5).getSname()%></td>
<td class="wednesday"><%=sub.get(8).getSname()%></td>
<td class="thursday"><%=sub3.get(5).getSname()%></td>
<td class="friday"><%=sub.get(8).getSname()%></td>
<td class="saturday"><%=sub3.get(5).getSname()%></td>
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
<th rowspan="3">2:40 To 3:40</th>
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
<td class="monday"><%=sub.get(8).getSname()%></td>
<td class="tuesday"><%=sub3.get(5).getSname()%></td>
<td class="wednesday"><%=sub.get(8).getSname()%></td>
<td class="thursday"><%=sub3.get(5).getSname()%></td>
<td class="friday"><%=sub.get(8).getSname()%></td>
<td class="saturday"><%=sub3.get(5).getSname()%></td>
</tr>
<tr>
</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(12).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">12:20 To 1:20</th>
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
	<td class="monday"><%=sub2.get(1).getSname()%></td>
	<td class="tuesday"></td>
	<td class="wednesday"><%=sub2.get(1).getSname()%></td>
	<td class="thursday"></td>
	<td class="friday"><%=sub2.get(1).getSname()%></td>
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
<th rowspan="3">1:20 To 2:20</th>
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
<td class="monday"><%=sub2.get(1).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(1).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(1).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub2.get(1).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub2.get(1).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub2.get(1).getSname()%></td>
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
<tr>
<th rowspan="3">3:40 To 5:15</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub3.get(4).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub3.get(4).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"><%=sub3.get(4).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"><%=sub3.get(4).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-C</th>
<td class="monday"></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(4).getSname()%></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"><%=sub3.get(4).getSname()%></td>
</tr>
<tr>

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(13).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="2">09:00 To 10:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	<%=sub5.get(2).getSname()%>
	</td>

	
	<td class="tuesday"></td>
	<td class="wednesday"><%=sub5.get(2).getSname()%></td>
	<td class="thursday">	</td>
	<td class="friday"><%=sub5.get(2).getSname()%></td>
	<td class="saturday"><%=sub4.get(4).getSname()%>	</td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday">	</td>
	<td class="tuesday">
</td>
	<td class="wednesday">	</td>
	<td class="thursday"></td>
	<td class="friday">			
</td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="2">10:00 To 11:00</th>
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
<td class="monday">
<%=sub5.get(2).getSname()%>
</td>


<td class="tuesday"></td>
<td class="wednesday"><%=sub5.get(2).getSname()%></td>
<td class="thursday">

</td>
<td class="friday"><%=sub5.get(2).getSname()%></td>
<td class="saturday"><%=sub4.get(4).getSname()%></td>

</tr>
<tr>
<th rowspan="2">12:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub4.get(4).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"><%=sub4.get(4).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(14).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="2">10:00 To 11:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	<%=sub5.get(0).getSname()%>
	</td>

	
	<td class="tuesday"><%=sub4.get(5).getSname()%></td>
	<td class="wednesday"><%=sub5.get(0).getSname()%></td>
	<td class="thursday"><%=sub4.get(5).getSname()%>	</td>
	<td class="friday"><%=sub5.get(0).getSname()%></td>
	<td class="saturday"><%=sub4.get(5).getSname()%>	</td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday">	</td>
	<td class="tuesday">
</td>
	<td class="wednesday">	</td>
	<td class="thursday"></td>
	<td class="friday">			
</td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="2">11:00 To 12:00</th>
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
<td class="monday">
<%=sub5.get(0).getSname()%>
</td>


<td class="tuesday"><%=sub4.get(5).getSname()%></td>
<td class="wednesday"><%=sub5.get(0).getSname()%></td>
<td class="thursday">
<%=sub4.get(5).getSname()%>
</td>
<td class="friday"><%=sub5.get(0).getSname()%></td>
<td class="saturday"><%=sub4.get(5).getSname()%></td>

</tr>
</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(15).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">12:20 To 1:20</th>
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
	<td class="tuesday"><%=sub2.get(4).getSname()%></td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub2.get(4).getSname()%></td>
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
	<td class="saturday"><%=sub.get(4).getSname()%></td>
</tr>
<tr>
<th rowspan="3">1:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub2.get(4).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub2.get(4).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub.get(4).getSname()%></td>
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
<th rowspan="3">2:40 To 3:40</th>
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
<td class="saturday"><%=sub.get(4).getSname()%></td>
</tr>
<tr>
<th class="sub-div">DIV-C</th>
<td class="monday"></td>
<td class="tuesday"><%=sub2.get(4).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub2.get(4).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">3:40 To 4:40</th>
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

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(16).getuName()%></th><br></label><br>
</center>




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
<th rowspan="2">09:00 To 10:00</th>
<th class="sub-div">DIV-A</th>
<td class="monday"></td>
<td class="tuesday"><%=sub4.get(7).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub4.get(7).getSname()%></td>
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
<th rowspan="2">10:00 To 11:00</th>
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
<td class="tuesday"><%=sub4.get(7).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub4.get(7).getSname()%></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>


<tr>
	<th rowspan="3">12:20 To 1:20</th>
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
	<td class="monday"><%=sub3.get(8).getSname()%></td>
	<td class="tuesday"></td>
	<td class="wednesday"><%=sub3.get(8).getSname()%></td>
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
<th rowspan="3">1:20 To 2:20</th>
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
<td class="monday"><%=sub3.get(8).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(8).getSname()%></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub3.get(8).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(8).getSname()%></td>
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

</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(17).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="2">09:00 To 10:00</th>
	<th class="sub-div">DIV-A</th>
	
	<td class="monday">
	<%=sub4.get(0).getSname()%>
	</td>

	
	<td class="tuesday"><%=sub5.get(4).getSname()%></td>
	<td class="wednesday"><%=sub4.get(0).getSname()%></td>
	<td class="thursday">	</td>
	<td class="friday"><%=sub4.get(0).getSname()%></td>
	<td class="saturday"></td>
</tr>
<tr>
	<th class="sub-div">DIV-B</th>
	<td class="monday">	</td>
	<td class="tuesday">
</td>
	<td class="wednesday">	</td>
	<td class="thursday"></td>
	<td class="friday">			
</td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="2">10:00 To 11:00</th>
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
<td class="monday">
<%=sub4.get(0).getSname()%>
</td>


<td class="tuesday"><%=sub5.get(4).getSname()%></td>
<td class="wednesday"><%=sub4.get(0).getSname()%></td>
<td class="thursday">

</td>
<td class="friday"><%=sub4.get(0).getSname()%></td>
<td class="saturday"></td>

</tr>
<tr>
<th rowspan="2">12:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub5.get(4).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"><%=sub5.get(4).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(18).getuName()%></th><br></label><br>
</center>




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
	<th rowspan="3">12:20 To 1:20</th>
	<th class="sub-div">DIV-A</th>
	<td class="monday"></td>
	<td class="tuesday"><%=sub.get(5).getSname()%></td>
	<td class="wednesday"></td>
	<td class="thursday"><%=sub.get(5).getSname()%></td>
	<td class="friday"></td>
	<td class="saturday"><%=sub.get(5).getSname()%></td>
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
	<td class="monday"><%=sub3.get(3).getSname()%></td>
	<td class="tuesday"></td>
	<td class="wednesday"><%=sub3.get(3).getSname()%></td>
	<td class="thursday"></td>
	<td class="friday"></td>
	<td class="saturday"></td>
</tr>
<tr>
<th rowspan="3">1:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub3.get(3).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(3).getSname()%></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"><%=sub.get(5).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub.get(5).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub.get(5).getSname()%></td>
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
<th rowspan="3">2:40 To 3:40</th>
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
<td class="monday"><%=sub3.get(3).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub3.get(3).getSname()%></td>
<td class="thursday"></td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-C</th>
<td class="monday"></td>
<td class="tuesday"><%=sub.get(5).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub.get(5).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub.get(5).getSname()%></td>
</tr>
</table>
<center>
<br>
<label class="login-btn">Faculty name:
<th class="thursday"><%=use.get(19).getuName()%></th><br></label><br>
</center>




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
<th rowspan="2">10:00 To 11:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">
<%=sub4.get(2).getSname()%>
</td>


<td class="tuesday"></td>
<td class="wednesday"><%=sub4.get(2).getSname()%></td>
<td class="thursday">

</td>
<td class="friday"><%=sub4.get(2).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday">	
</td>
<td class="wednesday"></td>
<td class="thursday"></td>
<td class="friday">	
</td>
<td class="saturday"></td>
</tr>
<tr>
<th rowspan="2">11:00 To 12:00</th>
<th class="sub-div">DIV-A</th>

<td class="monday">

</td>


<td class="tuesday"></td>
<td class="wednesday"></td>
<td class="thursday">

</td>
<td class="friday"></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"><%=sub4.get(2).getSname()%></td>
<td class="tuesday">
</td>
<td class="wednesday"><%=sub4.get(2).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub4.get(2).getSname()%>	
</td>
<td class="saturday"></td>
</tr>

<tr>
<th rowspan="2">12:20 To 2:20</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub4.get(6).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub4.get(6).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub4.get(6).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"><%=sub4.get(6).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub4.get(6).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub4.get(6).getSname()%></td>
</tr>

<tr>
<th rowspan="2">2:40 To 3:40</th>
<th class="sub-div">DIV-A</th>
<td class="monday"><%=sub4.get(6).getSname()%></td>
<td class="tuesday"></td>
<td class="wednesday"><%=sub4.get(6).getSname()%></td>
<td class="thursday"></td>
<td class="friday"><%=sub4.get(6).getSname()%></td>
<td class="saturday"></td>
</tr>
<tr>
<th class="sub-div">DIV-B</th>
<td class="monday"></td>
<td class="tuesday"><%=sub4.get(6).getSname()%></td>
<td class="wednesday"></td>
<td class="thursday"><%=sub4.get(6).getSname()%></td>
<td class="friday"></td>
<td class="saturday"><%=sub4.get(6).getSname()%></td>
</tr>


</table>



     </div>
  </div>
</div>
<%@include file="footer.jsp" %>