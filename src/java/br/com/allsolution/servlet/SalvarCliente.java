package br.com.allsolution.servlet;

import br.com.allsolution.controller.Conexao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Descrição: Faz a conexão entre os dados do cliente que vem da tela e o banco de dados.
 * data: 04/05/2019  19:55
 * @author Walter
 */
@WebServlet(name = "SalvarCliente", urlPatterns = {"/SalvarCliente"})
public class SalvarCliente extends HttpServlet {

    Conexao con = new Conexao();
    Connection resp;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Variáveis para receber os dados da tela e salvar no banco.        
        String nome, email, endereco, telefone, resultado;
        
        nome      = request.getParameter("txtNome");
        email     = request.getParameter("txtEmail");
        endereco  = request.getParameter("txtEndereco");
        telefone  = request.getParameter("txtTelefone");
        resultado = "Nenhum cliente encontrado!";
        
        try {
            resp = con.conectaMySQL("db_tetra");
            if(resp != null){
               con.ExcutaSql("SELECT * FROM tbl_cliente WHERE cli_telefone = '" + telefone + "'");
               if(!con.rs.first()){
                 PreparedStatement pst = resp.prepareStatement("INSERT INTO tbl_cliente (cli_nome, cli_email,"
                         + " cli_endereco, cli_telefone) VALUES (?,?,?,?)");
                  pst.setString(1, nome);
                  pst.setString(2, email);
                  pst.setString(3, endereco);
                  pst.setString(4, telefone);
                  pst.execute();
                  response.sendRedirect("sucessoCadastroCliente.jsp");
              }else{
                resultado = con.rs.getString("cli_telefone");
              }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SalvarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
                     
        try (PrintWriter out = response.getWriter()) {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SalvarCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SalvarCliente at " + resultado + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
