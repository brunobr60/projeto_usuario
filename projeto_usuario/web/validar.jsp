<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.DAOUsuario"%>
<!DOCTYPE html>
<%
    try{
        Usuario usu = new Usuario();
        DAOUsuario usd = new DAOUsuario();
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        if(email.equals(null) || senha.equals(null)){
            response.sendRedirect("login.jsp");
        }else{
            usu.setEmail(email);
            usu.setSenha(senha);
            ResultSet resultUsu = usd.validarUsuario(usu);
            if(resultUsu.next()){
                out.print("Login efetudo com sucesso!");
                out.print("<meta http-equiv='refresh' content='2, url=index.jsp'>");
            }else{
                out.print("Usuário ou senha incorreto!");
                out.print("<meta http-equiv='refresh' content='2, url=login.jsp'>");
            }
        }
        
        
    }catch(Exception erro){
        throw new RuntimeException("Erro validar login: "+erro.getMessage());
    }
%>
