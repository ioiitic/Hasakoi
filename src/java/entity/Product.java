/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Dell
 */
public class Product {
    private String id;
    private String name;
    private float price;
    private String image;
    private String typeID;
    private String trademarkID;

    public Product() {
    }

    public Product(String id, String name, float price, String image, String typeID, String trademarkID) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.image = image;
        this.typeID = typeID;
        this.trademarkID = trademarkID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTypeID() {
        return typeID;
    }

    public void setTypeID(String typeID) {
        this.typeID = typeID;
    }

    public String getTrademarkID() {
        return trademarkID;
    }

    public void setTrademarkID(String trademarkID) {
        this.trademarkID = trademarkID;
    }
    
    
}
