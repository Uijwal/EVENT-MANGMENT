<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
.error {
	color: red;
}

input {
	display: block;
}

#msg {
	background: red;
	color: black;
	border: 1px solid red;
	width: 24%;
	font-weight: bold;
	font-size: 25px;
	padding: 5px;
}

.center {
	text-align: center;
}

.d1 {
	text-align: center;
	background-color: rgba(0, 0, 0, 0.1);
	width: 470px;
	padding: 50px;
	margin: 20px;
	border-radius: 10px;
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.f1 {
	background-image: url("images/ev7.jpg");
	width: 100%;
	background-size: cover;
	background-position: center;
	background-color: white;
	color: black;
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	justify-content: center;
	height: 90vh;
}
</style>

</head>
<body>
	<%@include file="Header.jsp"%>
	<script>
		//            jQuery.validator.addMethod( name, method [, message ] )
		//            
		// value---> "current value of the validated element".
		//elememt---> " element to be validated ".

		jQuery.validator
				.addMethod(
						"checkemail",
						function(value, element) {
							return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
									.test(value)
									|| /^[0-9]{10}$/.test(value);
						});
		jQuery(document)
				.ready(
						function($) {
							$("#signup")
									.validate(
											{
												//ignore: [],
												rules : {
													name : {
														required : true
													},
													email : {
														required : true,
														checkemail : true
													},
													phone : {
														required : true,
														minlength : 10,
														maxlength : 10
													},
													pw : {
														required : true,
														minlength : 6
													},
													cp : {
														required : true,
														minlength : 6,
														equalTo : "#pw"
													}
												},
												messages : {
													name : {
														required : "Please enter the name."
													},
													email : {
														required : "Please enter the email.",
														email : "Please enter valid email id"
													},
													phone : {
														required : "Please enter the number.",
														minlength : "Please enter the  10 digit number .",
														maxlength : "more than 10 digits."
													},
													pw : {
														required : "Please enter the password.",
														minlength : "Please enter the password greater than or equal to  6.",
													},
													cp : {
														required : "Please reenter the password.",
														minlength : "Please enter the password greater than or equal to 6.",
														equalTo : "mismatch password"
													}
												}
											});
						});
	</script>



	

	<%
	if (request.getAttribute("status") != null) {
	%>
	<div id="msg">
		<%=request.getAttribute("status")%></div>
	<%
	}
	%>

	<div class="f1">
		<form method="POST" id="signup" action="register">


			<div class="d1">
				<h2>Events Registration Form</h2>

				<input type="text" id="name" name="name" placeholder="Name"
					class='form-control'><br> <input type="number"
					name="phone" placeholder="Phone Number" class='form-control'><br>
				<input type="email" name="email" placeholder="Email"
					class='form-control'><br> <input type="password"
					id="pw" name="pw" placeholder="Password" class='form-control'><br>
				<input type="password" name="cp" placeholder="Confirm Password"
					class='form-control'><br> <input type="submit"
					name="register" value="Register" class='btn btn-primary'>

			</div>
		</form>
	</div>


	<%@include file="Footer.jsp"%>
</body>

</html>