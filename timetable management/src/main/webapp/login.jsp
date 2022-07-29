<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.timetable.entity.Messages"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
    font-weight:600;
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
    font-weight:600;
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
</style>
</head>
<body style="background-color: #eefff0;">
	<div style="">
		<h2>K S School Of Business Management</h2>

	</div>
	<div class="flex-container">
		<h3 class="h3-c">Login</h3>


		<div>
			<div id="id01" class="modal">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal"></span>
				<div class="button-sec">
					<a href="signup.jsp"><button class="signup-btn">SignUp</button></a>
					<a href="home.jsp"><button class="signup-btn">Home</button></a>
				</div>
				<form class="modal-content animate" action="LoginServlet"
					method="post">
					<div class="container">
						<%
						Messages m = (Messages) session.getAttribute("msg");
						if (m != null) {
						%>
						<span class="<%=m.getCssClass()%>"><%=m.getContent()%></span>
						<%
						session.removeAttribute("msg");
						}
						%>
						<br>

						<!-- <label for="uname"><b>E-mail Address</b></label>  -->
						<input type="text" placeholder="ABC@gmail.com" name="email"
							required>

						<!-- <label for="psw"><b>Password</b></label>  -->
						<input type="password" placeholder="Password" name="password"
							required>

						<div>
							<p>Please select your designation:</p>
							<input type="radio" id="admin" name="Desg" value="admin" checked>
							<label for="admin">Admin</label> <input type="radio" id="faculty"
								name="Desg" value="faculty"> <label for="faculty">Faculty</label>
							<input type="radio" id="laboperator" name="Desg"
								value="laboperator"> <label for="laboperator">Lab
								Operator</label><br>
							<button class="login-btn" type="submit">Login</button>
						</div>
				</form>
			</div>
			
			<script>
				// Get the modal
				var modal = document.getElementById('id01');

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
					if (event.target == modal) {
						modal.style.display = "none";
					}
				}
			</script>
			</div>
		</div>
	
</body>
</html>