<%-- 
    Document   : pesquisaClientes
    Created on : 04/05/2019, 13:40:43
    Author     : Walter
--%>

<%@page import="java.sql.Connection"%>
<%@page import="br.com.allsolution.controller.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa de clientes</title>
        <link rel="stylesheet" href="layoutGeral_1.css"/>
    </head>
    <body>
        <form id="pesClientes" action="cadastroCliente.jsp" method="GET">
        <%-- Fazendo a conexão com o banco de dados  --%>
        <%
          Conexao conn = new Conexao();
          Connection conexao = conn.conectaMySQL("banco");
          
        %>
            <div id="Titulo">
                <center>
                    <h2>Pesquisar dados do Cliente</h2>
                </center>
            </div>
            <br>
            <br>
            <hr>
            <center><h3> Insira os dados do cliente </h3></center>
            <%-- Campos para inserção de dados pelo usuário para a busca  --%>
            </div>
            <center>
                <div id="campos">
                   Filtro por nome :<input type="text" name="txtNome" value="${param.txtNome}" id="txtNome"/><br><br>
                   Filtro por e-mail: <input type="text" name="txtEmail" value="${param.txtEmail}" id="txtEmail"/><br><br>
                </div>
                <div id="Botoes">
                   <input type="submit" value="Pesquisar" name="btnPesquisar" id="btnPesquisar"/>             
                </div>
                        
                    <%-- Fazendo a verifição para saber se o banco está conectado  --%>
                    <%
                      if(conexao != null){
                        out.println("Conectado com sucesso!!");
                      }else {
                        out.println("Erro de conexão!!");
                      }
                    %>
                
                 <%-- Botão para pesquisar os dados do cliente no banco de dados  --%>
                <div id="table">
                    <table border = "2">
                        <tr>
                            <td>Nome</td>
                            <td>E-mail</td>
                            <td>Telefone</td>
                        </tr>
                        <% 
                          Conexao con = new Conexao();
                          Connection resp;
                          resp = con.conectaMySQL("db_tetra");
                          con.ExcutaSql("SELECT * FROM tbl_cliente ORDER BY cli_nome || cli_email");
                          con.rs.first();
                        %>
                        <tr>
                            <% out.println("<td>" + con.rs.getString("cli_nome")     + "</td>"); %>
                            <% out.println("<td>" + con.rs.getString("cli_email")    + "</td>"); %>
                            <% out.println("<td>" + con.rs.getString("cli_telefone") + "</td>"); %>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="submit" value="Editar" name="btnEditar" id="btnEditar"/></td> 
                        </tr>
                    </table>
                </div>
            </center>
        </form>    
    </body>
</html>
