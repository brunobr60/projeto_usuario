<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOUsuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DAOUsuario dusu = new DAOUsuario();
            dusu.excluirUsuario(Integer.parseInt(request.getParameter("id")));
            out.print("Usuário excluido com sucesso!");
            out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        %>
    </body>
</html>
