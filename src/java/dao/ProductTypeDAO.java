package dao;

import utils.DBUtils;
import entity.ProductType;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dell
 */
public class ProductTypeDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public List<ProductType> getAllProductTypes(){
        List<ProductType> list = new ArrayList<ProductType>();
        try {
            String url = "select [id],[name],[image] from [ProductType]";
            
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(url);
            rs = ps.executeQuery();
            
            while(rs.next()){
                ProductType productType = new ProductType();
                productType.setId(rs.getString("id"));
                productType.setName(rs.getString("name"));
                productType.setImage(rs.getString("image"));
                list.add(productType);
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
    
    public static void main(String[] args) {
        try {
            ProductTypeDAO dao = new ProductTypeDAO();
            List<ProductType> list = dao.getAllProductTypes();
            for (ProductType productType: list){
                System.err.println(productType);
            }
        } catch (Exception e) {
        }
    }
}
