<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>forgot password</title>
<style>
.fp {
	border: 2px solid black;
	width: 60vh;
	height: 50vh;
	margin-top: 25vh;
	margin-left: 80vh;
}

.fc {
	width: 46vh;
	margin-left: -17vh;
	border-radius: 5px;
	height: 6vh;
}
</style>
</head>
<body>


	<%
	if (request.getAttribute("status") != null) {
	%>
	<div id="msg">
		<%=request.getAttribute("status")%></div>
	<%
	}
	%>
	<div class="fp">
		<form method="POST" id="forgot" action="register">
			<font color="blue" size="4">

				<div class="container">
					<div class="p-4"></div>
					<h2 class="text-center">Forget Password</h2>
					<div class="p-1"></div>

					<div class="form-group col-md-7 mx-auto text-center">
						<input type="password" class="form-control"
							placeholder="Enter valid email" name="email">
					</div>
				</div>
				<div class="form-group col-md-4 mx-auto text-center">
					<button type="submit" class="btn btn-primary" name="continue">Continue</button>
				</div>
	</div>
	</form>
	</div>

</body>
</html>
