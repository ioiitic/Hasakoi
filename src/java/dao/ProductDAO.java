/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Product;
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
public class ProductDAO {
    
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public List<Product> getListTrademarks(int from, int to, String typeID, String trademarkID, String search, float priceFrom, float priceTo){
        List<Product> list = new ArrayList<Product>();
        try {
            String sql = "select p.[id],p.[name],[price],[image],[typeID],[trademarkID] from [Product] p"
                    + " inner join (select [id],[name] from [Trademark]) tm"
                    + " on tm.[id] = p.[trademarkID]"
                    + " inner join (select [id],[name] from [ProductType]) pt"
                    + " on pt.[id] = p.[typeID]"
                    + " where (p.[name] like ? or tm.[name] like ? or pt.[name] like ?)"
                    + " and ([price] >= ? and [price] <= ?)"
                    + " order by p.[id]"
                    + " offset ? rows"
                    + " fetch next ? rows only";
            
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ps.setString(2, "%" + search + "%");
            ps.setString(3, "%" + search + "%");
            ps.setFloat(4, priceFrom);
            ps.setFloat(5, priceTo);
            ps.setInt(6, from);
            ps.setInt(7, to);
            rs = ps.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setId(rs.getString("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getFloat("price"));
                product.setImage(rs.getString("image"));
                product.setTypeID(rs.getString("typeID"));
                product.setTrademarkID(rs.getString("trademarkID"));
                list.add(product);
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
    
    public int getNumberOfProduct(String typeID, String trademarkID, String search, float priceFrom, float priceTo){
        int cnt = 0;
        try {
            String sql = "select count(p.[id]) [count] from [Product] p"
                    + " inner join (select [id],[name] from [Trademark]) tm"
                    + " on tm.[id] = p.[trademarkID]"
                    + " inner join (select [id],[name] from [ProductType]) pt"
                    + " on pt.[id] = p.[typeID]"
                    + " where (p.[name] like ? or tm.[name] like ? or pt.[name] like ?)"
                    + " and ([price] >= ? and [price] <= ?)";
            
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ps.setString(2, "%" + search + "%");
            ps.setString(3, "%" + search + "%");
            ps.setFloat(4, priceFrom);
            ps.setFloat(5, priceTo);
            rs = ps.executeQuery();
            while(rs.next()){
                cnt = rs.getInt("count");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) conn = null;
            if (ps != null) ps = null;
            if (rs != null) rs = null;
        }
        return cnt;
    }
    
    public static void main(String[] args) {
        try {
            ProductDAO dao = new ProductDAO();
            List<Product> list = dao.getListTrademarks(0, 12, "", "", "", 0, 1000000);
            System.out.println(dao.getNumberOfProduct("", "", "",0,1000000));
            for (Product product: list){
                System.out.println(product);
            }
        } catch (Exception e) {
        }
    }
}
