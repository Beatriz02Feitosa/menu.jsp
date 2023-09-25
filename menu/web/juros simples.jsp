<%-- 
    Document   : page 1
    Created on : 24 de set. de 2023, 17:17:33
    Author     : beapa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>juros simples</title>
    </head>
    <body>
        <h1>simples</h1>
        
        <form method="get">
            <h3>Digite os valores do Capital, Taxa de juros e Meses: </h3>
            <input type="number" name="cap"/>
            <input type="number" name="TJ"/>
            <input type="number" name="temp"/>
            <input type="submit" value="Concluído"/>
        </form> 
        
        <% 
        double cap = 0, TJ = 0;
        int temp = 0;
        if (request.getParameter("cap") != null && request.getParameter("TJ") != null && request.getParameter("temp") != null) {
            cap = Double.parseDouble(request.getParameter("cap"));
            TJ = Double.parseDouble(request.getParameter("TJ"));
            temp = Integer.parseInt(request.getParameter("temp"));
            }
           
        double resultado = (cap * (TJ / 100) * temp);
        resultado = Math.rint (resultado * 100.0) / 100.0;
        %>
        <br> <br>
        <h3>O valor do juro simples é: <%= String.format("%.3f", resultado) %></h3>
        <br> <br>
        <a href="index.jsp">voltar</a>
    </body>
</html>
