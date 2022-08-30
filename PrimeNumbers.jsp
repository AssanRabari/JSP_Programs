<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prime Numbers</title>
</head>
<body>
    <%!
        java.util.List<Integer> printPrimeNumbers(int number) {
            java.util.List<Integer> list = new java.util.ArrayList<>();
            for (int i = 1; i <= number; i++) {
                if (i == 1) {
                    continue;
                } else {
                    int counter = 0;
                    for (int j = 2; j < i; j++) {
                        if (i % j == 0) {
                            counter++; 
                            break;
                        } 
                    }
                    if (counter == 0) 
                        list.add(i);
                    else 
                        counter = 0;
                }
            }
            return list;
        }
    %>
    <%
        int number = Integer.parseInt(request.getParameter("textPrimeNumber"));
        out.print("<b>Prime Numbers: </b>" + printPrimeNumbers(number));
    %>
</body>
</html>