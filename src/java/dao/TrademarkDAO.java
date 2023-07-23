/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Trademark;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author Dell
 */
public class TrademarkDAO {
    
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public List<Trademark> getAllTrademarks(){
        List<Trademark> list = new ArrayList<Trademark>();
        try {
            String url = "select [id],[name],[image] from [Trademark]";
            
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(url);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Trademark trademark = new Trademark();
                trademark.setId(rs.getString("id"));
                trademark.setName(rs.getString("name"));
                trademark.setImage(rs.getString("image"));
                list.add(trademark);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) conn = null;
            if (ps != null) ps = null;
            if (rs != null) rs = null;
        }
        return list;
    }
}
