<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.DAOUsuario" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consultar Usuário</h1>
        <form action="index.jsp" method="post">
            <input type="text" name="pesquisar" placeholder="Entre com nome para pesquisar"/>
            <input type="submit" value="PESQUISAR"/>
        </form><br>
        <%
                out.print("<table border='1'>");
                out.print("<tr>");
                    out.print("<th>ID</th>");
                    out.print("<th>NOME</th>");
                    out.print("<th>EMAIL</th>");
                    out.print("<th>SENHA</th>");
                    out.print("<th>EDITAR</th>");
                    out.print("<th>EXCLUIR</th>");
                out.print("</tr>");
                DAOUsuario daousu = new DAOUsuario();
                if(request.getParameter("pesquisar") == "" || request.getParameter("pesquisar") == null){
                    ArrayList<Usuario> lista = daousu.listarTodosUsuarios();
                    for(int i = 0;i<lista.size();i++){
                        out.print("<tr>");
                            out.print("<td>"+lista.get(i).getId()+"</td>");
                            out.print("<td>"+lista.get(i).getNome()+"</td>");
                            out.print("<td>"+lista.get(i).getEmail()+"</td>");
                             out.print("<td>"+lista.get(i).getSenha()+"</td>");
                            out.print("<td><a href='alterar_usuario.jsp?id="
                                    +lista.get(i).getId()
                                    +"&nome="+lista.get(i).getNome()
                                    +"&email="+lista.get(i).getEmail()
                                    +"&senha="+lista.get(i).getSenha()
                                    +"'>CLIQUE</a></td>");
                            out.print("<td><a href='excluir_usuario.jsp?id="
                                    +lista.get(i).getId()
                                    +"&nome="+lista.get(i).getNome()
                                    +"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }else{
                    ArrayList<Usuario> lista = daousu.listarPorNomeUsuarios(request.getParameter("pesquisar"));
                    for(int i = 0;i<lista.size();i++){
                        out.print("<tr>");
                            out.print("<td>"+lista.get(i).getId()+"</td>");
                            out.print("<td>"+lista.get(i).getNome()+"</td>");
                            out.print("<td>"+lista.get(i).getEmail()+"</td>");
                             out.print("<td>"+lista.get(i).getSenha()+"</td>");
                            out.print("<td><a href='alterar_usuario.jsp?id="
                                    +lista.get(i).getId()
                                    +"&nome="+lista.get(i).getNome()
                                    +"&email="+lista.get(i).getEmail()
                                    +"&senha="+lista.get(i).getSenha()
                                    +"'>CLIQUE</a></td>");
                            out.print("<td><a href='excluir_usuario.jsp?id="
                                    +lista.get(i).getId()
                                    +"&nome="+lista.get(i).getNome()
                                    +"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }
                out.print("</table>");
            %>
        <a href="usuario.jsp">Novo Cadastro</a>
    </body>
</html>
