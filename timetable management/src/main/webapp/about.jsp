<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@page import="com.timetable.dao.*" %>
<%@page import="com.timetable.helper.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About K.S.School</title>
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
	width: 70%;
	padding: 3% 3%;
	font-size:2.5vh;
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
</style>
</head>
<body>
<div style="padding-left:16px">
        <h2>About K.S.School</h2>
        
    </div>
   <div class="flex-container">
    <h3 class="h3-c">K S School Of Business Management</h3>
  <div>
    <p>
    K. S. School of Business Management is one of the pioneer institutes offering Integrated MBA and MSc (Computer Applications and Information Technology) in India. Established under the aegis of Gujarat University, KSSBM started with five year integrated programme in MBA in 1993, followed by five year integrated programme in MSc (CA and IT) in 1998. Both the programmes have grown in size and stature, attracting Gujarat state´s young budding students after their 12th standard from all walks of life.<br><br>
    Our mission at the school is "Igniting young minds to grow in terms of knowledge and wisdom and stand up high in the corporate world". With the support of syllabus updated to the latest changes in subject and content on the lines of CBCS pattern, project study and field study, students are nurtured and groomed in five years to meet the industry expectation. And this is made possible by the unconditional support of highly qualified faculty members who are endowed with rich experience in academia and industry with a single motive of "committed to contribute".<br><br>
    The institute is located in the rich flora and fauna environment of Gujarat University campus. The institute is equipped with state of the art facilities like LCD projectors, 3 computer laboratories with latest version of hardware and software, library with rich collection of books, journals and other learning aids.<br><br>
    Full fledged Placement Cell, under the guidance of faculty placement coordinator, is operational for each of the courses separately. The placement heads of the respective courses groom the students to face companies in interviews and facilitate students´ smooth transition from college to corporate. Over the years, our Alumni are spread across national and international borders.<br><br>
    To harness the skills and personality of students, the school constantly engages students in co-curricular and extra curricular activities. Academic and cultural events and competitions are held regularly, giving the students opportunity to show case their talents.<br><br>
</p>
 </div>
</div>

<% 
if(request.getParameter("re")!=null)
{
String id = request.getParameter("re");
		SignupDao sd1 = new SignupDao(ConnectionProvider.getConnection());
		
		if(sd1.deletefac(id)) {
			
			System.out.println("done");
			response.sendRedirect("re-fac.jsp");
		}
		else
		{
			System.out.println("pending");
			response.sendRedirect("about.jsp");
		}}%>

<%@include file="footer.jsp" %>