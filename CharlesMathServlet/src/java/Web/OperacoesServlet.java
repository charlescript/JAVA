package Web;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rocha
 */
@WebServlet(urlPatterns = {"/operacoes.html"})
public class OperacoesServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OperacoesServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OperacoesServlet at " + request.getContextPath() + "</h1>");
            out.println("<h4><a href='index.html'>Voltar</a></h4>");
            
            double n1 = 2;
            double n2 = 2;
            int op = 0;
                try{
                    n1 = Double.parseDouble(request.getParameter("n1"));
                    op = Integer.parseInt(request.getParameter("op"));
                    n2 = Double.parseDouble(request.getParameter("n2"));
                    
                    switch(op){
                        case 1:
                                out.println("A soma  de "+n1+" + "+n2+ " = " + (n1+n2));
                               break;
                        
                        case 2:
                                out.println("A subtração de "+n1+" - "+n2+ " = " + (n1-n2));
                        break;
                        
                        case 3:
                               out.println("A multiplicação de "+n1+" X "+n2+ " = " + (n1*n2));
                        break;
                        
                        case 4:
                                out.println("A divisão de "+n1+" / "+n2+ " = " + (n1/n2));
                        break;
                        
                       
                    };
                    
                }catch(Exception ex){
                    out.println("<div style='color:red'>"+"Parâmetro inválido</div>");
                }
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
