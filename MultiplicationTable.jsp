<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>M_Table</title>
</head>
<body>
    <%
    int number = Integer.parseInt(request.getParameter("textMultiplicationNumber"));
    out.print("<b>" + " Multiplication Table of " + number + "</b><br/><br/>");
    for (int i = 1; i <= 10; i++) {
        out.println("<b>" + number + " * " + i+ " = " + (number * i) + "<b><br/>"); 
    }
    %>
</body>
</html>