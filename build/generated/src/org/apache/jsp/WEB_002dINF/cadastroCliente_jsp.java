package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mysql.jdbc.Connection;
import br.com.allsolution.controller.Conexao;

public final class cadastroCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Cadastro de cliente</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"layoutGeral.css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

          Conexao conn = new Conexao();
          Connection conexao = conn.conectaMySQL("banco");
          
        
      out.write("\n");
      out.write("        <form id=\"cadCliente\" action=\"cadastroCliente.jsp\">\n");
      out.write("            <center><h3> Insira os dados do cliente </h3></center>\n");
      out.write("            <div id=\"campos\">\n");
      out.write("                Nome :<input type=\"text\" name=\"txtNome\" value=\"\" id=\"txtNome\"/><br><br>\n");
      out.write("                E-mail: <input type=\"text\" name=\"txtEmail\" value=\"\" id=\"txtEmail\"/><br><br>\n");
      out.write("                Endereço: <input type=\"text\" name=\"txtEndereco\" value=\"\" id=\"txtEndereco\"/><br><br>\n");
      out.write("                Telefone: <input type=\"text\" name=\"txtTelefone\" value=\"\" id=\"txtTelefone\"/><br><br>                \n");
      out.write("          \n");
      out.write("                ");
      out.write("\n");
      out.write("                ");

                  if(conexao != null){
                    out.println("Conectado com sucesso!!");
                  }else {
                    out.println("Erro de conexão!!");
                  }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <input type=\"submit\" value=\"Salvar\" name=\"btnSalvar\" id=\"btnSalvar\"/>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
