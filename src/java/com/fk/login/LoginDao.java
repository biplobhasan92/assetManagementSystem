package com.fk.login;
import com.fk.database.DBconnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
    
    
    
	public static boolean validate(String aname,String password){           // to see use of validate go AdmitAction Class > login() method in package com.fk.action
		boolean status=false;
		try{
                    Connection con=DBconnection.getConnection();
                    PreparedStatement ps= con.prepareStatement("select * from "
                            + "admin where aname=? and pass=?");
                    ps.setString(1,aname);
                    ps.setString(2,password);
                    ResultSet rs=ps.executeQuery();
                    status=rs.next();
                    ps.close();
                    con.close();
		}catch(Exception e){
                    e.printStackTrace();
                }
		return status;
	}
        
        
        
        public static String getRight(String aname,String password) {            // to see use of getRight go AdmitAction Class > login() method in package com.fk.action
        
        String right=null;
            
        try {
               Connection con = DBconnection.getConnection();
              if(con == null)
               {
                   return right;
               }
               String sql = "Select rights from admin where aname='"+aname+"' and pass='"+password+"'";
               Statement st = con.createStatement();
               ResultSet rs = st.executeQuery(sql);
               while (rs.next())
               right = rs.getString(1);                                          //for single value retrievation-------------

               st.close();
               con.close();
           } catch (SQLException ex) {
               ex.printStackTrace();
           }
      return right;
    }
        
        
        
    /*
     public static void main(String[] args) {
         System.out.println("Conncetion : "+DBconnection.getConnection());
         System.out.println("Validate   : "+LoginDao.validate("admin", "123"));
    }
   */

}

    

  

