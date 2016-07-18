/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package necessary;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author NIC
 */
public class sqlcon {
    Connection con;
   public void  sqlcon() throws SQLException 
   {
       try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           
           con = DriverManager.getConnection("jdbc:sqlserver://NIC-PC;databaseName=zeal;user=sa;password=sa123");
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(sqlcon.class.getName()).log(Level.SEVERE, null, ex);
       }
   }
  public Connection  getConnection()
  {
      return(con);
  }
    
}
