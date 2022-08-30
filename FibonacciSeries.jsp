<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fibonacci</title>
</head>
<body>
    <%!
        int[] FibonacciSeries(int number) {
            int[] fibonacci = new int[number];
            fibonacci[0] = 0;
            fibonacci[1] = 1;
            for (int i = 2; i < number; i++) {
                fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2];
            }
            return fibonacci;
        }
    %>
    <%
        int number = Integer.parseInt(request.getParameter("textFibonacciNumber"));
        out.print("<b>Iterative Fibonacci Series: </b>");
        for (int i : FibonacciSeries(number)) {
            out.print(i + " ");
		}
    %>
</body>
</html>