<%-- 
    Document   : tabuada
    Created on : 31 de out. de 2022, 21:01:12
    Author     : rocha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabuada</title>
    </head>
    <body>
        <%
            String errorMessage = null;
            boolean hasParameterN = request.getParameter("n")!=null;
            double n = 0;
            
            try{
                n = Integer.parseInt(request.getParameter("n"));
            }catch(Exception ex){
                errorMessage = ex.getMessage();
            }
        %>
        
        <h4><a href="index.html">Voltar</a></h4>
        <h1>JSP</h1><h2>Soma</h2><div>
            <% if(hasParameterN && errorMessage!=null) { %>
                <div style="color:red"><%= errorMessage %></div>
            <% } %>
            
    </body>
</html>
