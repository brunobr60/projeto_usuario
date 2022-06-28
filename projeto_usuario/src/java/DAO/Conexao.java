package DAO;
//importar 2 bibliotecas
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    //criar metodo de conexão
    public Connection getConexao(){
        try{
            //Busca do Drive
            Class.forName("com.mysql.jdbc.Driver");
            //Caminho do banco de dados
            return DriverManager.getConnection("jdbc:mysql://localhost/unicesumar2022","root","");
        }catch(Exception erro){
            throw new RuntimeException("Erro conexão: "+erro.getMessage());
        }
    }
}
