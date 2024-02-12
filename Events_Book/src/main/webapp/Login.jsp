<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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

.button {
	padding: 5px;
	width: 6%;
	background: cornflowerblue;
	color: white;
}

#msg {
	background: green;
	color: white;
	border: 1px solid green;
	width: 24%;
	font-weight: bold;
	font-size: 25px;
	padding: 5px;
	text-align: center;
	justify-content: center;
	transform: translate(165%, 30%);
}

td input {
	display: block;
}

.div {
	text-align: center;
	background-color: rgba(0, 0, 0, 0.3);
	width: 470px;
	padding: 70px;
	margin: 20px;
	border-radius: 10px;
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.f1 {
	background-image: url("");
	width: 100%;
	background-size: cover;
	background-position: center;
	color: white;
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
		jQuery.validator
				.addMethod(
						"checkemail",
						function(value, element) {
							return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
									.test(value)
									|| /^[0-9]{10}$/.test(value);
						}, "Please enter the email format as abc@gmail.com");

		jQuery(document)
				.ready(
						function($) {
							$("#login")
									.validate(
											{
												rules : {
													email : {
														required : true,
														checkemail : true
													},
													pw : {
														required : true,
														minlength : 6
													},
												},
												messages : {
													email : {
														required : "Please enter the email.",
													},
													pw : {
														required : "Please enter the password.",
														minlength : "Please enter the password greater than or equal to 6.",
													},
												}
											});
						});
	</script>
	<%
	if (request.getAttribute("status") != null) {
	%>
	<div id="msg">
		<%=request.getAttribute("status")%>
	</div>
	<%
	}
	%>

	<form method="POST" id="login" action="register" class="f1">

		<div class='div'>
			<font color="White" size="4"> <b><h2>Login</h2></b>
			</font> <br>
			<div>
				<input type="email" class="form-control" placeholder="Enter email"
					name="email"><br>
			</div>
			<div>
				<input type="password" class="form-control"
					placeholder="Enter Password" name="pw">
			</div>
			<br>

			<button type="submit" class="btn btn-primary" name="Login">Submit</button><br>
			<div style="text-align: center; margin-top: 15px;">
				<a href="Fpass.jsp">Forgot password?</a>

			</div>
		</div>
	</form>



	<%@include file="Footer.jsp"%>
</body>

</html>