<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.timetable.entity.Users" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
@font-face {
  font-family: myFont;
  src: url(OpenSans-Light.ttf);
}
		 body {
		 	font-family:myFont;
            margin: 0;
        }

        .topnav {
            overflow: hidden;
            background: linear-gradient(44deg, #FB91EF, #f9ff87, #c0deff, #a7ffa7, #f3a6f3, #f2f7cf);
            -webkit-animation: hue 10s infinite linear;
        }


        .topnav a {
                float: left;
    color: #000000;
    background: #ffffff00;
    text-align: center;
    /* padding: 14px 16px; */
    /* border-left: 2px solid rgb(0, 0, 0); */
    text-decoration: auto;
    font-size: 17px;
    border: 3px solid white;
    transition: transform 1.2s;
    background: #ffffffa1;
    border-right: none;
    padding: 25px;
        }

        @-webkit-keyframes hue {
            from {
                -webkit-filter: hue-rotate(0deg);
            }

            to {
                -webkit-filter: hue-rotate(-360deg);
            }

        }

        .topnav a:hover {
    background-color: rgb(255 255 255 / 24%);
    color: black;
    border: 3px solid white;
    transform: scale(0.8);
}
        .topnav-right {
            float: right;
        }
        .footer {
  
     bottom: 0px;
    background: linear-gradient(44deg, #FB91EF, #f9ff87, #c0deff, #a7ffa7, #f3a6f3, #f2f7cf);
    -webkit-animation: hue 10s infinite linear;
    padding: 10px;
    margin: 6px 0px;
    font-size: 1rem;
    width: -webkit-fill-available;
    align-items: center;
  
    color: black;
    text-align: center;
    margin-bottom: 0px;
}
	</style>
</head>
<body>
	<div class="topnav" id="hidden2">
        <img src="ks logo.png" width="100"></img>
        <div class="topnav-right">
           <a href="home.jsp">HOME</a>
            <a href="contact.jsp">CONTACT</a>
            <a href="about.jsp">ABOUT</a>
            <a href="signup.jsp">SIGNUP</a>
            <%  Users user =(Users) session.getAttribute("currentUser"); %>
            <% if(user == null){ %>
            
            <a href="login.jsp">LOGIN</a>
            <%} else { %>
             
             
            <a href="LogoutServlet">LOGOUT</a>
            <% } %>
        </div>
    </div>


</body>
</html>