<%--
  Created by IntelliJ IDEA.
  User: sanus
  Date: 3/30/2025
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Gateway</title>
    <link rel="stylesheet" href="css/PaymentStyles.css">
</head>

<body>
<div class="price-container">
    <h2>Order Summary</h2>
    <dl class="total">
        <dt>Subtotal:</dt>
        <dd>$6,500.00</dd>

        <dt>Tax (10%):</dt>
        <dd>$650.00</dd>

        <hr>

        <dt><strong>Total:</strong></dt>
        <dd><strong>$7,050.00</strong></dd>
    </dl>
</div>

<div class="container">
    <h1 class="text-primary">Secure Payment</h1>
    <form action="#" method="POST">
        <label for="cardholder">Cardholder Name</label>
        <input class="long" type="text" id="cardholder" name="cardholder" placeholder="Amarabandu Rupasinghe" required>

        <label for="cardnumber">Card Number</label>
        <input class="long" type="text" id="cardnumber" name="cardnumber" placeholder="1234 5678 9012 3456"
               maxlength="19" required>

        <div class="row">
            <div class="column">
                <label for="expiry">Expiry Date</label>
                <input type="text" id="expiry" name="expiry" placeholder="MM/YY" maxlength="5" required>
            </div>
            <div class="column">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="123" maxlength="3" required>
            </div>
        </div>

        <button type="submit" class="button-primary">Pay Now</button>
    </form>
</div>
</body>

</html>
