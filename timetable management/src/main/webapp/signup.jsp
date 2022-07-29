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
<title>Signup</title>
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
	width: 37%;
	padding: 3% 3%;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
}

.flex-container div {
	/*text-align: center;*/
	
}

.animate, .sub {
	border: 3px solid white;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	border-radius: 16px;
	padding: 1% 6%;
}

.sub {
	border: 3px solid white;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
	border-radius: 16px;
	padding: 1% 6%;
	margin: 1%;
}
/* Full-width inputs */
input[type=text], input[type=email], input[type=password] {
	border-radius: 17px;
	width: 100%;
	padding: 2% 5%;
	margin: 2% 1%;
	display: inline-block;
	border: 4px solid white;
	box-sizing: border-box;
	box-shadow: 0px 0px 23px 2px #c7c7c7;
}

input[type=text]:hover, input[type=email]:hover, input[type=email]:focus,
	input[type=password]:hover, input[type=text]:focus, input[type=password]:focus,
	input[type=text]:active, input[type=password]:active {
	box-shadow: 0px 0px 23px 2px lightgreen;
	border: 4px solid lightgreen;
	outline: none;
}

input[type=radio]:hover, input[type=radio]:active, input[type=radio]:focus,
	input[type=checkbox]:hover, input[type=checkbox]:focus {
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

/* Add a hover effect for buttons */
.login-btn:hover {
	background-color: tomato;
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
	background-color: tomato;
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	text-align: center;
	color: white;
	font-weight: bold;
}

.success {
	background-color: lightgreen;
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	text-align: center;
	color: white;
	font-weight: bold;
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
	<div>
		<h2>K S School Of Business Management</h2>

	</div>
	<div class="flex-container">
		<h3 class="h3-c">Signup</h3>


		<div>
			<div id="id01" class="modal">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal"></span> <br>
				<div class="button-sec">
					<a href="login.jsp"><button class="signup-btn">LogIn</button></a> <a
						href="home.jsp"><button class="signup-btn">Home</button></a>
				</div>
				<form class="modal-content animate" action="SignupServlet"
					method="post">
					<div class="container">

						<!-- <label for="uname"><b>User name:</b></label> -->
						<input type="text" placeholder="Enter Username" name="uname"
							required>
						<!-- <label for="eid"><b>E-mail id:</b></label>  -->
						<input type="email" placeholder="Enter E-mail id" name="eid"
							required>
						<!-- <label for="psw"><b>Enter Password</b></label>  -->
						<input type="password" placeholder="Enter Password" name="psw"
							required>
						<!-- <label for="psw"><b>Confirm Password</b></label>  -->
						<input type="password" placeholder="Enter Confirm Password"
							name="cpsw" required>

						<div class="sub">
							<p>Please select your designation:</p>

							<input type="radio" id="faculty" name="Designation"
								value="faculty" onclick="myFunction1()" checked> <label
								for="faculty">Faculty</label> <input type="radio"
								id="laboperator" name="Designation" value="laboperator"
								onclick="myFunction()"> <label for="laboperator">Lab
								Operator</label>
						</div>

						<!--  <div class="sub" id="sub">
							<span>Select Domain:</span>
							

						<!--  <input type="checkbox" id="subject1" name="subje" value="FCO" checked>
  <label for="subject1">FCO</label>
  <input type="checkbox" id="subject2" name="subje" value="FOP" >
  <label for="subject2" >FOP</label>
  <input type="checkbox" id="subject3" name="subje" value="MC">
  <label for="subject3">MC</label>
  <input type="checkbox" id="subject4" name="subje" value="FAM">
  <label for="subject4">FAM</label>
  <input type="checkbox" id="subject5" name="subje" value="FOM">
  <label for="subject5">FOM</label>
  <input type="checkbox" id="subject6" name="subje" value="CS">
  <label for="subject6">CS</label>
  <input type="checkbox" id="subject7" name="subje" value="IOA_P">
  <label for="subject7">IOA_P</label>
  <input type="checkbox" id="subject8" name="subje" value="FOP_P">
  <label for="subject8">FOP_P</label>
  <input type="checkbox" id="subject9" name="subje" value="DBMS">
  <label for="subject9">DBMS</label><br>
  
  <input type="checkbox" id="subject10" name="subje" value="COSM">
  <label for="subject10">COSM</label>
  <input type="checkbox" id="subject11" name="subje" value="DS" >
  <label for="subject11" >DS</label>
  <input type="checkbox" id="subject12" name="subje" value="DM">
  <label for="subject12">DM</label>
  <input type="checkbox" id="subject13" name="subje" value="SSD">
  <label for="subject13">SSD</label>
  <input type="checkbox" id="subject14" name="subje" value="DS_P">
  <label for="subject14">DS_P</label>
  <input type="checkbox" id="subject15" name="subje" value="OOP">
  <label for="subject15">OOP</label>
  <input type="checkbox" id="subject16" name="subje" value="OS">
  <label for="subject16">OS</label>
  <input type="checkbox" id="subject17" name="subje" value="OOP_P">
  <label for="subject17">OOP_P</label>
  <input type="checkbox" id="subject18" name="subje" value="FE">
  <label for="subject18">FE</label><br>
  
  <input type="checkbox" id="subject19" name="subje" value="SE">
  <label for="subject19">SE</label>
  <input type="checkbox" id="subject20" name="subje" value="CG" >
  <label for="subject20" >CG</label>
  <input type="checkbox" id="subject21" name="subje" value="OOPJ">
  <label for="subject21">OOPJ</label>
  <input type="checkbox" id="subject22" name="subje" value="OOPJ_P">
  <label for="subject22">OOPJ_P</label>
  <input type="checkbox" id="subject23" name="subje" value="TC">
  <label for="subject23">TC</label>
  <input type="checkbox" id="subject24" name="subje" value="CLIP">
  <label for="subject24">CLIP</label>
  <input type="checkbox" id="subject25" name="subje" value="CG_P">
  <label for="subject25">CG_P</label>
  <br>
  
  <input type="checkbox" id="subject26" name="subje" value="ADBMS">
  <label for="subject26">ADBMS</label>
  <input type="checkbox" id="subject27" name="subje" value="SPM" >
  <label for="subject27" >SPM</label>
  <input type="checkbox" id="subject28" name="subje" value="AI">
  <label for="subject28">AI</label>
  <input type="checkbox" id="subject29" name="subje" value="ERP">
  <label for="subject29">ERP</label>
  <input type="checkbox" id="subject30" name="subje" value="OR">
  <label for="subject30">OR</label>
  <input type="checkbox" id="subject31" name="subje" value="AN">
  <label for="subject31">AN</label>
  <input type="checkbox" id="subject32" name="subje" value="AI_P">
  <label for="subject32">AI_P</label>
  <input type="checkbox" id="subject33" name="subje" value="ES">
  <label for="subject33">ES</label>
  <br>
  
  <input type="checkbox" id="subject34" name="subje" value="IP">
  <label for="subject34">IP</label>
  <input type="checkbox" id="subject35" name="subje" value="NA" >
  <label for="subject35" >NA</label>
  <input type="checkbox" id="subject36" name="subje" value="GIS">
  <label for="subject36">GIS</label>
  <input type="checkbox" id="subject37" name="subje" value="DC">
  <label for="subject37">DC</label>
  <input type="checkbox" id="subject38" name="subje" value="CC">
  <label for="subject38">CC</label>
  <input type="checkbox" id="subject39" name="subje" value="MAD">
  <label for="subject39">MAD</label>
  <input type="checkbox" id="subject40" name="subje" value="MAD_P">
  <label for="subject40">MAD_P</label>
  <input type="checkbox" id="subject41" name="subje" value="DOS">
  <label for="subject41">DOS</label>
  <br>-->

					</div>

					<button class="login-btn" type="submit" id="btn">Sign Up</button>
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

			//function myFunction() {
			//document.getElementById('sub').style.display = 'none';
			//}
			//function myFunction1() {
			//document.getElementById('sub').style.display = 'block';

			//}
			//function functioncd() {

			//var d = document.getElementById('subject');
			//if(d.checked==false){
			//alert("plz check any one checkbox");
			//}

			//}
		</script>


		<script>
			//const btn = document.querySelector('#btn');
			//const typ = document.querySelector('#faculty');
			//console.log(typ.value);
			//btn.addEventListener('click', (event) => {
			// let checkboxes = document.querySelectorAll('input[name="subje"]:checked');
			//let values = [null];
			//console.log(values);
			//checkboxes.forEach((checkbox) => {
			// values.push(checkbox.value);
			//});

			//if(values.length==1 && typ.value=="faculty")
			//{
			//alert("Plz select any one checkbox");
			//}

			//});
		</script>

	</div>
	</div>