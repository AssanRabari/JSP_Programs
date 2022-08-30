<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diamond</title>
</head>
<body>
    <h3>Diamond Pattern:</h3>
    <%
        int number = Integer.parseInt(request.getParameter("textDiamondPyramidNumber"));
        for(int i = 1; i <= number; i++) {
            for(int j = 1; j <= (number - i); j++) {
                out.print("&nbsp;");
            }
            for(int z = 1; z <= i; z++) {
                out.print("*");
            }
            out.println("<br>");
        }
        for(int i = number - 1; i >= 1; i--) {
            for(int j = 1; j <= (number - i); j++) {
                out.print("&nbsp;");
            }
            for(int z = 1; z <= i; z++) {
                out.print("*");
            }
            out.println("<br>");
        }   
    %>
</body>
</html>