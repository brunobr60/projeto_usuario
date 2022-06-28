<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
        <h1>PÁGINA LOGIN</h1>
        <form method="post" action="validar.jsp">
            <label>EMAIL</label><br>
            <input type="text" name="email" required/><br>
            <label>SENHA</label><br>
            <input type="password" name="senha" required/><br>
            <input type="submit" value="LOGAR"/>
        </form>
    </body>
</html>
