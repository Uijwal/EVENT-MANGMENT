<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>
        <style>
            /*<!-- categories-->*/

            .categories
            {
                margin:40px 0;
            }
            .small-container
            {
                max-width: 1080px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
            }

            .title{
                text-align: center;
                margin: 0 auto 80px;
                position: relative;
                line-height: 60px;
                color: white;
            }

            .title::after{
                content: '';
                background: orangered;
                width: 100px;
                height: 5px;
                border-radius: 15px;
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
            }
            .row{
                display: flex;
                align-items:center;
                flex-wrap: wrap;
                justify-content:space-around;
            }

            .categories .col-3{
                flex-basis: 30%;
                min-width: 250px;
                margin-bottom: 0px;

                text-align: center;
                padding: 40px 10px;
                /*    box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);*/
                cursor: pointer;
                transition: transform 0.5s;

            }

            .categories .col-3 img
            {
                width: 200px;
                height:200px;
                margin-top: 20px;
                border-radius: 30%;
            }

            .categories .col-3:hover
            {
                transform: translateY(-10px);
            }

        </style>

</head>
<body style="background-color:skyblue;">
        <div class="categories">
            <div class="small-container">
                <h2 class="title">Events</h2>
                <div class="row">
                    <div class="col-3">
                        <a href="Events.jsp?event_category=birthday"> <img src="images/birthday.jpg"><br>Birthday</a>
                    </div>
                    <div class="col-3">
                        <a href="Events.jsp?event_category=wedding"> <img src="images/marriage.jpg"><br>Wedding</a>
                    </div>

                    <div class="col-3">
                        <a href="Events.jsp?event_category=corporate"> <img src="images/corporate.jpg"><br>Corporate Events</a>
                    </div>
                    <div class="col-3">
                        <a href="Events.jsp?event_category=corporate"> <img src="images/corporate.jpg"><br>Corporate Events</a>
                    </div>
                    <div class="col-3">
                        <a href="Events.jsp?event_category=birthday"> <img src="images/birthday.jpg"><br>Birthday</a>
                    </div>
                    <div class="col-3">
                        <a href="Events.jsp?event_category=wedding"> <img src="images/marriage.jpg"><br>Wedding</a>
                    </div>
                    
 

                </div>
            </div>
        </div>
        
        <div>
        <h1>Event details</h1>
        <p>our services</p>
        </div>
    </body>

</html>