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
            <br/>Nome:
            <br/><input type="text" name="nome" value="<%= c.getNome()%>" />
            <br/>Telefone:
            <br/><input type="text" name="fone" value="<%= c.getFone()%>" />
            <br/>E-mail:
            <br/> <input type="text" name="email" value="<%= c.getEmail()%>"/>
            <hr/>
            <h2>Deseja alterar contato?</h2>
            <input type="submit" name="alterar" value="Sim"/>
            <input type="submit" name="alterar" value="Nao"/>
            <input type="hidden" name="index" value="<%=index%>" />
        </form>
    </body>
</html>
