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
public class CampaignClass {
    private int CampaignId;
    private String CampaignName;
    private String CampaignDuration;
    private String CampaignPic;
    private String CampaignHost;
    private String CampaignLocation;

    public CampaignClass() {
    }

    public CampaignClass(int CampaignId, String CampaignName, String CampaignDuration, String CampaignPic, String CampaignHost, String CampaignLocation) {
        this.CampaignId = CampaignId;
        this.CampaignName = CampaignName;
        this.CampaignDuration = CampaignDuration;
        this.CampaignPic = CampaignPic;
        this.CampaignHost = CampaignHost;
        this.CampaignLocation = CampaignLocation;
    }

    public int getCampaignId() {
        return CampaignId;
    }

    public void setCampaignId(int CampaignId) {
        this.CampaignId = CampaignId;
    }

    public String getCampaignName() {
        return CampaignName;
    }

    public void setCampaignName(String CampaignName) {
        this.CampaignName = CampaignName;
    }

    public String getCampaignDuration() {
        return CampaignDuration;
    }

    public void setCampaignDuration(String CampaignDuration) {
        this.CampaignDuration = CampaignDuration;
    }

    public String getCampaignPic() {
        return CampaignPic;
    }

    public void setCampaignPic(String CampaignPic) {
        this.CampaignPic = CampaignPic;
    }

    public String getCampaignHost() {
        return CampaignHost;
    }

    public void setCampaignHost(String CampaignHost) {
        this.CampaignHost = CampaignHost;
    }

    public String getCampaignLocation() {
        return CampaignLocation;
    }

    public void setCampaignLocation(String CampaignLocation) {
        this.CampaignLocation = CampaignLocation;
    }
    
    
    
     public static List<CampaignClass> FindByCampName (String param) throws ClassNotFoundException{
            List<CampaignClass> campList = new ArrayList();
            Connection con = null;
        try {
            con = ConnectionBuilder.getMySqlCond();
            PreparedStatement pstm = con.prepareStatement("SELECT * FROM Ruampluk.Campaign WHERE LOWER(CAMPAIGNNAME) LIKE ? OR UPPER(CAMPAIGNNAME) LIKE ?");
            pstm.setString(1, param+"%");
            pstm.setString(2, param+"%");
            ResultSet rs = pstm.executeQuery();
                        
            while(rs.next()){
                CampaignClass c = new CampaignClass();
                c.setCampaignId(rs.getInt("CAMPAIGNID"));
                c.setCampaignName(rs.getString("CAMPAIGNNAME"));
                c.setCampaignDuration(rs.getString("CAMPAIGNDURATION"));
                c.setCampaignPic(rs.getString("CAMPAIGNPIC"));
                c.setCampaignHost(rs.getString("CAMPAIGNHOST"));
                c.setCampaignLocation(rs.getString("CAMPAIGNLOCATION"));
                campList.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        return campList;
    }
    
}
