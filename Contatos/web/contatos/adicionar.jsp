<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar - Contatos</title>
    </head>
    <body>
        <h1>Contatos</h1>
        <h2>Adicionar</h2>
        <form action="lista.jsp">
            Nome:
            <br/><input type="text" name="nome" />
            <br/>Telefone:
            <br/><input type="text" name="fone" />
            <br/>E-mail:
            <br/> <input type="text" name="email" />
            <hr/>
            <h2>Deseja incluir o novo contato?</h2>
            <input type="submit" name="adicionar" value="Sim"/>
            <input type="submit" name="adicionar" value="Nao"/>
        </form>
    </body>
</html>
