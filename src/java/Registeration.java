/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NIC
 */
@WebServlet(urlPatterns = {"/Registeration"})
public class Registeration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        try(PrintWriter out = response.getWriter()){
            
           response.setContentType("text/html;charset=UTF-8");
                   String name;
         name=request.getParameter("name");
           String rollno=request.getParameter("rollno");   
              String email =request.getParameter("email");
                 String password=request.getParameter("password");
                    String sex=request.getParameter("sex");
                       String events[]=request.getParameterValues("sports");
                       int n=events.length;
                          String branch=request.getParameter("branch");
        if( name.isEmpty()  || rollno.isEmpty()  || email.isEmpty()  || password.isEmpty()  || sex.isEmpty() || n<1 )
        {
            out.println("<script>alert('plz enter all the required details')</script>");
            
                     
                           RequestDispatcher rs=request.getRequestDispatcher("signup.html");
                        rs.include(request,response);
        }
                             
      else
        {
            try{
                int e=0;
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
                if(Validate.checkUser(email) )
                {
                    out.println("<script>alert('you are already registered with the given email id')</script>");
                }
                else if(Validate.checkUser(name,rollno,branch))
                {
                    out.println("<script>alert('you are already registered with the given details')</script>");
                    
                }
                else{
                    //creating connection with the database
                    for(int i=0;i<n;i++)
                    {
                        PreparedStatement ps;
                        ps = con.prepareStatement("Insert into REGRECORD values(?,?,?,?,?,?,?)");
                        
                        ps.setString(1,name);
                        ps.setString(2,rollno);
                        ps.setString(3,email);
                        ps.setString(4,password);
                        ps.setString(5,sex);
                        ps.setString(6,branch);
                        
                        ps.setString(7,events[i]);
                        e=e+ps.executeUpdate();
                    }
                    if( e==n && e>0)
                    {
                        
                        RequestDispatcher rs=request.getRequestDispatcher("signup.html");
                        rs.include(request,response);
                        out.println("<script>alert('You are succesfully Registered')</script>");
                        
                        
                    }
                    
                    else
                    {
                        RequestDispatcher rs=request.getRequestDispatcher("signup.html");
                        rs.include(request,response);
                        
                        out.println("<script>alert('You are not successfully registered')</script>");
                        
                    }}
                
            }
            catch(Exception se)
            {
                out.println("error");
                se.printStackTrace();
            }
            
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Registeration.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Registeration.class.getName()).log(Level.SEVERE, null, ex);
        }
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
