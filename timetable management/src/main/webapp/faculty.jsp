<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty</title>
<style >
	*{
            padding: 0;
            margin:0;
            box-sizing: border-box;
        }
        .menubar{
           background: white;
			text-align: center;
			font-family: sans-serif;
			margin: 2% 1%;

        }
        .menubar ul{
            display: inline-flex;
            list-style: none;
            color: white;
        }
        .menubar ul li{
            	width: 120px;
				margin: 2% 1%;
				padding: 1%;
				border-radius: 17px;
				border: 3px solid #f6f6f6;
				background: linear-gradient(to right, #f8bbff, #b6fffd);
				color: black !important;
        }
        .menubar ul li a{
            text-decoration: none;
			color: black;
			font-weight: 600;
        }
        .active, .menubar ul li:hover{
           border-radius: 21px;
		    background: linear-gradient(134deg, #f8bbff 0%, #ffff77b3 29%, #B6FFFD 124%);
		    border: 3px solid white;
		    box-shadow: 0px 0px 12px 0px #cdf1f5;
        }
        .submenu1
        {
            display: none;
        }
        .menubar ul li:hover .submenu1
        {
             display: block;
			    position: absolute;
			    margin: 2.2% 0%;
			    padding: 0%;
			    border-radius: 17px;
			    border: 3px solid #f6f6f6;
			    background: linear-gradient(to right, #f8bbff, #b6fffd);
			    color: black !important;

        }
        .menubar ul li:hover .submenu1 ul{
            display: block;
            margin: 10px;
        }
.menubar ul li:hover .submenu1 ul li {
    background: linear-gradient(134deg, #f8bbff 0%, #ffff77b3 29%, #B6FFFD 124%);
    border: 3px solid white;
    box-shadow: 0px 0px 12px 0px #cdf1f5;
    margin: 8% 2%;
    padding: 7%;
    border-radius: 17px;
}
.menubar ul li:hover .submenu1 ul li:last-child {
	border-bottom: none;
}

.menubar ul li:hover .submenu1 ul li a:hover {
	color: #4f4f4f;
}
.menubar ul li:hover .submenu1 ul li:hover{
	border: none;
}
    </style>

</head>
<body>
	<div class="menubar" id="hidden1">
    <ul>
        <li class="active"><a href="subdis1.jsp">Subject Distrubution list</a>
            


        </li>
        
        <li><a href="create1.jsp">Create timetable</a></li>
        <li><a href="edit1.jsp">Edit timetable</a></li>
        <li><a href="view.jsp">View timetable</a>
    
            <div class="submenu1">
                <ul>
                    <li><a href="view.jsp">View yearwise</a></li>
                    <li><a href="view11.jsp">View facultywise</a></li>
                    
                </ul>
            </div>
        </li>
        <li><a href="upload1.jsp">Upload timetable</a></li>

    </ul>
    </div>

</body>
</html>