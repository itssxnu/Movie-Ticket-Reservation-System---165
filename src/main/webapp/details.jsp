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
  <title>Contact Form</title>
  <style>
    body {
      font-family: 'Inter', sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background: linear-gradient(117deg,
      rgba(37, 37, 43, 0.95) 27%,
      rgba(62, 61, 74, 1) 62%,
      rgba(72, 72, 108, 1) 100%);
    }

    .form-container {
      background-color: #1F2937;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(246, 211, 82, 0.573);
      width: 350px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 20px;
      color: white;
    }

    .form-container input {
      width: 94%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #000000;
      border-radius: 5px;
      font-size: 14px;
    }

    .form-container input[type="submit"] {
      background-color: #f8ce35;
      color: rgb(0, 0, 0);
      border: none;
      cursor: pointer;
      transition: all 0.3s ease;
      width: 100%;
      margin-top: 20px;
    }

    .form-container input[type="submit"]:hover {
      box-shadow: 0 0 8px rgba(248, 206, 53, 1);
      transform: scale(1.05);
    }

    .form-container .phone-input {
      width: 94%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #000000;
      border-radius: 5px;
      font-size: 14px;
    }
  </style>
</head>

<body>

<div class="form-container">
  <h2>Your Details</h2>
  <form action="RegisterServlet" method="post">
    <input type="text" id="name" name="username" placeholder="Enter your name" required>

    <input type="email" id="email" name="email" placeholder="Enter your email" required>

    <input type="tel" id="phone" name="mobile" class="phone-input"
           placeholder="Enter mobile number" pattern="^07[0-9]{8}$" required>

    <input class="button" type="submit" value="Next">
  </form>
</div>

</body>

</html>