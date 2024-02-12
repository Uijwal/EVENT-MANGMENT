<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dproduct"%>
<%@page import="model.Registration"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book an Event</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
	<style></style>
</head>

<script>



        //            jQuery.validator.addMethod( name, method [, message ] )
//            
// value---> "current value of the validated element".
//elememt---> " element to be validated ".

        jQuery.validator.addMethod("checkemail", function (value, element) {
            return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
        });
        jQuery(document).ready(function ($) {
            $("#bookevent").validate({
                rules: {
                    name: {
                        required: true
                    },
                    email: {
                        required: true,
                        checkemail: true
                    },
                    pno: {
                        required: true,
                        minlength: 10,
                        maxlength: 10
                    },
                    address: {
                        required: true
                    },
                    edate: {
                        required: true,
                    }
                },
                messages: {
                    name: {
                        required: "Please enter the name."
                    },
                    email: {
                        required: "Please enter the email.",
                        email: "Please enter valid email id"
                    },
                    pno: {
                        required: "Please enter the number.",
                        minlength: "Please enter the  10 digit number .",
                        maxlength: "more than 10 digits."
                    },
                    address: {
                        required: "Please enter the address.",
                    },
                    edate: {
                        required: "Please select the date.",
                    }
                }
            });
        });
    </script>
<body>
	<%@include file="Header.jsp"%>
	
		<% if (request.getAttribute("status") != null) {%>
		<h2 class="errmsg">
			<%= request.getAttribute("status")%></h2>
		<%}%>
		<br>
		<% if (session.getAttribute("name") != null) {
                Registration reg = new Registration(session);
                
                Dproduct s = reg.getEventFormInfo();%>
		
		<form action="addtocart" method='POST' id="bookevent">
			<div class="container">
			<h2 class="text-center">Book an Event</h2> 
				<div class="jumbotron mx-auto">
				<div class="row justify-content-center">
					<div class="form-group col-md-4">
						<label>Name</label> <input type="text" class="form-control"
							name="name" value="<%=session.getAttribute("name")%>">
					</div>
					<div class="form-group col-md-4">
						<label>Phone Number</label> <input type="number"
							class="form-control" name="pno"
							value="<%=session.getAttribute("phone")%>">
					</div>
					<div class="form-group col-md-4">
						<label>Email</label> <input type="email" class="form-control"
							name="email" value="<%=session.getAttribute("email")%>">
					</div>
					<div class="form-group col-md-4">
						<label>Address</label> <input type="text" class="form-control"
							name="address" value="">
					</div>
					<div class="form-group col-md-4">
						<label>Event Name</label> 
						<input type="text" class="form-control"  name="ename" value="<%=s.getP_name()%>" readonly>
					</div>
					<div class="form-group col-md-4">
						<label>Event cost</label> 
						<input type="number" class="form-control" name="ecost" value="<%=s.getP_cost()%>" readonly>
					</div>
					<div class="form-group col-md-4">
						<label>Date of Event</label> <input type="date"
							class="form-control" name="edate" value="">
					</div>
					<input type="hidden" name="event_id"
						value="<%=request.getParameter("event_id")%>">
					<button type="submit" class="btn btn-primary" name="bookevent">Book
						Now</button>
				</div>
			</div>
			</div>
		</form>
		<%}%>
	
	<%@include file="Footer.jsp"%>
</body>
</html>








