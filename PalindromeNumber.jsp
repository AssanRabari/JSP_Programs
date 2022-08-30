<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Palindrome</title>
</head>
<body>
    <%!
        int reverseNumber(int number) {
            int c = number, remainder = 0, reverse = 0;
            while (c != 0) {
                remainder = c % 10;
                reverse = (reverse * 10) + remainder;
                c /= 10;
            }
            return reverse;
        }
    %>
    <%!
        boolean isPalidrome(int number) {
            if (reverseNumber(number) != number) 
                return false;
            return true;
        }
    %>
    <%
        int number = Integer.parseInt(request.getParameter("textPalindromeNumber"));
        if (isPalidrome(number)) {
            out.print("<b>" + number + " is Palindrome Number</b>");
        } else {
            out.print("<b>" + number + " is not a Palindrome Number</b>");
        }
    %>
</body>
</html>