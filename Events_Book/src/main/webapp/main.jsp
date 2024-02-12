<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.header {
            background-color: transparent;
            color: white;
            text-align: center;
            padding: 15px;
            display: flex;
            position:fixed;
            justify-content: flex-end; /* Move buttons to the top right */
            top: 0;
            right: 0;
            width: 100%;
        }
        .header span {
            margin-left: 10px; /* Adjust the space between buttons as needed */
        }
        

/* .content {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    
} */
h2 {
	color: #333;
}

a {
	color: #3498db;
	text-decoration: none;
	transition: color 0.3s ease-in-out;
	float: right;
}

a:hover {
	color: #2078b5;
}

.footer {
	background-color: #100;
	color: white;
	text-align: center;
	padding: 10px;
	bottom: 0;
	width: 100%;
}

/* Button Styles */
.button {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
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

/* Responsive Design */
@media ( max-width : 768px) {
	.content {
		max-width: 90%;
	}
}

.hh {
	text-align: center;
	font-size: 25px;
	font-weight: bold;
}

.im {
	background-image: url("images/ev7.jpg");
	height: 900px;
	width: 100%;
	background-size: cover;
	background-position: center;
	background-color: black;
	color: white;
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	justify-content: center;
	height: 100vh;
}

#welcome {
	font-size: 3em;
	margin-bottom: 20px;
	animation: fadeInUp 1s ease-out;
}

#services {
	font-size: 2em;
	margin-bottom: 20px;
	animation: fadeInUp 1s 0.5s ease-out;
}

#bookEvents {
	font-size: 2em;
	margin-bottom: 20px;
	animation: fadeInUp 1s 1s ease-out;
}

@
keyframes fadeInUp {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

p {
	font-size: 40px;
	color: orange;
}
.div span {
    margin-right: 10px; /* Adjust the space as needed */
}

</style>
</head>
<body>
	<%-- Header --%>
	<div class="header">
		<span><a href="Login.jsp"><button class="button login-button">Login</button></a></span> 
		<span><a href="Registration.jsp"><button class="button register-button">Register</button></a></span> 
		<span><a href="Eventcatagories.jsp"><button class="button register-button">SR Events</button></a></span>
	</div>

	<div class="im">
		<div id="welcome">
			<h6 style="color: skyblue;">
				ALL-IN-ONE EVENT MANAGEMENT SOFTWARE <br>Your Premier Event
				Management Partner
			</h6>
			<h2 style="color: white;">
				Built for the events<br> of today and<br> tomorrow

			</h2>


		</div>

		<p style="color: cyan;">
			Everything you need to craft impactful event<br> experiences all
			while staying technologically <br> relevant, now and always.
		</p>









	</div>


	<%-- Footer --%>
	<div class="footer">

		<h1>Our services</h1>
		<h3>Wedding Bliss:</h3>
		<p>
			Transform your dream wedding into reality with our meticulous<br>
			wedding planning services. From venue selection to theme design, <br>we
			handle every detail to ensure your special day is nothing short of<br>
			magical.
		</p>
		<h3>Birthday Extravaganza:</h3>
		<p>
			Celebrate life's milestones with flair! Our birthday event<br>
			management services cover everything from creative themes and<br>
			decorations to entertainment that captivates both kids and adults
			alike.
		</p>
		<h3>Corporate Excellence:</h3>
		<p>
			Elevate your corporate events to new heights. Whether it's a<br>
			product launch, team-building retreat, or a gala dinner, we bring<br>
			professionalism and innovation to every corporate occasion.
		</p>
		<h1>Why Choose SR Events?</h1>
		<h3>Passionate Professionals:</h3>
		<p>
			Our dedicated team of event enthusiasts is committed to making<br>
			your event extraordinary. We bring creativity, attention to detail,<br>
			and a can-do attitude to every project.
		</p>
		<h3>End-to-End Solutions:</h3>
		<p>
			From conceptualization to execution, we offer end-to-end event<br>
			management services. Leave the logistics to us, so you can focus on<br>
			enjoying the celebration.
		</p>
		<h3>Innovative Designs:</h3>
		<p>
			Stay ahead of the trends with our cutting-edge event designs.<br>
			We combine creativity with practicality to create visually stunning<br>
			and functional events.
		</p>
		<h3>Exceptional Customer Service:</h3>
		<p>
			Your satisfaction is our priority. We pride ourselves on clear<br>
			communication, responsiveness, and a customer-centric approach<br>
			throughout the planning and execution process.
		</p>

		<p>&copy; 2023 Event Management</p>
	</div>



</body>
</html>