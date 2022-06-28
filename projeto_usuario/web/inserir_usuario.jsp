<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.DAOUsuario"%>

<%
    Usuario usu = new Usuario();
    DAOUsuario usd = new DAOUsuario();
    
    try{
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        usu.setNome(nome);
        usu.setEmail(email);
        usu.setSenha(senha);
        usd.inserirUsuario(usu);
        out.print("Usuário inserido com sucesso!");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
    }catch(Exception erro){
        throw new RuntimeException("Erro executar inserir: "+erro.getMessage());
    }
%>
