<%-- 
    Document   : cadastroCliente
    Created on : 04/05/2019, 09:00:59
    Author     : Walter
--%>

<%@page import="java.sql.Connection"%>
<%@page import="br.com.allsolution.controller.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de cliente</title>
        <link rel="stylesheet" href="layoutGeral.css"/>
    </head>
    <body>
        <form id="cadCliente" action="./SalvarCliente">
        <%-- Fazendo a conexão com o banco de dados  --%>
        <%
          Conexao conn = new Conexao();
          Connection conex = conn.conectaMySQL("db_tetra");
        %>
        
            <div id="Titulo">
                <center>
                    <h2>Cadastro de Clientes</h2>
                </center>
            </div>
            <br>
            <br>
            <hr>
            <center><h3> Insira os dados do cliente </h3></center>
            <%-- Campos para inserção de dados pelo usuário  --%>
            <div id="campos">
                Nome    : <input type="text" name="txtNome"     value="" id="txtNome"/><br><br>
                E-mail  : <input type="text" name="txtEmail"    value="" id="txtEmail"/><br><br>
                Endereço: <input type="text" name="txtEndereco" value="" id="txtEndereco"/><br><br>
                Telefone: <input type="text" name="txtTelefone" value="" id="txtTelefone"/><br><br>                
          
                <%-- Fazendo a verifição para saber se o banco está conectado  --%>
                <%
                  if(conex != null){
                    out.println("Conectado com sucesso!!");
                  }else {
                    out.println("Erro de conexão!!");
                  }
                %>
            </div>
             <%-- Botão para salvar os dados que vem cliente no banco de dados  --%>
            <div id="Botoes">
                <input type="submit" value="Salvar" name="btnSalvar" id="btnSalvar"/>        
            </div>
        </form>
    </body>
</html>
