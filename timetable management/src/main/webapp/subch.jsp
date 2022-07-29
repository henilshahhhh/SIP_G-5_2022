<%@page import="com.timetable.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.timetable.dao.*"%>
<%@page import="com.timetable.entity.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Subject Choice:</title>
<style>
h2 {
	text-align: center;
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
	width: fit-content;
	padding: 3% 3%;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
}

.flex-container div {
	/*text-align: center;*/
	
}

.animate {
	border: 3px solid white;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	border-radius: 16px;
	padding: 1% 6%;
}

/* Full-width inputs */
input[type=text], input[type=password] {
	border-radius: 17px;
	width: 100%;
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

/* Set a style for all buttons */
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

/* The "Forgot password" text */
span.psw {
	float: right;
	padding-top: 25px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
}

.footer {
	position: unset;
	background: linear-gradient(44deg, #FB91EF, #f9ff87, #c0deff, #a7ffa7, #f3a6f3,
		#f2f7cf);
	-webkit-animation: hue 10s infinite linear;
	left: 0;
	bottom: 0;
	width: -webkit-fill-available;
	text-align: center;
	z-index: 2;
	overflow: visible;
}

.error {
	border-radius: 17px;
	width: 100%;
	padding: 4% 4%;
	margin: 2% 1%;
	display: inline-block;
	border: 4px solid white;
	box-sizing: border-box;
	text-align: center;
	color: black;
	font-weight: 600;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	background: linear-gradient(45deg, #ea3030, #ffeb3b);
}

.success {
	border-radius: 17px;
	width: 100%;
	padding: 4% 4%;
	margin: 2% 1%;
	display: inline-block;
	border: 4px solid white;
	box-sizing: border-box;
	text-align: center;
	color: black;
	font-weight: 600;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	background: linear-gradient(45deg, #40ff34, #83f7ff);
}

.button-sec {
	text-align: center;
	width: -webkit-fill-available;
	border: 3px solid white;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	border-radius: 16px;
	margin: 2% 1%;
	margin-top: -5%;
	padding: 0% 6%;
}

.signup-btn {
	text-align: center;
	background: linear-gradient(135deg, #6dff8e, #c196fd);
	padding: 3% 15%;
	margin: 1% 2%;
	color: white;
	border-radius: 11px;
	border: 2px solid white;
}

.signup-btn:hover {
	border: 2px solid white;
	box-shadow: 0px 0px 23px 2px lightgreen;
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

</style>
</head>
<body style="background-color: #eefff0;">
	<div style="">
		<h2>K S School Of Business Management</h2>

	</div>
<div class="flex-container">
		<h3 class="h3-c">Subject Selection</h3>





	<div>

		 <form class="modal-content animate" action="SubchServlet" method="post">
		<div class="container">
			<label for="subject" ><b>Choose Subject:</b></label>     
    	<select class="me" id="subject" name="re">
        <% SubjectDao s = new SubjectDao(ConnectionProvider.getConnection());
        	List<Subject> sub = s.getsubject();
        	for(Subject s1:sub){
        		
        	
        
        %>
        
        
    <option class="me"  value="<%= s1.getSname() %>"><%=s1.getSname() %></option>
    
    <% }
        
        %>
        
    </select><br><br>
    				<input type="text" name="sub" id="ch" value=" ">
    
    <button type="button" onclick="add()" class="login-btn">Add</button>
    
        <button type="submit" class="login-btn">Submit</button>
        
    </div>
    <br>
		</form>
	</div>
</div>
	<script type="text/javascript">
	
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
		var a = document.getElementById("subject");
        var b = document.getElementById("ch");
        function add() {
            console.log(a.value);
            console.log(b.value);
            b.value = b.value + " " + a.value;
            console.log("After that stuck " + b.value);
        }
        //alert("Value of B is : " + b);

    
		
			</script>


</body>
</html>