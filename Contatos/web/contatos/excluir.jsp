<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Contatos</h1>
        <h2>Alterar</h2>
        
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <% Contato c = Bd.getContatos().get(index);%>
        <form action="lista.jsp">
            <b>Índice: <%=index%></b>
            <br/>Nome: <b><%= c.getNome()%></b>
            <br/>Telefone: <b><%= c.getFone()%></b>
            <br/>E-mail: <b><%= c.getEmail()%></b>
            <hr/>
            <h2>Deseja excluir contato?</h2>
            <input type="submit" name="excluir" value="Sim"/>
            <input type="submit" name="excluir" value="Nao"/>
            <input type="hidden" name="index" value="<%=index%>" />
        </form>
    </body>
</html>
