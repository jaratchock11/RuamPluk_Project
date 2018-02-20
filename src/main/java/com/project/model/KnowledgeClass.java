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
public class KnowledgeClass {
    private int knowId;
    private String knowName;
    private String knowDesc;
    private String knowPic;

    public KnowledgeClass() {
    }

    public KnowledgeClass(String knowName) {
        this.knowName = knowName;
    }

    public KnowledgeClass(int knowId, String knowName, String knowDesc, String knowPic) {
        this.knowId = knowId;
        this.knowName = knowName;
        this.knowDesc = knowDesc;
        this.knowPic = knowPic;
    }

    public int getKnowId() {
        return knowId;
    }

    public void setKnowId(int knowId) {
        this.knowId = knowId;
    }

    public String getKnowName() {
        return knowName;
    }

    public void setKnowName(String knowName) {
        this.knowName = knowName;
    }

    public String getKnowDesc() {
        return knowDesc;
    }

    public void setKnowDesc(String knowDesc) {
        this.knowDesc = knowDesc;
    }

    public String getKnowPic() {
        return knowPic;
    }

    public void setKnowPic(String knowPic) {
        this.knowPic = knowPic;
    }

   
    
    public static List<KnowledgeClass> FindByName (String param) throws ClassNotFoundException{
            List<KnowledgeClass> knowList = new ArrayList();
            Connection con = null;
        try {
            con = ConnectionBuilder.getMySqlCond();
            PreparedStatement pstm = con.prepareStatement("SELECT * FROM Ruampluk.Knowledge WHERE LOWER(KNOWLEDGENAME) LIKE ? OR UPPER(KNOWLEDGENAME) LIKE ?");
                                                                       // ^ "Ruampluk." << ต้องใส่ Schema ด้วย
            pstm.setString(1, param+"%");
            pstm.setString(2, param+"%");
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                KnowledgeClass c = new KnowledgeClass();
           
                c.setKnowId(rs.getInt("KNOWLEDGEID"));
                c.setKnowName(rs.getString("KNOWLEDGENAME"));
                c.setKnowDesc(rs.getString("KNOWLEDGEDESC"));
                c.setKnowPic(rs.getString("KNOWLEDGEPIC"));
                
                knowList.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(KnowledgeClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        return knowList;
    }
}
