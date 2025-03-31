<%--
  Created by IntelliJ IDEA.
  User: sanus
  Date: 3/30/2025
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="css/globals.css" />
  <link rel="stylesheet" href="css/styleguide.css" />
  <link rel="stylesheet" href="css/selector.css" />
</head>

<body>
<div class="movies-page">
  <div class="navbar">
    <div class="text-wrapper">MOVIES</div>
    <div class="div"><a href="movies.jsp">HOME</a></div>
    <div class="text-wrapper-2"><a href="selector.jsp">MOVIES</a></div>
    <div class="text-wrapper-3"><a href="buy.jsp">BUY TICKETS</a></div>
  </div>

  <div class="dropdowns">

    <div class="dropdown">
      <div class="text-wrapper-4">Select the Release Year</div>
      <select id="yearDropdown">
        <option value="2024">2025</option>
        <option value="2025">2024</option>
      </select>
    </div>

    <div class="dropdown">
      <div class="text-wrapper-4">Select the Month</div>
      <select id="monthDropdown">
        <option value="January">January</option>
        <option value="February">February</option>
        <option value="March">March</option>
        <option value="April">April</option>
        <option value="May">May</option>
        <option value="June">June</option>
        <option value="July">July</option>
        <option value="August">August</option>
        <option value="September">September</option>
        <option value="October">October</option>
        <option value="November">November</option>
        <option value="December">December</option>
      </select>
    </div>

  </div>

</div>
</body>

</html>
