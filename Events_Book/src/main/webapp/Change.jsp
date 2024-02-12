<%@ page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>New Password</title>
<style>
.c1 {
	border: 2px solid black;
	width: 46vh;
	height: 50vh;
	margin-top: 25vh;
	margin-left: 80vh;
}

.form-control {
	width: 40vh;
	margin-left: -15vh;
	margin-bottom: 5vh;
}
</style>
</head>
<body>
	<div class="c1">

		
		<form method="POST" id="change" action="register">
			<div class="container">
				<div class="p-4"></div>
				<h2 class="text-center">New Password</h2>
				<div class="p-1"></div>

				<div class="form-group col-md-4 mx-auto text-center">
					<input type="password" class="form-control"
						placeholder="Create New Password" name="pwd">
				</div>

				<div class="form-group col-md-4 mx-auto text-center">
					<input type="password" class="form-control"
						placeholder="Confirm Your Password" name="cp">
				</div>

				<div class="form-group col-md-4 mx-auto text-center">
					<button type="submit" class="btn btn-primary" name="change">Change</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>
