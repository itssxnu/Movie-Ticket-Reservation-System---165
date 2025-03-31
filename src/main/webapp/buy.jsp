<%--
  Created by IntelliJ IDEA.
  User: sanus
  Date: 3/30/2025
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/globals.css" />
    <link rel="stylesheet" href="css/buystyle.css" />

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            function makeButtonsExclusive(className) {
                const buttons = document.querySelectorAll("button." + className);

                buttons.forEach(button => {
                    button.addEventListener("click", function () {
                        buttons.forEach(btn => btn.classList.remove("selected"));
                        this.classList.add("selected");
                    });
                });
            }

            makeButtonsExclusive("date-option");
            makeButtonsExclusive("movie-option");
            makeButtonsExclusive("time-option");

            // Ensure the whole button is clickable
            document.querySelectorAll("button").forEach(button => {
                button.addEventListener("click", function () {
                    this.classList.add("selected");
                });
            });
        });
    </script>

    <style>


        a {
            all: unset;
            transition: box-shadow 0.3s ease;
            color: #f8ce35;
            text-decoration: none;
        }
        a:visited {
            color: inherit;
        }

        .navbar a:hover {
            color: gold;
        }

        .a:hover {
            background-color: gold;
            color: black;
            box-shadow: 0 0 20px rgba(253, 217, 106, 0.8);
        }

        .selected {
            background-color: rgba(253, 217, 106, 0.5);
            color: black;
        }

        .flexcontainer-wrapper {
            transition: background-color 0.3s ease;
        }

        .flexcontainer-wrapper:hover {
            background-color: rgba(253, 217, 106, 0.5);
        }

        .overlap,.overlap-group,.overlap-2,.overlap-3,.overlap-group-2,.overlap-4,.overlap-5,.overlap-6,.overlap-7{
            transition: background-color 0.3s ease;
        }

        .overlap:hover,.overlap-group:hover,.overlap-2:hover,.overlap-3:hover,.overlap-group-2:hover,.overlap-4:hover,.overlap-5:hover,.overlap-6:hover,.overlap-7:hover{
            background-color: rgba(253, 217, 106, 0.5);
        }

        .div-wrapper{
            transition: background-color 0.3s ease;
        }

        .div-wrapper:hover{
            background-color: rgba(253, 217, 106, 0.5);
        }

        .overlap-8 {
            transition: box-shadow 0.3s ease;
        }

        .pick-seat:hover {
            box-shadow: 0 0 20px rgba(253, 217, 106, 0.8);
        }
    </style>

</head>

<body>
<div class="buy-tickets">
    <div class="div">
        <div class="navbar">
            <div class="text-wrapper">MOVIES</div>
            <div class="text-wrapper-2"><a href="movies.jsp">HOME</a></div>
            <div class="text-wrapper-3"> <a href="selector.jsp">MOVIES</a></div>
            <div class="text-wrapper-4"><a href="buy.jsp">BUY TICKETS</a></div>
        </div>
        <div class="text-wrapper-5">Select a Date</div>
        <div class="text-wrapper-6">Select a Movie</div>
        <div class="text-wrapper-7">Select a Showtime</div>
        <button class="button date-option overlap">
            <div class="text-wrapper-8">Today</div>
        </button>

        <button class="button movie-option overlap-group">
            <div class="text-wrapper-9">Ice Cream</div>
        </button>

        <button class="button time-option div-wrapper">
            <div class="text-wrapper-10">8:30</div>
        </button>

        <button class="button date-option overlap-2">
            <div class="text-wrapper-11">Tomorrow</div>
        </button>

        <button class="button movie-option overlap-3">
            <div class="text-wrapper-12">Novocaine</div>
        </button>

        <button class="button time-option overlap-group-2">
            <div class="text-wrapper-13">11:30</div>
        </button>

        <button class="button date-option flexcontainer-wrapper">
            <div class="flexcontainer">
                <p class="text">
                    <span class="span">Day after<br /></span>
                </p>
                <p class="text">
                    <span class="span">Tomorrow</span>
                </p>
            </div>
        </button>

        <button class="button movie-option overlap-4">
            <div class="text-wrapper-14">Rani</div>
        </button>

        <button class="button time-option overlap-5">
            <div class="text-wrapper-14">2:30</div>
        </button>

        <button class="button movie-option overlap-6">
            <div class="text-wrapper-15">Moana 2</div>
        </button>

        <button class="button time-option overlap-7">
            <div class="text-wrapper-14">5:30</div>
        </button>

        <button class="pick-seat overlap-8" onclick="window.location.href='seat.jsp'">
            <div class="text-wrapper-16">Pick a Seat</div>
        </button>

    </div>
</div>
</body>

</html>
