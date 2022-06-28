<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="MODEL.Usuario"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           try{
             DAOUsuario dusu = new DAOUsuario();
             Usuario usu = new Usuario();
             usu.setNome(request.getParameter("nome"));
             usu.setEmail(request.getParameter("email"));
             usu.setSenha(request.getParameter("senha"));
             usu.setId(Integer.parseInt(request.getParameter("id")));
             dusu.atualizarUsuario(usu);
             out.print("Usuário atualizado com sucesso!");
             out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
             
           }catch(Exception erro){
               throw new RuntimeException("Erro executar alterar: "+erro.getMessage());
           }
       
       %>
    </body>
</html>
