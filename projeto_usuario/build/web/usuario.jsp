<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Cadastrar Usuário</title>
    </head>
    <body>
        <form action="inserir_usuario.jsp" method="POST">
            <label for="nome">NOME</label><br> 
            <input type="text" name="nome" placeholder="Digite seu nome"/><br> 
            <label for="email">EMAIL</label><br> 
            <input type="email" name="email" placeholder="Digite seu email"/><br> 
            <label for="senha">SENHA</label><br> 
            <input type="password" name="senha" placeholder="Digite sua senha"/><br> <br> 
            <input type="submit" value="ENVIAR"/>
        </form>

    </body>
</html>
