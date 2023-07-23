/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductTypeDAO;
import dao.TrademarkDAO;
import entity.ProductType;
import entity.Trademark;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class ViewMainController extends HttpServlet {
    
    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "main.jsp";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        String url = ERROR;
        request.setAttribute("ERROR", "ViewMainController");
        try {
            ProductTypeDAO productTypeDAO = new ProductTypeDAO();
            List<ProductType> listProductTypes = productTypeDAO.getAllProductTypes();
            TrademarkDAO trademarkDAO = new TrademarkDAO();
            List<Trademark> listTrademarks = trademarkDAO.getAllTrademarks();
            request.setAttribute("listProductTypes", listProductTypes);
            request.setAttribute("listTrademarks", listTrademarks);
            url = SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
