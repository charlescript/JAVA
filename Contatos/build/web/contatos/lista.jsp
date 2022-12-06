
<%@page import="br.com.fatecpg.cadastro.Bd"%>
<%@page import="br.com.fatecpg.cadastro.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("adicionar")!=null){
        if(request.getParameter("adicionar").equals("Sim")){
           Contato c = new Contato();
           c.setNome(request.getParameter("nome"));
           c.setFone(request.getParameter("fone"));
           c.setEmail(request.getParameter("email"));
           Bd.getContatos().add(c);
        }
        response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("alterar")!=null){
        if(request.getParameter("alterar").equals("Sim")){
           int index = Integer.parseInt(request.getParameter("index"));
           Contato c = new Contato();
           c.setNome(request.getParameter("nome"));
           c.setFone(request.getParameter("fone"));
           c.setEmail(request.getParameter("email"));
           Bd.getContatos().set(index, c);
        }
        response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("excluir")!=null){
        if(request.getParameter("excluir").equals("Sim")){
           int index = Integer.parseInt(request.getParameter("index"));
           Contato c = new Contato();
           c.setNome(request.getParameter("nome"));
           c.setFone(request.getParameter("fone"));
           c.setEmail(request.getParameter("email"));
           Bd.getContatos().remove(index);
        }
        response.sendRedirect(request.getRequestURI());
    }

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Contatos</title>
    </head>
    <body>
        <h1>Contatos</h1>
        <h2><a href="adicionar.jsp"> Adicionar contato<a/></h2>
        <h2>Lista</h2>
        
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Email</th>
                <th>Comandos</th>
            </tr>    
            <%for(Contato c: Bd.getContatos()) { %>
                <% int index = Bd.getContatos().indexOf(c); %>
                <tr>
                    <td> <%=index%> </td>
                    <td> <%=c.getNome() %> </td>
                    <td> <%=c.getFone() %> </td>
                    <td> <%=c.getEmail()%> </td>
                    <td>
                        <a href="alterar.jsp?index=<%=index%>">Alterar</a>
                        <a href="excluir.jsp?index=<%=index%>">Excluir</a>
                        <a></a>
                    </td>
                    
                </tr>
            <%}%>
            
        </table>
    </body>
</html>
