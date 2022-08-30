<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Factorial</title>
</head>
<body>
    <%!
        int FactorialOfNumber(int number) {
            int fac = 1; 
            for (int i = 1; i <= number; i++) {
                fac *= i;
            }
            return fac;
        }
    %>
    <%
        int number = Integer.parseInt(request.getParameter("textFactorialNumber"));
        out.println("<b>Iteration Factorial of " + number + " is: </b>" + FactorialOfNumber(number));
    %>
</body>
</html>