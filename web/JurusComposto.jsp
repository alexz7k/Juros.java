
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Juros Compostos</title>
</head>
<body>
    <div>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
    </div>
    <h1>Juros Compostos</h1>
    
    <form action="" method="post">
        <label for="taxa">Taxa de Juros (%):</label>
        <input type="number" name="taxa" id="taxa" required><br><br>

        <label for="meses">Número de Meses:</label>
        <input type="number" name="meses" id="meses" required><br><br>

        <input type="submit" value="Calcular">
    </form>

    <%
        if (request.getMethod().equals("POST")) {
            double taxa = Double.parseDouble(request.getParameter("taxa"));
            int meses = Integer.parseInt(request.getParameter("meses"));
            double valorPrincipal = 1000.0;
            
    %>
    <table border="1">
        <tr>
            <th>Mês</th>
            <th>Valor Futuro</th>
        </tr>
    <%
            for (int i = 1; i <= meses; i++) {
                valorPrincipal *= (1 + taxa / 100);
    %>
        <tr>
            <td><%= i %></td>
            <td><%= valorPrincipal %></td>
        </tr>
    <%
            }
    %>
    </table>
    <%
        }
    %>
</body>
</html>