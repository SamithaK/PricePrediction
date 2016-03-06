/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBLayer;

import java.sql.ResultSet;

/**
 *
 * @author SAMITHA
 */
public class User {
    
    
      public int idUser=0;
    public String UserName="";
    public String Name="";
    public String UserType="";
    public String password="";
    public String Bname="";
    
    
    
    public ResultSet Login(String UserName, String password) // SQL statement for retrieve  data 
    {    
        String SQL;
        SQL="Select * From User where UserName='"+UserName+"' and password='"+password+"'";
        
        DB myObj=new DB();
        return myObj.getvalues(SQL);
    }  
    
    
    
}
