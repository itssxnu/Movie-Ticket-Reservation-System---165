<%--
  Created by IntelliJ IDEA.
  User: sanus
  Date: 3/30/2025
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Seat Reservation</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            background: linear-gradient(117deg,
            rgba(37, 37, 43, 0.95) 36%,
            rgba(62, 61, 74, 1) 82%,
            rgba(72, 72, 108, 1) 93%);
        }

        .selected-seat {
            background-color: #f8ce35;
            color: black;
        }

        .deselected-seat {
            color: white;
        }

        .screen {
            background-color: #4b4b4b;
            color: white;
            font-size: 1.5rem;
            padding: 20px;
            text-align: center;
            font-weight: bold;
            border-radius: 8px;
            width: 43.5%;
            height: 80px;
            margin: 0 auto;
        }

        .seat-selector {
            margin-top: 30px;
        }

        .reserve-btn {
            background-color: #f8ce35;
            color: black;
            box-shadow: 0 0 8px rgba(248, 206, 53, 0.7);
            transition: all 0.3s ease;
        }

        .reserve-btn:hover {
            background-color: #f8ce35;
            box-shadow: 0 0 16px rgba(248, 206, 53, 1);
            transform: scale(1.05);
        }
    </style>
</head>

<body class="text-white flex items-center justify-center min-h-screen flex-col">
<h1 class="text-2xl font-bold mb-4">Select Your Seats</h1>

<div class="screen">
    Screen
</div>

<div class="w-full max-w-2xl text-center seat-selector">
    <div class="bg-gray-800 p-4 rounded-lg">
        <div class="grid grid-cols-8 gap-2">
            <!-- Seats will be generated dynamically -->
        </div>
    </div>
    <p class="mt-4">Selected Seats: <span id="selected-seats">None</span></p>
    <p>Total Price: <span id="total-price">0</span> LKR </p>
    <button id="reserve-btn" class="reserve-btn mt-4 px-4 py-2 rounded-lg" onclick="window.location.href = 'payment.html';">Reserve</button>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const seatContainer = document.querySelector(".grid");
        const selectedSeatsEl = document.getElementById("selected-seats");
        const totalPriceEl = document.getElementById("total-price");
        const reserveBtn = document.getElementById("reserve-btn");

        const seatCount = 24;
        const seatPrice = 1500;
        let selectedSeats = [];

        // Generate seats dynamically
        for (let i = 1; i <= seatCount; i++) {
            const seat = document.createElement("div");
            seat.classList.add("w-10", "h-10", "bg-gray-600", "rounded", "cursor-pointer", "flex", "items-center", "justify-center", "deselected-seat");
            seat.textContent = i;
            seat.dataset.seatNumber = i;

            seat.addEventListener("click", function () {
                if (seat.classList.contains("selected-seat")) {
                    seat.classList.remove("selected-seat");
                    seat.classList.add("bg-gray-600", "deselected-seat");
                    selectedSeats = selectedSeats.filter(s => s !== i);
                } else {
                    seat.classList.remove("bg-gray-600", "deselected-seat");
                    seat.classList.add("selected-seat");
                    selectedSeats.push(i);
                }

                updateUI();
            });

            seatContainer.appendChild(seat);
        }

        function updateUI() {
            selectedSeatsEl.textContent = selectedSeats.length > 0 ? selectedSeats.join(", ") : "None";
            totalPriceEl.textContent = selectedSeats.length * seatPrice;
        }

        reserveBtn.addEventListener("click", function () {
            if (selectedSeats.length === 0) {
                alert("Please select at least one seat.");
            } else {
                alert(`You have reserved seats: ${selectedSeats.join(", ")} for LKR ${selectedSeats.length * seatPrice}`);
            }
        });
    });
</script>
</body>

</html>
