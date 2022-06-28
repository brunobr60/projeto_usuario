<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CONFIRMAR EXCLUSÃO!</h1>
        <form action="executar_excluir.jsp" method="POST">
            <label for="id">ID</label><br> 
            <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly/><br> 
            <label for="nome">NOME</label><br> 
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br><br>            
            <input type="submit" value="EXCLUIR"/>
        </form>
    </body>
</html>
