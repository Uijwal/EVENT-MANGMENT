<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.d1 {
	background-color: skyblue;
	width: 450px;
	padding: 30px;
	margin: 30px;
	border-radius: 10px;
	position: absolute;
	top: 20%;
	left: 50%;
	transform: translate(-50%, -50%);
}

h1 {
	text-align:center;
	color: white;
}

.b {
	background-color: black;
}

.register-button {
	background-color: #2ecc71;
	color: #fff;
	transition: background-color 0.3s ease-in-out;
}

.register-button:hover {
	background-color: #218c58;
}

.button {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	font-weight: bold;
	text-decoration: none;
	border: none;
	border-radius: 24px;
	cursor: pointer;
}
</style>

</head>
<body class="b">
	<form class="f1">

		<h1>User Details</h1>
		<div class="d1">
			<%
			if (session.getAttribute("name") != null) {
			%>
			<h2 style="color: black;">Name: <%=session.getAttribute("name")%></h2>
			<%
			}
			%>

			<%
			if (session.getAttribute("id") != null) {
			%>
			<h2 style="color: black;">CustomerId:<%=session.getAttribute("id")%></h2>

			<%
			}
			%>
			<%
			if (session.getAttribute("recordCount") != null) {
			%>
			<h2 style="color: black;">
				Number of events booked by you
				<%-- <%=session.getAttribute("uname")%> --%>
				:
				<%=session.getAttribute("recordCount")%></h2>
			<%
			}
			%>
			<button><a href="Eventstatus.jsp">Manage Events</a></button>


		</div>
	</form>


</body>
</html>