/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class UserClass {
    private int userId;
    private String userName;
    private String userPass;

    public UserClass() {
    }

    public UserClass(int userId, String userName, String userPass) {
        this.userId = userId;
        this.userName = userName;
        this.userPass = userPass;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
    
    

   
    
    public static List<UserClass> FindByName (String param) throws ClassNotFoundException{
            List<UserClass> userList = new ArrayList();
           
        try {
             Connection con = ConnectionBuilder.getMySqlCond();
            PreparedStatement pstm = con.prepareStatement("SELECT * FROM Ruampluk.User_Ruampluk WHERE LOWER(USERNAME) LIKE ? OR UPPER(USERNAME) LIKE ?");
            pstm.setString(1, param+"%");
            pstm.setString(2, param+"%");
            ResultSet rs = pstm.executeQuery();
  

            
            while(rs.next()){
                UserClass c = new UserClass();
                c.setUserId(rs.getInt("USERID"));
                c.setUserName(rs.getString("USERNAME"));
                c.setUserPass(rs.getString("USERPASS"));
                userList.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userList;
    }
}
