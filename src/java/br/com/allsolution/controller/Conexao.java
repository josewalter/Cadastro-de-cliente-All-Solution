package br.com.allsolution.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 * Descrição: Classe de conexão com o banco de dados
 * Data: 04/05/2019
 * Hora: 09:24
 * @author Walter
 */
public class Conexao {
    
    public Statement st;
    public ResultSet rs;
    public Connection con = null; //faz a conexão com o banco de dados
    String caminho = "jdbc:mysql://localhost:3306/db_tetra"; // url de conexão com banco
    String usuario = "root"; // usário
    String senha   = "conhecimento"; // senha de acesso ao banco
    
    //Método responsável por fazer a  conexão com o banco de dados
    public Connection conectaMySQL(String banco) throws SQLException{
            
            try {
              Class.forName("com.mysql.jdbc.Driver");
            
                try {
                    con = DriverManager.getConnection(caminho, usuario, senha);
                } catch (Exception ex) {
                    System.out.println("Caminho ou senha não encontrado: Erro" + ex);
                }
            } catch (Exception e) {
                System.out.println("Driver não encontrado" + e);
            }
            return con;
    }
    public void ExcutaSql(String sql){
        try {
            st = con.createStatement(rs.TYPE_SCROLL_INSENSITIVE, rs.CONCUR_READ_ONLY);
            rs = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
            // Comando para realizar a inserção de dados.
            JOptionPane.showMessageDialog(null, "Erro: " + e);
        }
    }
}
