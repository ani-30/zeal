/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author NIC
 */
import java.sql.*;
public class Validate {
     
    public static boolean checkUser(String email,String password) 
    { boolean st=true;
        try{
       
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
        PreparedStatement ps=con.prepareStatement("Select * from REGRECORD where Email=? and Password=?");
        ps.setString(1,email);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
       
        
        }
    catch(Exception e)
    {
        System.out.println("error");
    }
         return st;
         
    }
 
    public static boolean checkUser(String email) 
    { boolean st=false;
        try{
       
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
         
        Connection con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
        PreparedStatement ps=con.prepareStatement("Select * from REGRECORD where Email=?");
        ps.setString(1,email);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
       
        
        }
    catch(Exception e)
    {
        System.out.println("error");
    }
         return st;
         
    }      
     
    public static boolean checkUser(String name,String rollno,String branch) 
    { boolean st=false;
        try{
       
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
        PreparedStatement ps=con.prepareStatement("Select * from REGRECORD where Name=? and RollNo=? and Branch=?");
        ps.setString(1,name);
        ps.setString(2,rollno);
        ps.setString(3,branch);
        
        ResultSet rs=ps.executeQuery();
        st=rs.next();
       
        
        }
    catch(Exception e)
    {
        System.out.println("error");
    }
         return st;
         
    }  
}
