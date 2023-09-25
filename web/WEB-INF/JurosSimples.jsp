<%-- 
    Document   : JurosSimples
    Created on : 25 de set. de 2023, 11:14:15
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros simples</title>
    </head>
    <body>
        <div>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
        </div>
        <h1>Juros Simples</h1>
        
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
                double valorFuturo = valorPrincipal * (1 + (taxa / 100) * meses);
        %>
        
        <p>O valor futuro é: <%= valorFuturo %></p>
        
         <%
            }
        %>
    </body>
</html>