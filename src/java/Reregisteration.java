/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NIC
 */
public class Reregisteration extends HttpServlet {

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
       try(PrintWriter out = response.getWriter()){
            HttpSession session=request.getSession();
            
           response.setContentType("text/html;charset=UTF-8");
                   String name;
         name=(String)session.getAttribute("Name");
           String rollno=(String)session.getAttribute("RollNo");   
              String email =(String)session.getAttribute("Email");
                 String password=(String)session.getAttribute("Password");
                    String sex=(String)session.getAttribute("Sex");
                      String branch=(String)session.getAttribute("Branch");
                       String events[]=request.getParameterValues("sports");
                       int n=events.length;
                        
                         
                             
    
        

                          //creating connection with the database
                       
        try{
         
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        
          Connection con;
                con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
         
                 PreparedStatement qs;
            qs = con.prepareStatement("Delete from REGRECORD where Name=? and RollNo=? and Email=?");
              qs.setString(1,name);
        qs.setString(2,rollno);
        qs.setString(3,email);
       
        int m=qs.executeUpdate();
              
 
         //creating connection with the database
        int e=0;
         for(int i=0;i<n;i++)
         {
             PreparedStatement rs;
            rs = con.prepareStatement("Insert into REGRECORD values(?,?,?,?,?,?,?)");
          
        rs.setString(1,name);
        rs.setString(2,rollno);
        rs.setString(3,email);
        rs.setString(4,password);
        rs.setString(5,sex);
        rs.setString(6,branch);
        rs.setString(7,events[i]);
     
 e+=rs.executeUpdate();
       
             
         }
                if( e==n && e>0)
                {
                    
                    RequestDispatcher rs=request.getRequestDispatcher("signup.jsp");
                    rs.include(request,response);
                    
                    out.println("<script>alert('You are successfully registered')</script>");
                    
                    
                }
        
        else
                {
                    RequestDispatcher rs=request.getRequestDispatcher("signup.jsp");
                    rs.include(request,response);
                    
                    out.println("<script>alert('You are not successfully registered')</script>");
                    
                }
                  
        
        }
        catch(Exception e)
{
    out.println(e.getMessage());

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
