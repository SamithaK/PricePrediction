/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBLayer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author SAMITHA
 */
public class VehicleClass {
    
    private  int VYear;
    private String Model="";
    private String Engine="";
    private String TR="";
    private String Btel="";
    private String User;
    private String img;
    private String ML;
    private String price;

    /**
     * @return the VYear
     */
    public int getVYear() {
        return VYear;
    }

    /**
     * @param VYear the VYear to set
     */
    public void setVYear(int VYear) {
        this.VYear = VYear;
    }

    /**
     * @return the Model
     */
    public String getModel() {
        return Model;
    }

    /**
     * @param Model the Model to set
     */
    public void setModel(String Model) {
        this.Model = Model;
    }

    /**
     * @return the Engine
     */
    public String getEngine() {
        return Engine;
    }

    /**
     * @param Engine the Engine to set
     */
    public void setEngine(String Engine) {
        this.Engine = Engine;
    }

    /**
     * @return the TR
     */
    public String getTR() {
        return TR;
    }

    /**
     * @param TR the TR to set
     */
    public void setTR(String TR) {
        this.TR = TR;
    }

    /**
     * @return the Btel
     */
    public String getBtel() {
        return Btel;
    }

    /**
     * @param Btel the Btel to set
     */
    public void setBtel(String Btel) {
        this.Btel = Btel;
    }

    /**
     * @return the User
     */
    public String getUser() {
        return User;
    }

    /**
     * @param User the User to set
     */
    public void setUser(String User) {
        this.User = User;
    }

    /**
     * @return the img
     */
    public String getImg() {
        return img;
    }

    /**
     * @param img the img to set
     */
    public void setImg(String img) {
        this.img = img;
    }
    
public void setvehicle(VehicleClass obj) throws Exception{
        
         
        String SQL="insert into Vehicle set Year='" + VYear + "',Model='" + Model + "',Transmission='" + TR + "',Engine='" + Engine + "',Mileage='" + ML + "',price='" + price + "',User='" + User + "',photo='" + img + "'";
        
        DB stvehicle=new DB();
        stvehicle.insertvalues(SQL);
        
    }

 public ResultSet getAllVehicle(int year){
        
       String SQL;
       SQL ="select * from vehicle where year='"+VYear+"'";
        
        DB view=new DB();
        return view.getvalues(SQL);
    }
 

    
    
    
}
