<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
ul {
	list-style-type: none;
	/*width:100%;*/
	margin: 0;
	padding: 10px;
	overflow: hidden;
	background-color: #123969;
}

li {
	float: right;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

i {
	padding: -7px 7px;
}

li a:hover {
	
	cursor:pointer;
}

.uname {
	margin-top: 14px;
	color: black;
	margin-right: 10px;
}
.button {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	width:100px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	border: none;
	border-radius: 24px;
	cursor: pointer;
}

.login-button {
	background-color: #3498db;
	color: #fff;
	transition: background-color 0.3s ease-in-out;
}

.login-button:hover {
	background-color: #2078b5;
}

.register-button {
	background-color: #2ecc71;
	color: #fff;
	transition: background-color 0.3s ease-in-out;
}

.register-button:hover {
	background-color: #218c58;
}

</style>


</head>
<body style="margin: 0;">
	<ul>
	<span>
		<%
		if (session.getAttribute("name") != null) {
		%>
		<li class="uname"><a href="info.jsp"><i
				class="fa fa-user-circle" aria-hidden="true"
				style="margin-right: 5px;"></i><%=session.getAttribute("name")%></a></li>
		<li><a href="register?logout=yes"><button class="button register-button">Logout</button></a></li>
		<li><a href="EditForm.jsp"><button class="button register-button">Edit</button></a></li>
		<%
		if (session.getAttribute("id").equals("1")) {
		%>
		<li><a href="DeleteUser.jsp">Delete</a></li>
		<li><a href="search.jsp">Search</a></li>
		<%
		}
		%>
		<%
		} else {
		%>
		<li><a href="Registration.jsp"><button class="button register-button">Register</button></a></li>
		<li><a href="Login.jsp"><button class="button register-button">Login</button></a></li>
		<%
		}
		%>
		<li><a class="active" href="main.jsp"><button class="button login-button">Home</button></a></li>
		<li style="float: left;"><img src=""></li>
		</span>
	</ul>
</body>
</html>