<%-- 
    Document   : index pagina principal do projeto
    Created on : 05/05/2019, 09:55:58
    Author     : Walter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pagina Principal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="index.css"/>
    </head>
    <body>
        <form id="PaginaRincipal">
            <center>
                <h1>BEM VINDO A @LL SOLUTION</h1> 
                <br>
                <hr>
                <div id="indexCampos">
                  <h3> Página Principal - Escolha uma opção!</h3>   
                  <a href="cadastroCliente.jsp" target="_blank" id="cadCliente">Acessar Formulário de Cadastro de Clientes</a>
                  <a href="pesquisaClientes.jsp" target="_blank" id="pesClientes">Acessar Formulário de Pesquisa de Clientes</a>
                </div>
            </center>
        </form>       
    </body>
</html>
