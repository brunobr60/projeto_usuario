package DAO;

import MODEL.Usuario;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOUsuario {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Usuario> lista = new ArrayList<>();
    
    public DAOUsuario(){
        conn = new Conexao().getConexao();
    }
    
    //metodo inserir usuário
    public void inserirUsuario(Usuario usuario){
        try{
            //Passar instrução SQL
            String sql = "INSERT INTO tb_usuario (nome, email, senha) VALUES (?,?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro DAO Inserir Usuário: "+erro.getMessage());
        }
    }
    
    //método de busca listar todos usuários
    public ArrayList<Usuario> listarTodosUsuarios(){
        String sql = "SELECT * FROM tb_usuario";
        try{
           st = conn.createStatement();
           rs = st.executeQuery(sql);
           while(rs.next()){
               Usuario usuario = new Usuario();
               usuario.setId(rs.getInt("id"));
               usuario.setNome(rs.getString("nome"));
               usuario.setEmail(rs.getString("email"));
               usuario.setSenha(rs.getString("senha"));
               lista.add(usuario);
           }
        }catch(Exception erro){
            throw new RuntimeException("Erro método listar Todos Usuários: "+erro.getMessage());
        }
        return lista;
    }
    
    //método de busca listar por nome
    public ArrayList<Usuario> listarPorNomeUsuarios(String valor){
        String sql = "SELECT * FROM tb_usuario WHERE nome like '%"+valor+"%'";
        try{
           st = conn.createStatement();
           rs = st.executeQuery(sql);
           while(rs.next()){
               Usuario usuario = new Usuario();
               usuario.setId(rs.getInt("id"));
               usuario.setNome(rs.getString("nome"));
               usuario.setEmail(rs.getString("email"));
               usuario.setSenha(rs.getString("senha"));
               lista.add(usuario);
           }
        }catch(Exception erro){
            throw new RuntimeException("Erro método listar Por Nome Usuarios: "+erro.getMessage());
        }
        return lista;
    }
    
    public void atualizarUsuario(Usuario usuario){
        try{
            String sql = "UPDATE tb_usuario SET nome=?, email=?, senha=? "
                    + "WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            stmt.setInt(4, usuario.getId());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro método Atualizar Usuários: "+erro.getMessage());
        }
    }
    
    public void excluirUsuario(int valor){
        try{
            String sql = "DELETE FROM tb_usuario WHERE id = "+valor;
            st = conn.createStatement();
            st.execute(sql);
            st.close();

        }catch(Exception erro){
            throw new RuntimeException("Erro método Excluir Usuários: "+erro.getMessage());
        }
    }
    
    public ResultSet validarUsuario(Usuario usuario){
        try{
            String sql = "SELECT * FROM tb_usuario WHERE email=? and senha=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getEmail());
            stmt.setString(2, usuario.getSenha());
            rs = stmt.executeQuery();
            return rs;            
        }catch(Exception erro){
            throw new RuntimeException("Erro método validarUsuario: "+erro.getMessage());
        }
    }
}
