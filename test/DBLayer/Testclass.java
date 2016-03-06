/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBLayer;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author SAMITHA
 */
public class Testclass {
    
    public Testclass() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of Login method, of class User.
     */
//    @Test
//    public void testLogin() {
//        System.out.println("Login");
//        String UserName = "";
//        String password = "";
//        User instance = new User();
//        ResultSet expResult = null;
//        ResultSet result = instance.Login(UserName, password);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
    
          User login=new User();
    @Test
    public void testLogin() throws SQLException{
        System.out.println("Testing Login..");
        String username="Samitha";
        String password="sam123";
        String expResult="1";
        String result="";
        ResultSet rs=login.Login(username, password);
        while(rs.next()){
            result=rs.getString("idUser");
        }
        assertEquals(expResult, result);
       // fail("The test case is a prototype.");
    }
    VehicleClass obj = new VehicleClass();
    @Test
    public void getAllVehicle() throws SQLException, Exception{
        System.out.println("Get vehicle data Testing..");
        String Model="Prius";
        String Transmission="auto";
        int year=2015;
        ResultSet rss= obj.getAllVehicle(year);
        if(rss.next()){
            Model=rss.getString("Model");
            Transmission=rss.getString("Transmission");   
        }
        assertEquals("Prius", Model);
        assertEquals("auto", Transmission);
      //  fail("The test case is a prototype.");
    }
    
}
