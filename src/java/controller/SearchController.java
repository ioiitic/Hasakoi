/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import dao.ProductTypeDAO;
import dao.TrademarkDAO;
import entity.Product;
import entity.ProductType;
import entity.Trademark;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class SearchController extends HttpServlet {
    
    private static final String ERROR = "error.jsp";
    private static final String PRG = "search";
    private static final String SUCCESS = "search.jsp";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = ERROR;
        request.setAttribute("ERROR", "SearchController");
        try {
            
            String search = request.getParameter("search");
            String pRaw = request.getParameter("p");
            String typeID = request.getParameter("typeID");
            String trademarkID = request.getParameter("trademarkID");
            String priceFromRaw = request.getParameter("pricefrom");
            String priceToRaw = request.getParameter("priceto");
            
            int p = 1;
            float priceFrom = 0, priceTo = 100000000;
            
            if (priceFromRaw != null) priceFrom = Float.parseFloat(priceFromRaw);
            if (priceToRaw != null) priceTo = Float.parseFloat(priceToRaw);
            if (pRaw != null) p = Integer.parseInt(pRaw);
            if (typeID == null) typeID = search;
            if (trademarkID == null) trademarkID = search;
            
            int from = 12*(p-1), to = 12;
            
            ProductTypeDAO productTypeDAO = new ProductTypeDAO();
            List<ProductType> listProductTypes = productTypeDAO.getAllProductTypes();
            TrademarkDAO trademarkDAO = new TrademarkDAO();
            List<Trademark> listTrademarks = trademarkDAO.getAllTrademarks();
            ProductDAO productDAO = new ProductDAO();
            List<Product> listProducts = productDAO.getListTrademarks(from, to, typeID, trademarkID, search, priceFrom, priceTo);
            int cnt = productDAO.getNumberOfProduct(typeID, trademarkID, search, priceFrom, priceTo);
            
            request.setAttribute("listProductTypes", listProductTypes);
            request.setAttribute("listTrademarks", listTrademarks);
            request.setAttribute("listProducts", listProducts);
            request.setAttribute("nop", cnt/12+1);
            
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
        String url = ERROR;
        request.setAttribute("ERROR", "SearchController");
        try {
            String search = request.getParameter("search");
            url = PRG + "?search=" + search;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            response.sendRedirect(url);
        }
    }
}
