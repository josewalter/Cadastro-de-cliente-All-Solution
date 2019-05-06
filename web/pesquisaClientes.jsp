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
        <form id="pesClientes" action="">
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
            <%-- Campos para inserção de dados pelo usuário  --%>
            </div>
            <center>
                <div id="campos">
                    Filtro por nome :<input type="text" name="txtNome" value="" id="txtNome"/><br><br>
                    Filtro por e-mail: <input type="text" name="txtEmail" value="" id="txtEmail"/><br><br>

                    <%-- Fazendo a verifição para saber se o banco está conectado  --%>
                    <%
                      if(conexao != null){
                        out.println("Conectado com sucesso!!");
                      }else {
                        out.println("Erro de conexão!!");
                      }
                    %>
                </div>
                 <%-- Botão para pesquisar os dados do cliente no banco de dados  --%>
                <div id="Botoes">
                    <input type="submit" value="Pesquisar" name="btnPesquisar" id="btnPesquisar"/>        
                </div>
                <div id="table">
                    <table border = "2">
                        <tr>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Telefone</th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </table>
                </div>
            </center>
        </form>    
    </body>
</html>
